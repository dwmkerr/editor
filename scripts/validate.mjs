import { readFileSync, existsSync, statSync } from 'node:fs';

let failures = 0;
const fail = (msg) => { console.error(`✖ ${msg}`); failures++; };
const ok = (msg) => console.log(`✔ ${msg}`);

// SKILL.md must exist with name + description frontmatter.
if (!existsSync('SKILL.md')) {
  fail('SKILL.md is missing');
} else {
  const skill = readFileSync('SKILL.md', 'utf8');
  const fm = skill.match(/^---\n([\s\S]*?)\n---/);
  if (!fm) fail('SKILL.md has no frontmatter block');
  else {
    if (!/\nname:\s*editor\b/.test('\n' + fm[1])) fail('SKILL.md frontmatter missing name: editor');
    else ok('SKILL.md name');
    if (!/\ndescription:\s*\S/.test('\n' + fm[1])) fail('SKILL.md frontmatter missing description');
    else ok('SKILL.md description');
  }
}

// dispatch.sh must exist and be executable.
if (!existsSync('dispatch.sh')) fail('dispatch.sh is missing');
else {
  if ((statSync('dispatch.sh').mode & 0o111) === 0) fail('dispatch.sh is not executable');
  else ok('dispatch.sh executable');
}

// Required reference files the skill reads.
for (const ref of [
  'references/writing-style.md',
  'references/review-examples.md',
  'references/effective-shell-style.md',
]) {
  if (!existsSync(ref)) fail(`missing ${ref}`);
  else ok(ref);
}

const cuteLabels = 'docs/examples/cute-labels.md';
if (!existsSync(cuteLabels)) {
  fail(`missing ${cuteLabels}`);
} else {
  const text = readFileSync(cuteLabels, 'utf8');
  const pairCount = text
    .split('\n')
    .filter((line) => line.startsWith('| ') && !line.startsWith('| Before ') && !line.startsWith('| --- '))
    .length;
  if (pairCount < 10) fail(`${cuteLabels} has ${pairCount} examples; expected at least 10`);
  else ok(`${cuteLabels} examples`);
}

// skill-tests.yaml present.
if (!existsSync('skill-tests.yaml')) fail('skill-tests.yaml is missing');
else ok('skill-tests.yaml');

if (failures) {
  console.error(`\n${failures} check(s) failed`);
  process.exit(1);
}
console.log('\nAll checks passed');
