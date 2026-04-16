---
marp: true
theme: default
paginate: true
html: true
style: |
  @import url('https://fonts.googleapis.com/css2?family=Work+Sans:wght@300;400;500;600;700;800&family=Inter:wght@300;400;500;600&family=JetBrains+Mono:wght@400;500&display=swap');

  :root {
    --navy:    #1A1A33;
    --orange:  #FF6745;
    --lime:    #DDFF45;
    --cyan:    #00E5EE;
    --purple:  #C445FF;
    --violet:  #7657FF;
    --offwhite:#E8E7E1;
    --card:    #252540;
    --border:  #2E2E50;
    --body:    #B0AFCC;
    --muted:   #6B6A8A;
    --light:   #FFFFFF;
    --green:   #22c55e;
    --red:     #ef4444;
  }

  section {
    background: var(--navy);
    color: var(--light);
    font-family: 'Inter', sans-serif;
    font-weight: 400;
    padding: 52px 72px;
    line-height: 1.55;
  }

  h1 {
    font-family: 'Work Sans', sans-serif;
    font-weight: 800;
    font-size: 2.4em;
    color: var(--light);
    line-height: 1.15;
    margin-bottom: 0.2em;
  }

  h2 {
    font-family: 'Inter', sans-serif;
    font-weight: 300;
    font-size: 1.15em;
    color: var(--body);
    margin-bottom: 0.4em;
  }

  h3 {
    font-family: 'Work Sans', sans-serif;
    font-weight: 600;
    font-size: 0.6em;
    color: var(--muted);
    text-transform: uppercase;
    letter-spacing: 0.18em;
    margin-bottom: 0.6em;
  }

  strong { color: var(--orange); font-weight: 600; }
  em { color: var(--lime); font-style: normal; font-weight: 500; }
  a { color: var(--cyan); text-decoration: none; }

  section.lead {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    background: radial-gradient(ellipse at 30% 70%, #2A1F40 0%, var(--navy) 65%);
  }
  section.lead h1 { font-size: 3em; }
  section.lead h2 { color: var(--body); font-size: 1.05em; max-width: 680px; }

  section.transition {
    display: flex;
    flex-direction: column;
    justify-content: center;
    background: var(--orange);
    color: var(--light);
  }
  section.transition h1 { color: var(--light); font-size: 2.8em; }
  section.transition h2 { color: rgba(255,255,255,0.8); font-weight: 400; }
  section.transition h3 { color: rgba(255,255,255,0.65); }

  section.dark-lime h1 { color: var(--lime); }

  header { text-align: right; font-size: 0.5em; color: var(--muted); font-family: 'Work Sans'; font-weight: 600; letter-spacing: 0.12em; text-transform: uppercase; }
  footer { font-size: 0.45em; color: var(--muted); }
  section::after { color: var(--muted); font-size: 0.5em; }

  ul, ol { padding-left: 1.4em; color: var(--body); }
  li { margin-bottom: 0.3em; }
  li::marker { color: var(--orange); }

  table { width: 100%; border-collapse: collapse; font-size: 0.72em; }
  th { font-family: 'Work Sans', sans-serif; font-weight: 600; font-size: 0.65em;
       text-transform: uppercase; letter-spacing: 0.12em; color: var(--muted);
       border-bottom: 1px solid var(--border); padding: 8px 12px; text-align: left; }
  td { padding: 8px 12px; border-bottom: 1px solid var(--border); color: var(--body); }
  tr:hover td { background: var(--card); }

  blockquote {
    border-left: 3px solid var(--orange);
    padding: 12px 20px;
    margin: 0;
    background: var(--card);
    border-radius: 0 8px 8px 0;
    font-family: 'Work Sans', sans-serif;
    font-weight: 500;
    color: var(--offwhite);
    font-size: 1em;
  }

  code { background: var(--card); color: var(--lime); padding: 2px 6px; border-radius: 4px; font-family: 'JetBrains Mono', monospace; font-size: 0.8em; }
  pre { background: var(--card); border: 1px solid var(--border); border-radius: 10px; padding: 14px 18px; font-size: 0.75em; }
  pre code { background: none; color: var(--offwhite); }

  .tag {
    font-family: 'Work Sans', sans-serif;
    font-weight: 700;
    font-size: 0.5em;
    letter-spacing: 0.12em;
    text-transform: uppercase;
    padding: 3px 10px;
    border-radius: 4px;
  }
  .tag-orange { background: rgba(255,103,69,0.2); color: var(--orange); border: 1px solid var(--orange); }
  .tag-lime   { background: rgba(221,255,69,0.15); color: var(--lime);   border: 1px solid var(--lime); }
  .tag-cyan   { background: rgba(0,229,238,0.15);  color: var(--cyan);   border: 1px solid var(--cyan); }
  .tag-violet { background: rgba(118,87,255,0.2);  color: var(--violet); border: 1px solid var(--violet); }

header: 'Masterclass · Interpretability'
footer: 'Model Interpretability with SHAP · Beginner Masterclass'
---

<!-- _class: lead -->
<!-- _paginate: false -->
<!-- _header: '' -->
<!-- _footer: '' -->

### Beginner Masterclass

# Model Interpretability
# with SHAP

## Open the black box — understand *why* your model predicts what it predicts

<br>

<span class="tag tag-lime">Level: Beginner</span> &nbsp; <span class="tag tag-cyan">Duration: ~90 min</span>

---

### About this masterclass

# What you will learn

<div style="background:#252540;border:1px solid #2E2E50;border-radius:12px;padding:22px 26px;margin-top:10px;">
  <div style="font-family:'Work Sans',sans-serif;font-weight:700;font-size:0.55em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:12px;">Learning objectives</div>
  <ul style="margin:0;padding-left:1.2em;color:#B0AFCC;font-size:0.74em;line-height:1.85;">
    <li>Explain <strong>why interpretability matters</strong> — beyond accuracy alone</li>
    <li>Use <strong>classic techniques</strong> (trees, coefficients, PCA) and know their limits</li>
    <li>Apply <strong>SHAP</strong> to tree models for global <em>and</em> local explanations</li>
    <li>Read <strong>summary, dependence, and force plots</strong> with confidence</li>
    <li>Extend SHAP to a <strong>multiclass text classification</strong> setting</li>
    <li>Run an <strong>independent SHAP analysis</strong> on your own dataset</li>
  </ul>
</div>

---

### The problem

# A 98% accurate model can still be wrong

<div style="display:flex;gap:20px;margin-top:12px;align-items:stretch;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #FF6745;border-radius:10px;padding:16px 20px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.55em;text-transform:uppercase;letter-spacing:0.12em;color:#FF6745;margin-bottom:8px;">The classic story</div>
    <p style="font-size:0.78em;color:#B0AFCC;line-height:1.55;margin:0;">A wolf vs. husky classifier reaches <strong>98% accuracy</strong>. Great model?</p>
    <p style="font-size:0.78em;color:#E8E7E1;line-height:1.55;margin-top:10px;">When researchers opened the black box, the model was looking at <em>the snow in the background</em>, not the animal.</p>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #DDFF45;border-radius:10px;padding:16px 20px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.55em;text-transform:uppercase;letter-spacing:0.12em;color:#DDFF45;margin-bottom:8px;">The lesson</div>
    <p style="font-size:0.78em;color:#B0AFCC;line-height:1.55;margin:0;">High accuracy is <strong>not enough</strong>. We also need to know <em>why</em> a model decides what it decides.</p>
    <p style="font-size:0.78em;color:#E8E7E1;line-height:1.55;margin-top:10px;">Interpretability is the bridge between performance and <strong>trust</strong>.</p>
  </div>
</div>

---

### Why it matters

# Four reasons to open the black box

<div style="display:flex;gap:14px;margin-top:16px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #FF6745;border-radius:10px;padding:14px 16px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">1 · Trust</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.5;">Stakeholders won't deploy what they can't understand.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #DDFF45;border-radius:10px;padding:14px 16px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">2 · Debugging</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.5;">Spot shortcuts, leakage, spurious correlations.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #00E5EE;border-radius:10px;padding:14px 16px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">3 · Fairness</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.5;">Audit sensitive features like gender, age, ethnicity.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #7657FF;border-radius:10px;padding:14px 16px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">4 · Regulation</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.5;">GDPR, EU AI Act, credit scoring: a right to explanation.</div>
  </div>
</div>

<br>

> Two questions, always: *Is the model **effective**?* And *is its reasoning **acceptable**?*

---

### Roadmap

# Our three-part journey

| Part | Question we'll answer | Data | Main tool |
|------|-----------------------|------|-----------|
| **Part 1** | How far can classic interpretability take us? | Census (tabular) | Tree, coefficients, PCA, SHAP |
| **Part 2** | Does the same logic work on text and multiclass? | Emotions (text) | Multiclass SHAP |
| **Part 3** | Can you run the workflow alone? | Your dataset | Independent SHAP analysis |

<br>

<div style="display:flex;gap:6px;margin-top:8px;">
  <div style="flex:1;height:4px;border-radius:2px;background:#FF6745;"></div>
  <div style="flex:1;height:4px;border-radius:2px;background:#DDFF45;"></div>
  <div style="flex:1;height:4px;border-radius:2px;background:#00E5EE;"></div>
</div>

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->

### Part 1

# From simple models
# to the black box

## Tabular data · Census income prediction

---

### The dataset

# Predicting US Census income

<div style="display:flex;gap:22px;margin-top:12px;">
  <div style="flex:1;">
    <div style="font-family:'Work Sans';font-weight:600;font-size:0.75em;color:#E8E7E1;margin-bottom:8px;">Target</div>
    <div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 16px;font-size:0.72em;color:#B0AFCC;">
      Does this person earn <strong>&gt; $50K</strong> per year? &nbsp;→ binary classification
    </div>
    <div style="font-family:'Work Sans';font-weight:600;font-size:0.75em;color:#E8E7E1;margin:16px 0 8px 0;">Features</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.7;">
      age · education · marital status · occupation · gender · capital gain/loss · hours worked · native country
    </div>
  </div>
  <div style="flex:1;background:rgba(221,255,69,0.07);border:1px solid #DDFF45;border-radius:10px;padding:16px 20px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:10px;">Why this dataset?</div>
    <p style="font-size:0.72em;color:#B0AFCC;margin:0;line-height:1.55;">Features are <strong>human-readable</strong>. When the model highlights <em>marital-status</em> or <em>hours-per-week</em>, we can immediately judge whether the pattern is reasonable — or worth auditing.</p>
  </div>
</div>

---

### Interpretable by design · 1

# Reading a decision tree

```text
                    [ROOT NODE]
                   feature ≤ value
                  /               \
              True                False
          [left child]        [right child]
            |                   |
          [LEAF]              [LEAF]
         class: A            class: B
```

<div style="display:flex;gap:16px;margin-top:8px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 16px;font-size:0.7em;color:#B0AFCC;">
    <strong>gini</strong> — impurity · 0 = pure leaf, 0.5 = mixed
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 16px;font-size:0.7em;color:#B0AFCC;">
    <strong>samples</strong> — how many training rows reached this node
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 16px;font-size:0.7em;color:#B0AFCC;">
    <strong>value</strong> — class counts → predicted <em>majority class</em>
  </div>
</div>

<br>

*The feature at the root is the strongest first separator in the data.*

---

### Interpretable by design · 2

# What the tree tells us (and hides)

<div style="display:flex;gap:18px;margin-top:12px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #DDFF45;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:8px;">What it gives us</div>
    <ul style="margin:0;padding-left:1.1em;font-size:0.7em;color:#B0AFCC;line-height:1.7;">
      <li><strong>Global view</strong> — main decision rules</li>
      <li><strong>Local view</strong> — one person's path</li>
      <li><strong>Full transparency</strong> — read line by line</li>
    </ul>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #FF6745;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:8px;">What it hides</div>
    <ul style="margin:0;padding-left:1.1em;font-size:0.7em;color:#B0AFCC;line-height:1.7;">
      <li>Rich <strong>interactions</strong> between many variables</li>
      <li>Strong <strong>predictive performance</strong></li>
      <li>A method that <strong>transfers</strong> to non-tree models</li>
    </ul>
  </div>
</div>

<br>

> Readable only because it's shallow. Grow the tree, lose the interpretability.

---

### Interpretable by design · 3

# Feature importance & coefficients

<div style="display:flex;gap:18px;margin-top:10px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#00E5EE;margin-bottom:8px;">Tree importance</div>
    <p style="font-size:0.68em;color:#B0AFCC;margin:0 0 6px 0;line-height:1.55;">How often a feature is used to split and how much it reduces impurity.</p>
    <div style="font-size:0.65em;color:#FF6745;"><strong>Limit</strong> — tied to the exact fitted tree, unstable, biased.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#00E5EE;margin-bottom:8px;">Linear coefficients</div>
    <p style="font-size:0.68em;color:#B0AFCC;margin:0 0 6px 0;line-height:1.55;">Positive = pushes toward class 1. Negative = pushes away.</p>
    <div style="font-size:0.65em;color:#FF6745;"><strong>Limit</strong> — assumes linearity, scale-sensitive, correlated features mask each other.</div>
  </div>
</div>

<br>

<div style="background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:10px;padding:12px 18px;font-size:0.72em;color:#E8E7E1;">
⚠ When a sensitive feature like <em>gender_Female</em> appears important, that's a signal to <strong>audit</strong> the model — not to essentialize people.
</div>

---

### Interpretable by design · 4

# PCA biplot — a global map

```text
          PC2 ▲
              │    ● ● ○ ○ ○       ● = class 0 (≤50K)
   ↑ arrow    │  ● ● ○ ○ ○         ○ = class 1 (>50K)
   for feat A │● ●● ○ ○ ○
              │  ● ○ ○ ○ ○
              └──────────────► PC1
                  → arrow for feature B
```

<div style="display:flex;gap:14px;margin-top:6px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Points</strong> — one per person
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Arrow direction</strong> — where the feature is high
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Arrow length</strong> — influence on the 2D projection
  </div>
</div>

<br>

*PCA is excellent for exploration. But projection loses information — never a final explanation.*

---

### The tradeoff

# Performance vs. interpretability

<table>
<thead>
<tr><th>Model</th><th>F1 score</th><th>Interpretability</th></tr>
</thead>
<tbody>
<tr><td>Decision tree (depth 3)</td><td><strong>~0.75</strong></td><td>Readable rule set</td></tr>
<tr><td>Logistic regression</td><td><strong>~0.78</strong></td><td>Coefficients directly inspectable</td></tr>
<tr><td>XGBoost</td><td><em>~0.81</em></td><td>Not directly inspectable</td></tr>
</tbody>
</table>

<br>

<div style="background:linear-gradient(135deg,rgba(255,103,69,0.12),rgba(118,87,255,0.08));border:1px solid #FF6745;border-radius:12px;padding:16px 22px;">
  <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:6px;">The problem</div>
  <p style="font-size:0.8em;color:#E8E7E1;margin:0;line-height:1.5;">Better performance → less readable. No single tree to look at. No coefficient table. Reasoning is <strong>distributed across hundreds of trees</strong>.</p>
</div>

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->

### Part 2

# SHAP
# to the rescue

## A unified language for any model

---

### The core idea

# SHAP in one mental picture

<div style="background:#252540;border:1px solid #2E2E50;border-radius:12px;padding:18px 22px;margin-top:8px;">
  <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:10px;">The question SHAP answers</div>
  <p style="font-size:0.88em;color:#E8E7E1;font-family:'Work Sans';font-weight:500;margin:0;line-height:1.5;">For this prediction, <strong>how much did each feature contribute</strong>, relative to a baseline?</p>
</div>

```text
baseline prediction (expected value)
      + contribution from feature 1
      + contribution from feature 2
      + contribution from feature 3
      + ...
      = model output for this person
```

*Think of SHAP as a **prediction-decomposition tool**. It splits one prediction into additive pieces you can read.*

---

### The foundation

# Why SHAP is trustworthy

<div style="display:flex;gap:14px;margin-top:14px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #FF6745;border-radius:10px;padding:14px 18px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">Game theory</div>
    <div style="font-size:0.7em;color:#B0AFCC;line-height:1.55;">Built on <strong>Shapley values</strong> — a Nobel-prize idea for fairly splitting a team's reward among its players.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #DDFF45;border-radius:10px;padding:14px 18px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">Fair properties</div>
    <div style="font-size:0.7em;color:#B0AFCC;line-height:1.55;">Efficiency · Symmetry · Dummy · Additivity — these <strong>four axioms</strong> uniquely define SHAP.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #00E5EE;border-radius:10px;padding:14px 18px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">Model-agnostic</div>
    <div style="font-size:0.7em;color:#B0AFCC;line-height:1.55;">Works for trees, linear models, neural nets — with an optimized <code>TreeExplainer</code> for XGBoost.</div>
  </div>
</div>

---

### The workflow

# Four steps to apply SHAP

<div style="display:flex;flex-direction:column;gap:10px;margin-top:8px;">
  <div style="display:flex;align-items:flex-start;gap:16px;">
    <div style="min-width:34px;height:34px;border-radius:50%;background:#FF6745;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.75em;color:white;flex-shrink:0;">1</div>
    <div>
      <div style="font-family:'Work Sans';font-weight:600;font-size:0.76em;color:#E8E7E1;">Train your model</div>
      <div style="font-size:0.68em;color:#B0AFCC;margin-top:2px;">Any model — but tree boosters (XGBoost, LightGBM) pair with a fast <code>TreeExplainer</code>.</div>
    </div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:16px;">
    <div style="min-width:34px;height:34px;border-radius:50%;background:#DDFF45;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.75em;color:#1A1A33;flex-shrink:0;">2</div>
    <div>
      <div style="font-family:'Work Sans';font-weight:600;font-size:0.76em;color:#E8E7E1;">Create the explainer</div>
      <div style="font-size:0.68em;color:#B0AFCC;margin-top:2px;"><code>explainer = shap.TreeExplainer(model, data=X_train, model_output="probability")</code></div>
    </div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:16px;">
    <div style="min-width:34px;height:34px;border-radius:50%;background:#00E5EE;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.75em;color:#1A1A33;flex-shrink:0;">3</div>
    <div>
      <div style="font-family:'Work Sans';font-weight:600;font-size:0.76em;color:#E8E7E1;">Compute SHAP values</div>
      <div style="font-size:0.68em;color:#B0AFCC;margin-top:2px;"><code>shap_values = explainer.shap_values(X_test)</code> → a matrix <em>(n_samples, n_features)</em></div>
    </div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:16px;">
    <div style="min-width:34px;height:34px;border-radius:50%;background:#7657FF;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.75em;color:white;flex-shrink:0;">4</div>
    <div>
      <div style="font-family:'Work Sans';font-weight:600;font-size:0.76em;color:#E8E7E1;">Visualize & interpret</div>
      <div style="font-size:0.68em;color:#B0AFCC;margin-top:2px;">Bar plot · beeswarm · dependence · force — we'll read all four next.</div>
    </div>
  </div>
</div>

---

### Output structure

# The SHAP values matrix

```text
                feature 1   feature 2   feature 3   ...
person 1          +0.12       -0.03       +0.01
person 2          -0.08       +0.10        0.00
person 3          +0.02       -0.01       -0.05
```

<div style="display:flex;gap:14px;margin-top:8px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #FF6745;border-radius:8px;padding:10px 14px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:4px;">Rows</div>
    <div style="font-size:0.7em;color:#B0AFCC;">One per person in the test set</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #DDFF45;border-radius:8px;padding:10px 14px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:4px;">Columns</div>
    <div style="font-size:0.7em;color:#B0AFCC;">One per feature</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #00E5EE;border-radius:8px;padding:10px 14px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:4px;">Sign</div>
    <div style="font-size:0.7em;color:#B0AFCC;"><strong>+</strong> pushes up · <strong>−</strong> pushes down</div>
  </div>
</div>

<br>

*Near zero → the feature barely influenced this particular prediction.*

---

### The baseline

# What is the expected value?

<div style="background:#252540;border:1px solid #2E2E50;border-radius:12px;padding:16px 22px;margin-top:6px;">
<pre style="background:none;border:none;padding:0;margin:0;font-size:0.75em;color:#E8E7E1;">
background data
      ↓
model predicts many probabilities
      ↓
average baseline = <span style="color:#FF6745;font-weight:600;">expected_value</span>
</pre>
</div>

<div style="margin-top:12px;font-size:0.74em;color:#B0AFCC;line-height:1.7;">

```text
expected_value + Σ shap_values[person] = model_prediction[person]
```

</div>

<div style="display:flex;gap:14px;margin-top:10px;">
  <div style="flex:1;background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#E8E7E1;">
    <strong>Not</strong> the probability for one person
  </div>
  <div style="flex:1;background:rgba(221,255,69,0.08);border:1px solid #DDFF45;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#E8E7E1;">
    <em>Shared starting point</em> for every explanation
  </div>
</div>

---

### Global view · 1

# The bar plot — what matters on average

```text
capital-gain        ████████████████  0.18
marital_Married     ████████████      0.12
educational-num     ████████          0.08
hours-per-week      ██████            0.06
age                 █████             0.05
```

<br>

<div style="display:flex;gap:16px;margin-top:4px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    Each bar = <strong>mean absolute SHAP value</strong>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    Longer bar = <em>more influence on average</em>
  </div>
  <div style="flex:1;background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#E8E7E1;">
    ⚠ Ranks features — <strong>does not</strong> show direction
  </div>
</div>

---

### Global view · 2

# The beeswarm — matters *how* and *for whom*

```text
                  pushes toward ≤50K   |   pushes toward >50K

capital-gain      • • • •              |   • • ● ● ● ● ● ●
marital_Married   • • • •              |   ● ● ● ● ● ●
age               • • •                |   ● ● ●
hours-per-week    • •                  |   ● ● ●
```

<div style="display:flex;gap:14px;margin-top:6px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Each dot</strong> — one person
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Horizontal position</strong> — SHAP value
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Color</strong> — low (blue) vs high (red) feature value
  </div>
</div>

<br>

*High capital-gain values clearly push toward >50K. High gender_Female values slightly push toward ≤50K — worth an audit.*

---

### Local view · 1

# The dependence plot — how one feature behaves

```text
SHAP value
for age         • •
               • •  • •      color = value of another feature
     0  -----------------
               • •   •
               • •

                low  →  high
                value of age
```

<div style="display:flex;gap:14px;margin-top:8px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Upward trend</strong> — higher feature value raises the prediction
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Flat shape</strong> — feature barely matters over this range
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Color pattern</strong> — reveals <em>interaction</em> with another feature
  </div>
</div>

---

### Local view · 2

# The force plot — one specific decision

```text
base value                                          f(x)
   ▼                                                 ▼
[ 0.24 ] ←← blue blocks ←←   ←← → →   →→ red blocks →→ [ 0.83 ]

        push toward ≤50K               push toward >50K
```

<div style="display:flex;gap:14px;margin-top:8px;">
  <div style="flex:1;background:rgba(239,68,68,0.1);border:1px solid #ef4444;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#E8E7E1;">
    🟥 <strong>Red blocks</strong> push the prediction up
  </div>
  <div style="flex:1;background:rgba(34,197,94,0.1);border:1px solid #22c55e;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#E8E7E1;">
    🟦 <strong>Blue blocks</strong> push the prediction down
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    <strong>Block width</strong> = strength of contribution
  </div>
</div>

<br>

*Global plots tell you what matters on average. Force plots tell you **why this person** got this prediction.*

---

### Know the limits

# SHAP is powerful — but not magic

| Caveat | What it means |
|--------|---------------|
| **Correlated features** | Credit may be split between twins in a messy way |
| **Compute cost** | `TreeExplainer` is fast — other explainers can be slow |
| **Not causality** | A strong SHAP value is <em>association</em>, not <strong>cause</strong> |
| **Local instability** | Similar people can have visibly different explanations |
| **Explainer choice** | Different explainers behave differently across model families |

<br>

> Use SHAP as a <strong>structured way to understand</strong> model behavior — not as absolute truth.

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->

### Part 3

# SHAP on text
# and multiclass

## Emotion classification with 6 classes

---

### What changes

# From tabular to text, from 2 classes to 6

<table>
<thead>
<tr><th>Aspect</th><th>Part 1 (binary)</th><th>Part 3 (multiclass text)</th></tr>
</thead>
<tbody>
<tr><td>Features</td><td>Tabular columns</td><td><em>Words / tokens</em></td></tr>
<tr><td>Task</td><td>Binary</td><td><em>6-class</em> (sadness · joy · fear · anger · surprise · disgust)</td></tr>
<tr><td>SHAP output space</td><td>Probabilities</td><td><em>Logits</em> (raw class scores)</td></tr>
<tr><td>Explanation unit</td><td>One per prediction</td><td><em>One per class, per prediction</em></td></tr>
</tbody>
</table>

<br>

<div style="background:rgba(221,255,69,0.07);border:1px solid #DDFF45;border-radius:10px;padding:12px 18px;font-size:0.72em;color:#E8E7E1;">
✓ Same workflow — <code>TreeExplainer</code>, <code>shap_values</code>, force plots. But we slow down on two new concepts.
</div>

---

### New concept · 1

# Logits vs. probabilities

```text
raw model scores (logits)   ──softmax──▶   probabilities that sum to 1

sadness    3.1                              sadness   0.72
joy        0.7                              joy       0.08
fear       1.0                              fear      0.10
anger      0.2                              anger     0.05
surprise  -0.3                              surprise  0.03
disgust   -0.6                              disgust   0.02
```

$$
\text{probability}_k = \frac{e^{\text{logit}_k}}{\sum_{j} e^{\text{logit}_j}}
$$

*In multiclass, `TreeExplainer` explains the **raw class scores** — probabilities come **after** softmax.*

---

### New concept · 2

# One explanation per class

<div style="background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 20px;margin-top:4px;">
<pre style="background:none;border:none;padding:0;margin:0;font-size:0.7em;color:#E8E7E1;">
shap_values
│
├── class 0: sadness   → array (n_samples, n_features)
├── class 1: joy       → array (n_samples, n_features)
├── class 2: fear      → array (n_samples, n_features)
├── class 3: anger     → array (n_samples, n_features)
├── class 4: surprise  → array (n_samples, n_features)
└── class 5: disgust   → array (n_samples, n_features)
</pre>
</div>

<div style="display:flex;gap:14px;margin-top:10px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    List format → <code>shap_values[3][5]</code> for person 5, anger class
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    3-D array → <code>shap_values[5, :, 3]</code> same thing
  </div>
</div>

---

### Reading multiclass force plots

# Which words fire each emotion?

<div style="display:flex;gap:16px;margin-top:10px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #7657FF;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#7657FF;margin-bottom:8px;">Sadness · obs #4</div>
    <p style="font-size:0.7em;color:#B0AFCC;margin:0;line-height:1.6;">Words like <strong>horrible</strong>, <strong>ungrateful</strong> push the sadness score up. Other words pull gently the other way.</p>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #FF6745;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:8px;">Anger · obs #5</div>
    <p style="font-size:0.7em;color:#B0AFCC;margin:0;line-height:1.6;">A single strong term (<em>profane</em>) dominates. Calming words like <strong>feeling</strong> appear on the opposite side.</p>
  </div>
</div>

<br>

*The point isn't just which words appear — it's **which class they support** in this explanation.*

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->

### Final Part

# Now it's your turn

## Apply the full SHAP workflow to your own data

---

### Open challenge

# Your 5-step SHAP workflow

<div style="display:flex;flex-direction:column;gap:8px;margin-top:8px;">
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#FF6745;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:white;flex-shrink:0;">1</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">Load & explore</div><div style="font-size:0.66em;color:#B0AFCC;">Missing values, target balance, sensitive columns.</div></div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#DDFF45;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:#1A1A33;flex-shrink:0;">2</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">Prepare & train</div><div style="font-size:0.66em;color:#B0AFCC;">Encode, split, fit an <code>XGBClassifier</code>, print <code>classification_report</code>.</div></div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#00E5EE;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:#1A1A33;flex-shrink:0;">3</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">Global SHAP — bar + beeswarm</div><div style="font-size:0.66em;color:#B0AFCC;">Top 3 features · direction · domain check.</div></div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#7657FF;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:white;flex-shrink:0;">4</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">Local SHAP — force plots</div><div style="font-size:0.66em;color:#B0AFCC;">One clearly positive · one negative · one uncertain.</div></div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#C445FF;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:white;flex-shrink:0;">5</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">Fairness / risk check</div><div style="font-size:0.66em;color:#B0AFCC;">Sensitive attributes · proxies · extra validation needed?</div></div>
  </div>
</div>

---

### Summary

# Key takeaways

<div style="background:linear-gradient(135deg,rgba(255,103,69,0.12),rgba(118,87,255,0.08));border:1px solid #FF6745;border-radius:12px;padding:20px 24px;margin-top:10px;">
  <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:12px;">Remember this</div>
  <ul style="margin:0;padding-left:1.2em;color:#E8E7E1;font-size:0.75em;line-height:1.9;">
    <li>High accuracy ≠ trustworthy. Always ask: <strong>why did it predict that?</strong></li>
    <li>Classic tools (tree, coefficients, PCA) are <em>intuitive</em> but <strong>limited</strong></li>
    <li>SHAP gives a <strong>unified language</strong>: decomposition = baseline + contributions</li>
    <li>Two views: <strong>global</strong> (bar, beeswarm) and <strong>local</strong> (force)</li>
    <li>Multiclass? One explanation <em>per class</em> — in logit space</li>
    <li>SHAP ≠ causality. It reveals <strong>learned patterns</strong>, not real-world truth</li>
  </ul>
</div>

---

### Quiz · Check your understanding

# What does a positive SHAP value mean?

<div style="display:flex;flex-direction:column;gap:10px;margin-top:12px;">
  <div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 18px;font-size:0.72em;color:#B0AFCC;">A — The feature is globally important across the whole dataset</div>
  <div style="background:rgba(221,255,69,0.1);border:1px solid #DDFF45;border-radius:8px;padding:12px 18px;font-size:0.72em;color:#DDFF45;display:flex;justify-content:space-between;align-items:center;">
    <span>B — This feature pushed this prediction <em>above</em> the baseline ✓</span>
  </div>
  <div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 18px;font-size:0.72em;color:#B0AFCC;">C — The feature caused the outcome in the real world</div>
  <div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 18px;font-size:0.72em;color:#B0AFCC;">D — The prediction is definitely correct</div>
</div>

<br>

*SHAP values are **local** and **associative** — one prediction, one person, one contribution.*

---

### Further reading

# Go deeper

<div style="display:flex;gap:18px;margin-top:10px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#00E5EE;margin-bottom:8px;">Books</div>
    <ul style="margin:0;padding-left:1em;font-size:0.68em;color:#B0AFCC;line-height:1.7;">
      <li><em>Interpretable ML</em> — C. Molnar</li>
      <li><em>Hands-On ML</em> — A. Géron (Ch. 6 + bonus)</li>
    </ul>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:8px;">Papers</div>
    <ul style="margin:0;padding-left:1em;font-size:0.68em;color:#B0AFCC;line-height:1.7;">
      <li>Lundberg & Lee (2017) — <em>A Unified Approach to Interpreting Model Predictions</em></li>
      <li>Ribeiro et al. (2016) — <em>LIME: Why Should I Trust You?</em></li>
    </ul>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:8px;">Libraries</div>
    <ul style="margin:0;padding-left:1em;font-size:0.68em;color:#B0AFCC;line-height:1.7;">
      <li><code>shap</code> — <a href="https://shap.readthedocs.io">shap.readthedocs.io</a></li>
      <li><code>lime</code> · <code>eli5</code> · <code>captum</code> (PyTorch)</li>
    </ul>
  </div>
</div>

---

<!-- _class: lead -->
<!-- _paginate: false -->
<!-- _header: '' -->

### Masterclass complete

# Thank you!

## Questions? Let's discuss.

<br>

<div style="display:flex;gap:6px;justify-content:center;margin-top:16px;">
  <div style="width:40px;height:4px;border-radius:2px;background:#FF6745;"></div>
  <div style="width:40px;height:4px;border-radius:2px;background:#DDFF45;"></div>
  <div style="width:40px;height:4px;border-radius:2px;background:#00E5EE;"></div>
  <div style="width:40px;height:4px;border-radius:2px;background:#7657FF;"></div>
</div>
