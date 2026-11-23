test "$(gh api repos/spockverse/WUBROT --jq .private)" = false
if gh release view v0.2.183 >/dev/null 2>&1; then
  echo 'Release already exists; refusing to overwrite it.'
  exit 1
fi
gh release create v0.2.183 release/WUBROT-setup.zip release/WUBROT-0.2.183-Windows-x64.zip release/SHA256SUMS.txt --draft --target main --title 'WUBROT 0.2.183' --notes-file RELEASE_NOTES.md
python3 - <<'PY'
import subprocess,json,hashlib,time
from pathlib import Path
for attempt in range(20):
    r=next(r for r in json.loads(subprocess.check_output(['gh','api','repos/spockverse/WUBROT/releases?per_page=100'])) if r['tag_name']=='v0.2.183')
    assert r['draft'] and not r['prerelease']
    if len(r['assets'])==3 and all(a.get('digest') for a in r['assets']):break
    time.sleep(2)
assert len(r['assets'])==3
for a in r['assets']:
    p=Path('release')/a['name']
    assert p.is_file() and p.stat().st_size==a['size']
    assert a['digest']=='sha256:'+hashlib.sha256(p.read_bytes()).hexdigest()
PY
gh release edit v0.2.183 --draft=false --latest
gh api repos/spockverse/WUBROT/releases/latest > "$RUNNER_TEMP/release-status.json"
python3 -c 'import json,os;d=json.load(open(os.environ["RUNNER_TEMP"]+"/release-status.json"));assert d["tag_name"]=="v0.2.183" and not d["draft"] and not d["prerelease"];print(d["html_url"])'
git fetch origin main
git worktree add --detach "$RUNNER_TEMP/public-status" FETCH_HEAD
cd "$RUNNER_TEMP/public-status"
git config user.name 'WUBROT release bot'
git config user.email '41898282+github-actions[bot]@users.noreply.github.com'
cp "$RUNNER_TEMP/release-status.json" release-status.json
git add release-status.json
git commit -m 'Record published WUBROT v0.2.183 release [skip ci]'
git push origin HEAD:refs/heads/main
git push origin --delete release-v0.2.183
