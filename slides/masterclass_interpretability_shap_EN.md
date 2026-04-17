---
marp: true
theme: default
paginate: true
html: true
math: mathjax
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
    padding: 48px 72px 70px 72px;
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
    background:
      radial-gradient(circle at 85% 15%, rgba(255,103,69,0.18) 0%, transparent 35%),
      radial-gradient(circle at 15% 85%, rgba(0,229,238,0.14) 0%, transparent 40%),
      radial-gradient(circle at 50% 50%, rgba(118,87,255,0.10) 0%, transparent 55%),
      radial-gradient(ellipse at 30% 70%, #2A1F40 0%, var(--navy) 65%);
  }
  section.lead::before {
    content: '';
    position: absolute; inset: 0;
    background-image:
      radial-gradient(circle at 20% 30%, rgba(221,255,69,0.06) 0%, transparent 2%),
      radial-gradient(circle at 70% 20%, rgba(0,229,238,0.08) 0%, transparent 2%),
      radial-gradient(circle at 40% 80%, rgba(255,103,69,0.08) 0%, transparent 2%),
      radial-gradient(circle at 85% 70%, rgba(118,87,255,0.08) 0%, transparent 2%);
    background-size: 120px 120px, 180px 180px, 150px 150px, 200px 200px;
    pointer-events: none;
  }
  section.lead > * { position: relative; z-index: 1; }
  section.lead h1 { font-size: 3em; }
  section.lead h2 { color: var(--body); font-size: 1.05em; max-width: 680px; }

  section.transition {
    display: flex;
    flex-direction: column;
    justify-content: center;
    background:
      linear-gradient(135deg, var(--orange) 0%, #E04B2E 100%);
    color: var(--light);
    position: relative;
    overflow: hidden;
  }
  section.transition::before {
    content: '';
    position: absolute;
    top: -80px; right: -80px;
    width: 420px; height: 420px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(255,255,255,0.12) 0%, transparent 70%);
    pointer-events: none;
  }
  section.transition::after {
    content: '';
    position: absolute;
    bottom: -120px; left: -60px;
    width: 360px; height: 360px;
    border-radius: 50%;
    background: radial-gradient(circle, rgba(26,26,51,0.18) 0%, transparent 70%);
    pointer-events: none;
  }
  section.transition > * { position: relative; z-index: 1; }
  section.transition h1 { color: var(--light); font-size: 2.8em; }
  section.transition h2 { color: rgba(255,255,255,0.85); font-weight: 400; }
  section.transition h3 { color: rgba(255,255,255,0.7); }
  section.transition footer { display: none; }
  section.transition header { display: none; }
  section.lead footer { display: none; }

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

header: '![w:80](./assets/Liora_Logo_White.svg)'
footer: 'Model Interpretability with SHAP · Parcours : Data Scientist'
---

<!-- _class: lead -->
<!-- _paginate: false -->
<!-- _header: '' -->
<!-- _footer: '' -->
<!-- _backgroundImage: "linear-gradient(135deg, rgba(26,26,51,0.92) 0%, rgba(42,31,64,0.88) 100%), url('https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?w=1600&q=70&auto=format&fit=crop')" -->

### Parcours : Data Scientist

# Model Interpretability
# with SHAP

## Open the black box — understand *why* your model predicts what it predicts

<br>

<span class="tag tag-lime">Parcours : Data Scientist</span> &nbsp; <span class="tag tag-cyan">Duration: ~90 min</span>

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

<!-- _backgroundImage: "linear-gradient(90deg, #1A1A33 0%, #1A1A33 55%, rgba(26,26,51,0.85) 75%, rgba(26,26,51,0.6) 100%), url('https://images.unsplash.com/photo-1558618666-fcd25c85cd64?w=1600&q=70&auto=format&fit=crop')" -->

### The problem

# A 98% accurate model can still be wrong

<div style="display:flex;gap:18px;margin-top:8px;align-items:stretch;">
  <div style="flex:0 0 200px;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:10px;display:flex;align-items:center;justify-content:center;">
    <svg viewBox="0 0 200 160" width="100%" height="140">
      <rect x="0" y="0" width="200" height="160" fill="#E8E7E1" rx="6"/>
      <circle cx="30" cy="30" r="3" fill="#FFFFFF"/><circle cx="80" cy="20" r="3" fill="#FFFFFF"/><circle cx="150" cy="35" r="3" fill="#FFFFFF"/><circle cx="180" cy="70" r="3" fill="#FFFFFF"/><circle cx="20" cy="80" r="3" fill="#FFFFFF"/><circle cx="170" cy="110" r="3" fill="#FFFFFF"/>
      <path d="M 0 130 Q 100 115 200 130 L 200 160 L 0 160 Z" fill="#FFFFFF"/>
      <ellipse cx="100" cy="115" rx="38" ry="22" fill="#6B6A8A"/>
      <circle cx="70" cy="95" r="16" fill="#6B6A8A"/>
      <polygon points="60,82 65,72 72,85" fill="#6B6A8A"/>
      <polygon points="78,82 73,72 68,85" fill="#6B6A8A"/>
      <circle cx="65" cy="97" r="1.5" fill="#FFFFFF"/>
      <circle cx="72" cy="97" r="1.5" fill="#FFFFFF"/>
      <polygon points="58,100 62,102 58,104" fill="#1A1A33"/>
      <rect x="128" y="108" width="3" height="20" fill="#6B6A8A"/>
      <rect x="88" y="125" width="3" height="18" fill="#6B6A8A"/>
      <rect x="108" y="125" width="3" height="18" fill="#6B6A8A"/>
      <rect x="8" y="8" width="184" height="104" fill="none" stroke="#FF6745" stroke-width="2" stroke-dasharray="5,3" rx="4"/>
      <text x="14" y="22" font-family="Work Sans" font-size="9" font-weight="700" fill="#FF6745">← the model looks HERE</text>
    </svg>
  </div>
  <div style="flex:1;display:flex;flex-direction:column;gap:10px;">
    <div style="background:#252540;border:1px solid #2E2E50;border-left:3px solid #FF6745;border-radius:10px;padding:12px 16px;">
      <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.12em;color:#FF6745;margin-bottom:6px;">The classic story</div>
      <p style="font-size:0.72em;color:#E8E7E1;line-height:1.5;margin:0;">A wolf vs. husky classifier reaches <strong>98% accuracy</strong>. Great model? It actually looks at <em>the snow in the background</em>, not the animal.</p>
    </div>
    <div style="background:#252540;border:1px solid #2E2E50;border-left:3px solid #DDFF45;border-radius:10px;padding:12px 16px;">
      <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.12em;color:#DDFF45;margin-bottom:6px;">The lesson</div>
      <p style="font-size:0.72em;color:#E8E7E1;line-height:1.5;margin:0;">High performance is <strong>not enough</strong>. Interpretability is the bridge between performance and <strong>trust</strong>.</p>
    </div>
  </div>
</div>

---

<!-- _backgroundImage: "linear-gradient(135deg, #1A1A33 0%, #1A1A33 60%, rgba(26,26,51,0.7) 100%), url('https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=1600&q=70&auto=format&fit=crop')" -->

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
<!-- _backgroundImage: "linear-gradient(135deg, rgba(255,103,69,0.88) 0%, rgba(224,75,46,0.92) 100%), url('https://images.unsplash.com/photo-1551288049-bebda4e38f71?w=1600&q=70&auto=format&fit=crop')" -->

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

<div style="background:rgba(0,229,238,0.07);border:1px solid #00E5EE;border-radius:8px;padding:8px 14px;margin-top:10px;font-size:0.66em;color:#E8E7E1;">
<strong style="color:#00E5EE;">In the notebook →</strong> <code>DecisionTreeClassifier(max_depth=3, random_state=42)</code> — depth 3 to stay readable.
</div>

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

<div style="display:flex;gap:14px;margin-top:8px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:12px 16px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#00E5EE;margin-bottom:6px;">Tree importance</div>
    <p style="font-size:0.64em;color:#B0AFCC;margin:0 0 4px 0;line-height:1.5;">Split frequency × impurity reduction.</p>
    <div style="font-size:0.6em;color:#FF6745;"><strong>Limit</strong> — tied to the fitted tree, unstable.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:12px 16px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#00E5EE;margin-bottom:6px;">Linear coefficients</div>
    <p style="font-size:0.64em;color:#B0AFCC;margin:0 0 4px 0;line-height:1.5;">Positive → class 1 · negative → class 0.</p>
    <div style="font-size:0.6em;color:#FF6745;"><strong>Limit</strong> — assumes linearity, scale-sensitive.</div>
  </div>
</div>

<div style="background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:8px;padding:8px 14px;margin-top:8px;font-size:0.64em;color:#E8E7E1;">
⚠ A sensitive feature like <em>gender_Female</em> near the top = signal to <strong>audit</strong> the model.
</div>

<div style="background:rgba(0,229,238,0.07);border:1px solid #00E5EE;border-radius:8px;padding:6px 14px;margin-top:6px;font-size:0.6em;color:#E8E7E1;">
<strong style="color:#00E5EE;">In the notebook →</strong> <code>tree_clf.feature_importances_</code> · <code>pipeline['logistic_regression'].coef_[0]</code> (with <code>StandardScaler</code>).
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
  <p style="font-size:0.78em;color:#E8E7E1;margin:0;line-height:1.5;">Better performance → less readable. No single tree to look at. No coefficient table. Reasoning is <strong>distributed across hundreds of trees</strong>.</p>
</div>

<div style="background:rgba(0,229,238,0.07);border:1px solid #00E5EE;border-radius:8px;padding:8px 14px;margin-top:8px;font-size:0.65em;color:#E8E7E1;">
<strong style="color:#00E5EE;">In the notebook →</strong> <code>xgb.XGBClassifier(eval_metric='logloss', random_state=42)</code> — 100 trees by default, <code>max_depth=6</code>. This is the model we'll explain with SHAP.
</div>

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->
<!-- _backgroundImage: "linear-gradient(135deg, rgba(255,103,69,0.88) 0%, rgba(224,75,46,0.92) 100%), url('https://images.unsplash.com/photo-1518186285589-2f7649de83e0?w=1600&q=70&auto=format&fit=crop')" -->

### Part 2

# SHAP
# to the rescue

## A unified language for any model

---

<!-- _backgroundImage: "linear-gradient(135deg, #1A1A33 0%, #1A1A33 55%, rgba(26,26,51,0.75) 100%), url('https://images.unsplash.com/photo-1620712943543-bcc4688e7485?w=1600&q=70&auto=format&fit=crop')" -->

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
      <div style="font-size:0.66em;color:#B0AFCC;margin-top:2px;"><code>explainer = shap.TreeExplainer(xgb_model, data=X_train, model_output="probability")</code> · <code>data=X_train</code> is the <em>background set</em> — the mean prediction over it becomes the expected value.</div>
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

# Expected value = average prediction

<div style="background:linear-gradient(135deg,rgba(255,103,69,0.12),rgba(118,87,255,0.08));border:1px solid #FF6745;border-radius:12px;padding:14px 20px;margin-top:4px;">
  <p style="font-family:'Work Sans';font-weight:500;font-size:0.82em;color:#E8E7E1;margin:0;line-height:1.5;">
  The <strong>expected value</strong> is simply the <em>model's average prediction</em> over the background data — <code>E[f(X)] = np.mean(model.predict(X_background))</code>.
  </p>
</div>

<div style="display:flex;gap:16px;margin-top:12px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:12px 16px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.14em;color:#DDFF45;margin-bottom:8px;">Census example · binary</div>
    <pre style="background:none;border:none;padding:0;margin:0;font-size:0.68em;color:#E8E7E1;line-height:1.55;">model.predict_proba(X_train)[:,1].mean()
<span style="color:#FF6745;">≈ 0.24</span>  ← expected_value
(~24% earn >50K in X_train)</pre>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:12px 16px;font-size:0.7em;color:#B0AFCC;line-height:1.6;">
    <strong>How to read it</strong> — before seeing <em>one</em> person's features, the model would start from <strong>0.24</strong>. SHAP values measure the distance between this average and the <em>actual</em> prediction for that person.
  </div>
</div>

<div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 16px;margin-top:10px;font-size:0.72em;color:#E8E7E1;">
<code>expected_value + Σ shap_values[person] = model.predict_proba(person)</code>
</div>

---

### Global view · 1

# The bar plot — what matters on average

<svg width="100%" height="180" viewBox="0 0 560 180" style="margin-top:4px;">
  <text x="0" y="14" font-family="Inter" font-size="10" fill="#B0AFCC">capital-gain</text>
  <rect x="130" y="4" width="360" height="14" rx="3" fill="#2E2E50"/>
  <rect x="130" y="4" width="320" height="14" rx="3" fill="#FF6745"/>
  <text x="456" y="14" font-family="Work Sans" font-size="10" font-weight="700" fill="#FF6745">0.18</text>
  <text x="0" y="42" font-family="Inter" font-size="10" fill="#B0AFCC">marital_Married</text>
  <rect x="130" y="32" width="360" height="14" rx="3" fill="#2E2E50"/>
  <rect x="130" y="32" width="240" height="14" rx="3" fill="#DDFF45"/>
  <text x="376" y="42" font-family="Work Sans" font-size="10" font-weight="700" fill="#DDFF45">0.12</text>
  <text x="0" y="70" font-family="Inter" font-size="10" fill="#B0AFCC">educational-num</text>
  <rect x="130" y="60" width="360" height="14" rx="3" fill="#2E2E50"/>
  <rect x="130" y="60" width="160" height="14" rx="3" fill="#00E5EE"/>
  <text x="296" y="70" font-family="Work Sans" font-size="10" font-weight="700" fill="#00E5EE">0.08</text>
  <text x="0" y="98" font-family="Inter" font-size="10" fill="#B0AFCC">hours-per-week</text>
  <rect x="130" y="88" width="360" height="14" rx="3" fill="#2E2E50"/>
  <rect x="130" y="88" width="120" height="14" rx="3" fill="#7657FF"/>
  <text x="256" y="98" font-family="Work Sans" font-size="10" font-weight="700" fill="#7657FF">0.06</text>
  <text x="0" y="126" font-family="Inter" font-size="10" fill="#B0AFCC">age</text>
  <rect x="130" y="116" width="360" height="14" rx="3" fill="#2E2E50"/>
  <rect x="130" y="116" width="100" height="14" rx="3" fill="#C445FF"/>
  <text x="236" y="126" font-family="Work Sans" font-size="10" font-weight="700" fill="#C445FF">0.05</text>
  <line x1="130" y1="148" x2="490" y2="148" stroke="#2E2E50" stroke-width="1"/>
  <text x="128" y="164" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="end">0</text>
  <text x="490" y="164" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="end">mean |SHAP| →</text>
</svg>

<div style="display:flex;gap:14px;margin-top:2px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.66em;color:#B0AFCC;">
    Each bar = <strong>mean |SHAP|</strong> — influence with no direction
  </div>
  <div style="flex:1;background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:8px;padding:8px 12px;font-size:0.66em;color:#E8E7E1;">
    ⚠ Ranks features — <strong>does not</strong> say whether they push toward ≤50K or >50K
  </div>
</div>

---

### Global view · 2

# The beeswarm — matters *how* and *for whom*

<svg width="100%" height="200" viewBox="0 0 600 200" style="margin-top:4px;">
  <defs>
    <linearGradient id="cgrad" x1="0" x2="1">
      <stop offset="0" stop-color="#00E5EE"/>
      <stop offset="1" stop-color="#FF6745"/>
    </linearGradient>
  </defs>
  <line x1="320" y1="10" x2="320" y2="170" stroke="#FF6745" stroke-dasharray="3,3" stroke-width="1" opacity="0.6"/>
  <text x="120" y="186" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="middle">pushes ≤50K ←</text>
  <text x="520" y="186" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="middle">→ pushes >50K</text>
  <text x="320" y="186" font-family="Inter" font-size="9" fill="#FF6745" text-anchor="middle" font-weight="600">SHAP = 0</text>
  <text x="0" y="26" font-family="Inter" font-size="10" fill="#B0AFCC">capital-gain</text>
  <circle cx="260" cy="24" r="3" fill="#00E5EE" opacity="0.6"/><circle cx="275" cy="20" r="3" fill="#00E5EE" opacity="0.6"/><circle cx="290" cy="24" r="3" fill="#2A9FE0" opacity="0.7"/><circle cx="308" cy="22" r="3" fill="#7657FF" opacity="0.7"/>
  <circle cx="360" cy="24" r="4" fill="#FF6745"/><circle cx="395" cy="20" r="4" fill="#FF6745"/><circle cx="430" cy="24" r="4" fill="#FF6745"/><circle cx="475" cy="22" r="4" fill="#FF6745"/><circle cx="510" cy="24" r="4" fill="#FF6745"/><circle cx="545" cy="20" r="4" fill="#FF6745"/>
  <text x="0" y="60" font-family="Inter" font-size="10" fill="#B0AFCC">marital_Married</text>
  <circle cx="265" cy="58" r="3" fill="#00E5EE" opacity="0.6"/><circle cx="285" cy="54" r="3" fill="#00E5EE" opacity="0.6"/><circle cx="305" cy="58" r="3" fill="#2A9FE0" opacity="0.6"/>
  <circle cx="355" cy="58" r="4" fill="#FF6745"/><circle cx="385" cy="54" r="4" fill="#FF6745"/><circle cx="420" cy="58" r="4" fill="#FF6745"/><circle cx="455" cy="54" r="4" fill="#FF6745"/><circle cx="485" cy="58" r="4" fill="#FF6745"/>
  <text x="0" y="94" font-family="Inter" font-size="10" fill="#B0AFCC">age</text>
  <circle cx="280" cy="92" r="3" fill="#00E5EE" opacity="0.6"/><circle cx="300" cy="88" r="3" fill="#2A9FE0" opacity="0.6"/>
  <circle cx="345" cy="92" r="3.5" fill="#FF8A6F"/><circle cx="375" cy="88" r="3.5" fill="#FF6745"/><circle cx="405" cy="92" r="3.5" fill="#FF6745"/>
  <text x="0" y="128" font-family="Inter" font-size="10" fill="#B0AFCC">hours-per-week</text>
  <circle cx="290" cy="126" r="3" fill="#00E5EE" opacity="0.6"/><circle cx="308" cy="122" r="3" fill="#2A9FE0" opacity="0.6"/>
  <circle cx="345" cy="126" r="3.5" fill="#FF8A6F"/><circle cx="370" cy="122" r="3.5" fill="#FF6745"/><circle cx="398" cy="126" r="3.5" fill="#FF6745"/>
  <text x="0" y="162" font-family="Inter" font-size="10" fill="#B0AFCC">gender_Female</text>
  <circle cx="250" cy="160" r="3.5" fill="#FF8A6F"/><circle cx="275" cy="156" r="3.5" fill="#FF6745"/><circle cx="295" cy="160" r="3.5" fill="#FF6745"/>
  <circle cx="338" cy="160" r="3" fill="#00E5EE" opacity="0.6"/>
  <rect x="460" y="0" width="140" height="8" fill="url(#cgrad)" rx="2"/>
  <text x="460" y="-2" font-family="Inter" font-size="8" fill="#6B6A8A">feature value</text>
  <text x="460" y="18" font-family="Inter" font-size="8" fill="#00E5EE">low</text>
  <text x="600" y="18" font-family="Inter" font-size="8" fill="#FF6745" text-anchor="end">high</text>
</svg>

<div style="display:flex;gap:12px;margin-top:-4px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#B0AFCC;"><strong>Each dot</strong> = one person</div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#B0AFCC;"><strong>X position</strong> = SHAP value</div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#B0AFCC;"><strong>Color</strong> = low (cyan) / high (orange)</div>
</div>

*High capital-gain → >50K. gender_Female slightly pushes toward ≤50K — **worth an audit**.*

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

<svg width="100%" height="170" viewBox="0 0 620 170" style="margin-top:4px;">
  <text x="40" y="16" font-family="Work Sans" font-size="10" fill="#6B6A8A" font-weight="600">base value</text>
  <text x="40" y="30" font-family="Work Sans" font-size="14" fill="#B0AFCC" font-weight="700">0.24</text>
  <text x="580" y="16" font-family="Work Sans" font-size="10" fill="#FF6745" font-weight="600" text-anchor="end">f(x)</text>
  <text x="580" y="30" font-family="Work Sans" font-size="14" fill="#FF6745" font-weight="700" text-anchor="end">0.83</text>
  <line x1="20" y1="50" x2="600" y2="50" stroke="#2E2E50" stroke-width="1"/>
  <polygon points="85,45 85,55 90,50" fill="#B0AFCC"/>
  <polygon points="540,45 540,55 535,50" fill="#FF6745"/>
  <rect x="90" y="60" width="80" height="32" fill="#22c55e" opacity="0.85" rx="2"/>
  <text x="130" y="80" font-family="Inter" font-size="9" fill="#0A3318" text-anchor="middle" font-weight="600">age=28</text>
  <rect x="170" y="60" width="50" height="32" fill="#22c55e" opacity="0.5" rx="2"/>
  <text x="195" y="80" font-family="Inter" font-size="9" fill="#E8E7E1" text-anchor="middle">hours=35</text>
  <rect x="220" y="60" width="110" height="32" fill="#FF6745" opacity="0.5" rx="2"/>
  <text x="275" y="80" font-family="Inter" font-size="9" fill="#E8E7E1" text-anchor="middle">educ=14</text>
  <rect x="330" y="60" width="80" height="32" fill="#FF6745" opacity="0.75" rx="2"/>
  <text x="370" y="80" font-family="Inter" font-size="9" fill="#140603" text-anchor="middle" font-weight="600">married=1</text>
  <rect x="410" y="60" width="130" height="32" fill="#FF6745" rx="2"/>
  <text x="475" y="80" font-family="Inter" font-size="9" fill="#FFFFFF" text-anchor="middle" font-weight="700">capital-gain=8500</text>
  <text x="130" y="108" font-family="Inter" font-size="9" fill="#22c55e" text-anchor="middle">pushes ≤50K</text>
  <text x="475" y="108" font-family="Inter" font-size="9" fill="#FF6745" text-anchor="middle">pushes >50K</text>
  <text x="310" y="140" font-family="Work Sans" font-size="10" fill="#B0AFCC" text-anchor="middle" font-style="italic">0.24 + (−0.06) + (−0.02) + 0.09 + 0.18 + 0.40 = 0.83</text>
  <text x="310" y="156" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="middle">expected_value + Σ SHAP = final prediction</text>
</svg>

<div style="display:flex;gap:12px;margin-top:2px;">
  <div style="flex:1;background:rgba(239,68,68,0.1);border:1px solid #FF6745;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#E8E7E1;"><strong style="color:#FF6745;">Red blocks</strong> → push up</div>
  <div style="flex:1;background:rgba(34,197,94,0.1);border:1px solid #22c55e;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#E8E7E1;"><strong style="color:#22c55e;">Green blocks</strong> → push down</div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#B0AFCC;"><strong>Block width</strong> = strength of contribution</div>
</div>

*The force plot tells you **why this specific person** got this prediction.*

---

<!-- _backgroundImage: "linear-gradient(135deg, #1A1A33 0%, #1A1A33 60%, rgba(26,26,51,0.7) 100%), url('https://images.unsplash.com/photo-1507146153580-69a1fe6d8aa1?w=1600&q=70&auto=format&fit=crop')" -->

### Know the limits

# SHAP is powerful — not magic

| Caveat | What it means |
|--------|---------------|
| **Correlated features** | Credit may split between twins in a messy way |
| **Compute cost** | `TreeExplainer` is fast — other explainers can be slow |
| **Not causality** | A strong SHAP value is <em>association</em>, not <strong>cause</strong> |
| **Local instability** | Similar people can get visibly different explanations |
| **Explainer choice** | Different explainers behave differently across models |

> Use SHAP as a <strong>structured way to understand</strong> the model — not as absolute truth.

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->
<!-- _backgroundImage: "linear-gradient(135deg, rgba(255,103,69,0.88) 0%, rgba(224,75,46,0.92) 100%), url('https://images.unsplash.com/photo-1455390582262-044cdead277a?w=1600&q=70&auto=format&fit=crop')" -->

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

<div style="background:rgba(221,255,69,0.07);border:1px solid #DDFF45;border-radius:8px;padding:8px 14px;font-size:0.64em;color:#E8E7E1;">
✓ Same workflow — <code>TreeExplainer</code>, <code>shap_values</code>, force plots. We slow down on 2 new concepts.
</div>

<div style="background:rgba(0,229,238,0.07);border:1px solid #00E5EE;border-radius:8px;padding:6px 14px;margin-top:6px;font-size:0.6em;color:#E8E7E1;">
<strong style="color:#00E5EE;">In the notebook →</strong> <code>xgb.XGBClassifier(objective='multi:softprob', num_class=6)</code>
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
<!-- _backgroundImage: "linear-gradient(135deg, rgba(255,103,69,0.88) 0%, rgba(224,75,46,0.92) 100%), url('https://images.unsplash.com/photo-1504384308090-c894fdcc538d?w=1600&q=70&auto=format&fit=crop')" -->

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
