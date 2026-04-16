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

header: 'Masterclass · Interprétabilité'
footer: 'Interprétabilité des modèles avec SHAP · Masterclass Débutant'
---

<!-- _class: lead -->
<!-- _paginate: false -->
<!-- _header: '' -->
<!-- _footer: '' -->

### Masterclass Débutant

# Interprétabilité
# des modèles avec SHAP

## Ouvrir la boîte noire — comprendre *pourquoi* votre modèle prédit ce qu'il prédit

<br>

<span class="tag tag-lime">Niveau : Débutant</span> &nbsp; <span class="tag tag-cyan">Durée : ~90 min</span>

---

### À propos de cette masterclass

# Ce que vous allez apprendre

<div style="background:#252540;border:1px solid #2E2E50;border-radius:12px;padding:22px 26px;margin-top:10px;">
  <div style="font-family:'Work Sans',sans-serif;font-weight:700;font-size:0.55em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:12px;">Objectifs d'apprentissage</div>
  <ul style="margin:0;padding-left:1.2em;color:#B0AFCC;font-size:0.74em;line-height:1.85;">
    <li>Expliquer <strong>pourquoi l'interprétabilité compte</strong> — au-delà de la seule performance</li>
    <li>Utiliser les <strong>techniques classiques</strong> (arbres, coefficients, ACP) et connaître leurs limites</li>
    <li>Appliquer <strong>SHAP</strong> aux modèles à base d'arbres pour des explications globales <em>et</em> locales</li>
    <li>Lire avec aisance les <strong>summary, dependence et force plots</strong></li>
    <li>Étendre SHAP à une <strong>classification textuelle multi-classes</strong></li>
    <li>Mener une <strong>analyse SHAP autonome</strong> sur votre propre jeu de données</li>
  </ul>
</div>

---

### Le problème

# Un modèle à 98% peut se tromper

<div style="display:flex;gap:18px;margin-top:8px;align-items:stretch;">
  <div style="flex:0 0 200px;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:10px;display:flex;align-items:center;justify-content:center;">
    <svg viewBox="0 0 200 160" width="100%" height="140">
      <!-- neige arrière-plan -->
      <rect x="0" y="0" width="200" height="160" fill="#E8E7E1" rx="6"/>
      <circle cx="30" cy="30" r="3" fill="#FFFFFF"/><circle cx="80" cy="20" r="3" fill="#FFFFFF"/><circle cx="150" cy="35" r="3" fill="#FFFFFF"/><circle cx="180" cy="70" r="3" fill="#FFFFFF"/><circle cx="20" cy="80" r="3" fill="#FFFFFF"/><circle cx="170" cy="110" r="3" fill="#FFFFFF"/>
      <!-- sol -->
      <path d="M 0 130 Q 100 115 200 130 L 200 160 L 0 160 Z" fill="#FFFFFF"/>
      <!-- husky silhouette -->
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
      <!-- encadré rouge sur la neige -->
      <rect x="8" y="8" width="184" height="104" fill="none" stroke="#FF6745" stroke-width="2" stroke-dasharray="5,3" rx="4"/>
      <text x="14" y="22" font-family="Work Sans" font-size="9" font-weight="700" fill="#FF6745">← le modèle regarde ICI</text>
    </svg>
  </div>
  <div style="flex:1;display:flex;flex-direction:column;gap:10px;">
    <div style="background:#252540;border:1px solid #2E2E50;border-left:3px solid #FF6745;border-radius:10px;padding:12px 16px;">
      <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.12em;color:#FF6745;margin-bottom:6px;">L'histoire classique</div>
      <p style="font-size:0.72em;color:#E8E7E1;line-height:1.5;margin:0;">Un classifieur loup vs. husky atteint <strong>98% de précision</strong>. Bon modèle ? Il regarde en fait <em>la neige en arrière-plan</em>, pas l'animal.</p>
    </div>
    <div style="background:#252540;border:1px solid #2E2E50;border-left:3px solid #DDFF45;border-radius:10px;padding:12px 16px;">
      <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.12em;color:#DDFF45;margin-bottom:6px;">La leçon</div>
      <p style="font-size:0.72em;color:#E8E7E1;line-height:1.5;margin:0;">Une haute performance <strong>ne suffit pas</strong>. L'interprétabilité est le pont entre performance et <strong>confiance</strong>.</p>
    </div>
  </div>
</div>

---

### Pourquoi ça compte

# Quatre raisons d'ouvrir la boîte noire

<div style="display:flex;gap:14px;margin-top:16px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #FF6745;border-radius:10px;padding:14px 16px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">1 · Confiance</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.5;">Personne ne déploie ce qu'il ne comprend pas.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #DDFF45;border-radius:10px;padding:14px 16px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">2 · Débogage</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.5;">Repérer raccourcis, fuites et corrélations fallacieuses.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #00E5EE;border-radius:10px;padding:14px 16px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">3 · Équité</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.5;">Auditer les variables sensibles : genre, âge, origine.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #7657FF;border-radius:10px;padding:14px 16px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">4 · Régulation</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.5;">RGPD, AI Act, scoring crédit : un droit à l'explication.</div>
  </div>
</div>

<br>

> Deux questions, toujours : *Le modèle est-il **efficace** ?* Et son *raisonnement est-il **acceptable** ?*

---

### Feuille de route

# Notre parcours en trois parties

| Partie | Question traitée | Données | Outil principal |
|--------|------------------|---------|-----------------|
| **Partie 1** | Jusqu'où l'interprétabilité classique peut nous mener ? | Census (tabulaire) | Arbre, coefficients, ACP, SHAP |
| **Partie 2** | La même logique tient-elle sur texte et multi-classes ? | Émotions (texte) | SHAP multi-classes |
| **Partie 3** | Pouvez-vous mener le workflow seul·e ? | Votre dataset | Analyse SHAP autonome |

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

### Partie 1

# Des modèles simples
# à la boîte noire

## Données tabulaires · Prédiction de revenus

---

### Le jeu de données

# Prédire les revenus du Census US

<div style="display:flex;gap:22px;margin-top:12px;">
  <div style="flex:1;">
    <div style="font-family:'Work Sans';font-weight:600;font-size:0.75em;color:#E8E7E1;margin-bottom:8px;">Cible</div>
    <div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 16px;font-size:0.72em;color:#B0AFCC;">
      Cette personne gagne-t-elle <strong>&gt; 50K $</strong> par an ? &nbsp;→ classification binaire
    </div>
    <div style="font-family:'Work Sans';font-weight:600;font-size:0.75em;color:#E8E7E1;margin:16px 0 8px 0;">Variables</div>
    <div style="font-size:0.72em;color:#B0AFCC;line-height:1.7;">
      âge · éducation · statut marital · profession · genre · plus/moins-values · heures travaillées · pays
    </div>
  </div>
  <div style="flex:1;background:rgba(221,255,69,0.07);border:1px solid #DDFF45;border-radius:10px;padding:16px 20px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:10px;">Pourquoi ce dataset ?</div>
    <p style="font-size:0.72em;color:#B0AFCC;margin:0;line-height:1.55;">Les variables sont <strong>lisibles par un humain</strong>. Quand le modèle met en avant <em>marital-status</em> ou <em>hours-per-week</em>, on peut juger immédiatement si la logique est raisonnable — ou à auditer.</p>
  </div>
</div>

---

### Interprétable par nature · 1

# Lire un arbre de décision

```text
                    [RACINE]
                 variable ≤ valeur
                  /               \
               Vrai              Faux
          [enfant gauche]    [enfant droit]
            |                   |
         [FEUILLE]           [FEUILLE]
         classe : A         classe : B
```

<div style="display:flex;gap:16px;margin-top:8px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 16px;font-size:0.7em;color:#B0AFCC;">
    <strong>gini</strong> — impureté · 0 = feuille pure, 0.5 = mélangée
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 16px;font-size:0.7em;color:#B0AFCC;">
    <strong>samples</strong> — combien d'exemples atteignent ce nœud
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 16px;font-size:0.7em;color:#B0AFCC;">
    <strong>value</strong> — effectifs par classe → <em>classe majoritaire</em>
  </div>
</div>

<div style="background:rgba(0,229,238,0.07);border:1px solid #00E5EE;border-radius:8px;padding:8px 14px;margin-top:10px;font-size:0.66em;color:#E8E7E1;">
<strong style="color:#00E5EE;">Dans le notebook →</strong> <code>DecisionTreeClassifier(max_depth=3, random_state=42)</code> — profondeur 3 pour rester lisible.
</div>

*La variable à la racine est le premier séparateur le plus fort des données.*

---

### Interprétable par nature · 2

# Ce que l'arbre dit (et ne dit pas)

<div style="display:flex;gap:18px;margin-top:12px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #DDFF45;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:8px;">Ce qu'il offre</div>
    <ul style="margin:0;padding-left:1.1em;font-size:0.7em;color:#B0AFCC;line-height:1.7;">
      <li><strong>Vue globale</strong> — règles de décision principales</li>
      <li><strong>Vue locale</strong> — chemin d'un individu</li>
      <li><strong>Transparence totale</strong> — lecture ligne à ligne</li>
    </ul>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #FF6745;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:8px;">Ce qu'il cache</div>
    <ul style="margin:0;padding-left:1.1em;font-size:0.7em;color:#B0AFCC;line-height:1.7;">
      <li>Les <strong>interactions</strong> riches entre variables</li>
      <li>Une forte <strong>performance prédictive</strong></li>
      <li>Une méthode <strong>transférable</strong> à d'autres modèles</li>
    </ul>
  </div>
</div>

<br>

> Lisible uniquement parce qu'il est peu profond. Dès qu'on le laisse grandir, l'interprétabilité disparaît.

---

### Interprétable par nature · 3

# Feature importance & coefficients

<div style="display:flex;gap:18px;margin-top:10px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#00E5EE;margin-bottom:8px;">Importance arbres</div>
    <p style="font-size:0.68em;color:#B0AFCC;margin:0 0 6px 0;line-height:1.55;">À quelle fréquence la variable est utilisée pour splitter et combien elle réduit l'impureté.</p>
    <div style="font-size:0.65em;color:#FF6745;"><strong>Limite</strong> — liée à l'arbre exact, instable, biaisée.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#00E5EE;margin-bottom:8px;">Coefficients linéaires</div>
    <p style="font-size:0.68em;color:#B0AFCC;margin:0 0 6px 0;line-height:1.55;">Positif = pousse vers classe 1. Négatif = pousse vers classe 0.</p>
    <div style="font-size:0.65em;color:#FF6745;"><strong>Limite</strong> — suppose la linéarité, sensible à l'échelle, corrélations masquées.</div>
  </div>
</div>

<br>

<div style="background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:10px;padding:10px 16px;font-size:0.7em;color:#E8E7E1;">
⚠ Si une variable sensible comme <em>gender_Female</em> apparaît importante, c'est un signal pour <strong>auditer</strong> le modèle — pas pour essentialiser les personnes.
</div>

<div style="background:rgba(0,229,238,0.07);border:1px solid #00E5EE;border-radius:8px;padding:8px 14px;margin-top:8px;font-size:0.65em;color:#E8E7E1;">
<strong style="color:#00E5EE;">Dans le notebook →</strong> <code>tree_clf.feature_importances_</code> pour l'arbre · <code>pipeline['logistic_regression'].coef_[0]</code> pour la régression logistique (avec <code>StandardScaler</code> en amont pour comparer les coefficients).
</div>

---

### Interprétable par nature · 4

# Biplot ACP — une carte globale

```text
          CP2 ▲
              │    ● ● ○ ○ ○       ● = classe 0 (≤50K)
   ↑ flèche   │  ● ● ○ ○ ○         ○ = classe 1 (>50K)
   variable A │● ●● ○ ○ ○
              │  ● ○ ○ ○ ○
              └──────────────► CP1
                  → flèche pour variable B
```

<div style="display:flex;gap:14px;margin-top:6px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Points</strong> — un par individu
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Direction flèche</strong> — où la variable est élevée
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Longueur flèche</strong> — influence sur la projection 2D
  </div>
</div>

<br>

*L'ACP est excellente pour l'exploration. Mais la projection perd de l'information — jamais une explication finale.*

---

### Le compromis

# Performance vs. interprétabilité

<table>
<thead>
<tr><th>Modèle</th><th>Score F1</th><th>Interprétabilité</th></tr>
</thead>
<tbody>
<tr><td>Arbre de décision (profondeur 3)</td><td><strong>~0.75</strong></td><td>Règles lisibles</td></tr>
<tr><td>Régression logistique</td><td><strong>~0.78</strong></td><td>Coefficients directement inspectables</td></tr>
<tr><td>XGBoost</td><td><em>~0.81</em></td><td>Non inspectable directement</td></tr>
</tbody>
</table>

<br>

<div style="background:linear-gradient(135deg,rgba(255,103,69,0.12),rgba(118,87,255,0.08));border:1px solid #FF6745;border-radius:12px;padding:16px 22px;">
  <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:6px;">Le problème</div>
  <p style="font-size:0.78em;color:#E8E7E1;margin:0;line-height:1.5;">Meilleure performance → moins lisible. Pas d'arbre unique à inspecter. Pas de tableau de coefficients. Le raisonnement est <strong>distribué sur des centaines d'arbres</strong>.</p>
</div>

<div style="background:rgba(0,229,238,0.07);border:1px solid #00E5EE;border-radius:8px;padding:8px 14px;margin-top:8px;font-size:0.65em;color:#E8E7E1;">
<strong style="color:#00E5EE;">Dans le notebook →</strong> <code>xgb.XGBClassifier(eval_metric='logloss', random_state=42)</code> — 100 arbres par défaut, <code>max_depth=6</code>. C'est ce modèle qu'on va expliquer avec SHAP.
</div>

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->

### Partie 2

# SHAP
# à la rescousse

## Un langage unifié pour tout modèle

---

### L'idée centrale

# SHAP en une image mentale

<div style="background:#252540;border:1px solid #2E2E50;border-radius:12px;padding:18px 22px;margin-top:8px;">
  <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:10px;">La question à laquelle SHAP répond</div>
  <p style="font-size:0.88em;color:#E8E7E1;font-family:'Work Sans';font-weight:500;margin:0;line-height:1.5;">Pour cette prédiction, <strong>quelle est la contribution de chaque variable</strong>, par rapport à une ligne de base ?</p>
</div>

```text
prédiction de base (expected value)
      + contribution de la variable 1
      + contribution de la variable 2
      + contribution de la variable 3
      + ...
      = prédiction pour cette personne
```

*Voyez SHAP comme un **outil de décomposition de prédiction**. Il découpe une prédiction en parts additives lisibles.*

---

### La fondation

# Pourquoi SHAP est fiable

<div style="display:flex;gap:14px;margin-top:14px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #FF6745;border-radius:10px;padding:14px 18px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">Théorie des jeux</div>
    <div style="font-size:0.7em;color:#B0AFCC;line-height:1.55;">Basée sur les <strong>valeurs de Shapley</strong> — idée primée au Nobel pour répartir équitablement le gain d'une équipe.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #DDFF45;border-radius:10px;padding:14px 18px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">Propriétés équitables</div>
    <div style="font-size:0.7em;color:#B0AFCC;line-height:1.55;">Efficacité · Symétrie · Dummy · Additivité — ces <strong>quatre axiomes</strong> définissent SHAP de manière unique.</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #00E5EE;border-radius:10px;padding:14px 18px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:6px;">Agnostique au modèle</div>
    <div style="font-size:0.7em;color:#B0AFCC;line-height:1.55;">Fonctionne pour arbres, linéaires, réseaux de neurones — avec un <code>TreeExplainer</code> optimisé pour XGBoost.</div>
  </div>
</div>

---

### Le workflow

# Quatre étapes pour appliquer SHAP

<div style="display:flex;flex-direction:column;gap:10px;margin-top:8px;">
  <div style="display:flex;align-items:flex-start;gap:16px;">
    <div style="min-width:34px;height:34px;border-radius:50%;background:#FF6745;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.75em;color:white;flex-shrink:0;">1</div>
    <div>
      <div style="font-family:'Work Sans';font-weight:600;font-size:0.76em;color:#E8E7E1;">Entraîner votre modèle</div>
      <div style="font-size:0.68em;color:#B0AFCC;margin-top:2px;">N'importe quel modèle — mais les boosters d'arbres (XGBoost, LightGBM) vont avec un <code>TreeExplainer</code> rapide.</div>
    </div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:16px;">
    <div style="min-width:34px;height:34px;border-radius:50%;background:#DDFF45;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.75em;color:#1A1A33;flex-shrink:0;">2</div>
    <div>
      <div style="font-family:'Work Sans';font-weight:600;font-size:0.76em;color:#E8E7E1;">Créer l'explainer</div>
      <div style="font-size:0.66em;color:#B0AFCC;margin-top:2px;"><code>explainer = shap.TreeExplainer(xgb_model, data=X_train, model_output="probability")</code> · <code>data=X_train</code> sert de <em>jeu de fond</em> — c'est sur lui qu'on calcule la prédiction moyenne (= expected value).</div>
    </div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:16px;">
    <div style="min-width:34px;height:34px;border-radius:50%;background:#00E5EE;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.75em;color:#1A1A33;flex-shrink:0;">3</div>
    <div>
      <div style="font-family:'Work Sans';font-weight:600;font-size:0.76em;color:#E8E7E1;">Calculer les valeurs SHAP</div>
      <div style="font-size:0.68em;color:#B0AFCC;margin-top:2px;"><code>shap_values = explainer.shap_values(X_test)</code> → une matrice <em>(n_samples, n_features)</em></div>
    </div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:16px;">
    <div style="min-width:34px;height:34px;border-radius:50%;background:#7657FF;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.75em;color:white;flex-shrink:0;">4</div>
    <div>
      <div style="font-family:'Work Sans';font-weight:600;font-size:0.76em;color:#E8E7E1;">Visualiser & interpréter</div>
      <div style="font-size:0.68em;color:#B0AFCC;margin-top:2px;">Bar · beeswarm · dependence · force — nous allons lire les quatre.</div>
    </div>
  </div>
</div>

---

### Structure de sortie

# La matrice des valeurs SHAP

```text
                variable 1   variable 2   variable 3   ...
personne 1        +0.12        -0.03        +0.01
personne 2        -0.08        +0.10         0.00
personne 3        +0.02        -0.01        -0.05
```

<div style="display:flex;gap:14px;margin-top:8px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #FF6745;border-radius:8px;padding:10px 14px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:4px;">Lignes</div>
    <div style="font-size:0.7em;color:#B0AFCC;">Une par individu du test set</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #DDFF45;border-radius:8px;padding:10px 14px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:4px;">Colonnes</div>
    <div style="font-size:0.7em;color:#B0AFCC;">Une par variable</div>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-top:3px solid #00E5EE;border-radius:8px;padding:10px 14px;">
    <div style="font-size:0.5em;color:#6B6A8A;text-transform:uppercase;letter-spacing:0.12em;font-family:'Work Sans';font-weight:600;margin-bottom:4px;">Signe</div>
    <div style="font-size:0.7em;color:#B0AFCC;"><strong>+</strong> pousse vers le haut · <strong>−</strong> vers le bas</div>
  </div>
</div>

<br>

*Proche de zéro → la variable a très peu influencé cette prédiction.*

---

### La ligne de base

# Expected value = prédiction moyenne

<div style="background:linear-gradient(135deg,rgba(255,103,69,0.12),rgba(118,87,255,0.08));border:1px solid #FF6745;border-radius:12px;padding:14px 20px;margin-top:4px;">
  <p style="font-family:'Work Sans';font-weight:500;font-size:0.82em;color:#E8E7E1;margin:0;line-height:1.5;">
  L'<strong>expected value</strong> est simplement la <em>prédiction moyenne du modèle</em> sur les données de fond — <code>E[f(X)] = np.mean(model.predict(X_background))</code>.
  </p>
</div>

<div style="display:flex;gap:16px;margin-top:12px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:12px 16px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.14em;color:#DDFF45;margin-bottom:8px;">Exemple Census · binaire</div>
    <pre style="background:none;border:none;padding:0;margin:0;font-size:0.68em;color:#E8E7E1;line-height:1.55;">model.predict_proba(X_train)[:,1].mean()
<span style="color:#FF6745;">≈ 0.24</span>  ← expected_value
(~24% des gens gagnent >50K dans X_train)</pre>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:12px 16px;font-size:0.7em;color:#B0AFCC;line-height:1.6;">
    <strong>Lecture</strong> — avant de voir les variables d'<em>une</em> personne, le modèle partirait de <strong>0.24</strong>. Les SHAP values mesurent l'écart entre cette moyenne et la prédiction <em>réelle</em> de cette personne.
  </div>
</div>

<div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 16px;margin-top:10px;font-size:0.72em;color:#E8E7E1;">
<code>expected_value + Σ shap_values[personne] = model.predict_proba(personne)</code>
</div>

---

### Vue globale · 1

# Le bar plot — ce qui compte en moyenne

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
  <text x="490" y="164" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="end">|SHAP| moyenne →</text>
</svg>

<div style="display:flex;gap:14px;margin-top:2px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.66em;color:#B0AFCC;">
    Chaque barre = <strong>|SHAP| moyenne</strong> — influence sans direction
  </div>
  <div style="flex:1;background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:8px;padding:8px 12px;font-size:0.66em;color:#E8E7E1;">
    ⚠ Classe les variables — <strong>sans</strong> dire si elles poussent vers ≤50K ou >50K
  </div>
</div>

---

### Vue globale · 2

# Le beeswarm — comment et pour qui

<svg width="100%" height="200" viewBox="0 0 600 200" style="margin-top:4px;">
  <defs>
    <linearGradient id="cgrad" x1="0" x2="1">
      <stop offset="0" stop-color="#00E5EE"/>
      <stop offset="1" stop-color="#FF6745"/>
    </linearGradient>
  </defs>
  <line x1="320" y1="10" x2="320" y2="170" stroke="#FF6745" stroke-dasharray="3,3" stroke-width="1" opacity="0.6"/>
  <text x="120" y="186" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="middle">pousse ≤50K ←</text>
  <text x="520" y="186" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="middle">→ pousse >50K</text>
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
  <text x="460" y="-2" font-family="Inter" font-size="8" fill="#6B6A8A">valeur de la variable</text>
  <text x="460" y="18" font-family="Inter" font-size="8" fill="#00E5EE">basse</text>
  <text x="600" y="18" font-family="Inter" font-size="8" fill="#FF6745" text-anchor="end">haute</text>
</svg>

<div style="display:flex;gap:12px;margin-top:-4px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#B0AFCC;"><strong>Chaque point</strong> = un individu</div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#B0AFCC;"><strong>Position X</strong> = valeur SHAP</div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#B0AFCC;"><strong>Couleur</strong> = basse (cyan) / haute (orange)</div>
</div>

*Fortes valeurs de capital-gain → >50K. gender_Female pousse légèrement vers ≤50K — **signal à auditer**.*

---

### Vue locale · 1

# Le dependence plot — comment une variable se comporte

```text
valeur SHAP
pour age       • •
              • •  • •      couleur = valeur d'une autre variable
     0  -----------------
              • •   •
              • •

               basse  →  haute
                 valeur de age
```

<div style="display:flex;gap:14px;margin-top:8px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Tendance ascendante</strong> — une valeur plus élevée fait monter la prédiction
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Plat</strong> — la variable pèse peu sur cet intervalle
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Motif de couleur</strong> — révèle une <em>interaction</em> avec une autre variable
  </div>
</div>

---

### Vue locale · 2

# Le force plot — une décision précise

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

  <text x="130" y="108" font-family="Inter" font-size="9" fill="#22c55e" text-anchor="middle">pousse ≤50K</text>
  <text x="475" y="108" font-family="Inter" font-size="9" fill="#FF6745" text-anchor="middle">pousse >50K</text>

  <text x="310" y="140" font-family="Work Sans" font-size="10" fill="#B0AFCC" text-anchor="middle" font-style="italic">0.24 + (−0.06) + (−0.02) + 0.09 + 0.18 + 0.40 = 0.83</text>
  <text x="310" y="156" font-family="Inter" font-size="9" fill="#6B6A8A" text-anchor="middle">expected_value + Σ SHAP = prédiction finale</text>
</svg>

<div style="display:flex;gap:12px;margin-top:2px;">
  <div style="flex:1;background:rgba(239,68,68,0.1);border:1px solid #FF6745;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#E8E7E1;"><strong style="color:#FF6745;">Blocs rouges</strong> → poussent vers le haut</div>
  <div style="flex:1;background:rgba(34,197,94,0.1);border:1px solid #22c55e;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#E8E7E1;"><strong style="color:#22c55e;">Blocs verts</strong> → poussent vers le bas</div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:8px 12px;font-size:0.64em;color:#B0AFCC;"><strong>Largeur</strong> = force de la contribution</div>
</div>

*Le force plot dit **pourquoi cette personne précise** a cette prédiction.*

---

### Connaître les limites

# SHAP est puissant — mais pas magique

| Précaution | Ce que cela veut dire |
|------------|-----------------------|
| **Variables corrélées** | Le crédit peut se répartir entre jumelles de manière floue |
| **Coût de calcul** | `TreeExplainer` est rapide — d'autres explainers peuvent être lents |
| **Pas la causalité** | Une forte valeur SHAP est une <em>association</em>, pas une <strong>cause</strong> |
| **Instabilité locale** | Des individus similaires peuvent avoir des explications visiblement différentes |
| **Choix de l'explainer** | Différents explainers se comportent différemment selon les modèles |

<br>

> Utilisez SHAP comme un <strong>cadre structuré</strong> pour comprendre le modèle — pas comme une vérité absolue.

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->

### Partie 3

# SHAP sur texte
# et multi-classes

## Classification d'émotions à 6 classes

---

### Ce qui change

# Du tabulaire au texte, de 2 à 6 classes

<table>
<thead>
<tr><th>Aspect</th><th>Partie 1 (binaire)</th><th>Partie 3 (multi-classes texte)</th></tr>
</thead>
<tbody>
<tr><td>Variables</td><td>Colonnes tabulaires</td><td><em>Mots / tokens</em></td></tr>
<tr><td>Tâche</td><td>Binaire</td><td><em>6 classes</em> (tristesse · joie · peur · colère · surprise · dégoût)</td></tr>
<tr><td>Espace SHAP</td><td>Probabilités</td><td><em>Logits</em> (scores bruts)</td></tr>
<tr><td>Unité d'explication</td><td>Une par prédiction</td><td><em>Une par classe, par prédiction</em></td></tr>
</tbody>
</table>

<br>

<div style="background:rgba(221,255,69,0.07);border:1px solid #DDFF45;border-radius:10px;padding:10px 16px;font-size:0.7em;color:#E8E7E1;">
✓ Même workflow — <code>TreeExplainer</code>, <code>shap_values</code>, force plots. Mais on ralentit sur deux concepts nouveaux.
</div>

<div style="background:rgba(0,229,238,0.07);border:1px solid #00E5EE;border-radius:8px;padding:8px 14px;margin-top:8px;font-size:0.64em;color:#E8E7E1;">
<strong style="color:#00E5EE;">Dans le notebook →</strong> <code>xgb.XGBClassifier(objective='multi:softprob', num_class=6, eval_metric='mlogloss')</code> — 6 sorties softmax, une par émotion.
</div>

---

### Nouveau concept · 1

# Logits vs. probabilités

```text
scores bruts (logits)        ──softmax──▶   probabilités sommant à 1

tristesse   3.1                             tristesse   0.72
joie        0.7                             joie        0.08
peur        1.0                             peur        0.10
colère      0.2                             colère      0.05
surprise   -0.3                             surprise    0.03
dégoût     -0.6                             dégoût      0.02
```

$$
\text{probabilité}_k = \frac{e^{\text{logit}_k}}{\sum_{j} e^{\text{logit}_j}}
$$

*En multi-classes, `TreeExplainer` explique les **scores bruts** — les probabilités viennent **après** la softmax.*

---

### Nouveau concept · 2

# Une explication par classe

<div style="background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 20px;margin-top:4px;">
<pre style="background:none;border:none;padding:0;margin:0;font-size:0.7em;color:#E8E7E1;">
shap_values
│
├── classe 0: tristesse  → array (n_samples, n_features)
├── classe 1: joie       → array (n_samples, n_features)
├── classe 2: peur       → array (n_samples, n_features)
├── classe 3: colère     → array (n_samples, n_features)
├── classe 4: surprise   → array (n_samples, n_features)
└── classe 5: dégoût     → array (n_samples, n_features)
</pre>
</div>

<div style="display:flex;gap:14px;margin-top:10px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    Format liste → <code>shap_values[3][5]</code> pour la personne 5, classe colère
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    Array 3-D → <code>shap_values[5, :, 3]</code> équivalent
  </div>
</div>

---

### Lire les force plots multi-classes

# Quels mots déclenchent chaque émotion ?

<div style="display:flex;gap:16px;margin-top:10px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #7657FF;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#7657FF;margin-bottom:8px;">Tristesse · obs #4</div>
    <p style="font-size:0.7em;color:#B0AFCC;margin:0;line-height:1.6;">Des mots comme <strong>horrible</strong>, <strong>ingrat</strong> poussent le score tristesse vers le haut. D'autres tirent doucement de l'autre côté.</p>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #FF6745;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:8px;">Colère · obs #5</div>
    <p style="font-size:0.7em;color:#B0AFCC;margin:0;line-height:1.6;">Un seul mot fort (<em>profane</em>) domine. Des mots apaisants comme <strong>sentir</strong> apparaissent de l'autre côté.</p>
  </div>
</div>

<br>

*L'important n'est pas juste quels mots apparaissent — c'est **quelle classe ils soutiennent** dans cette explication.*

---

<!-- _class: transition -->
<!-- _paginate: false -->
<!-- _header: '' -->

### Dernière Partie

# À votre tour maintenant

## Appliquez le workflow SHAP complet sur vos données

---

### Défi ouvert

# Votre workflow SHAP en 5 étapes

<div style="display:flex;flex-direction:column;gap:8px;margin-top:8px;">
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#FF6745;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:white;flex-shrink:0;">1</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">Charger & explorer</div><div style="font-size:0.66em;color:#B0AFCC;">Valeurs manquantes, équilibre cible, colonnes sensibles.</div></div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#DDFF45;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:#1A1A33;flex-shrink:0;">2</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">Préparer & entraîner</div><div style="font-size:0.66em;color:#B0AFCC;">Encoder, splitter, entraîner un <code>XGBClassifier</code>, afficher <code>classification_report</code>.</div></div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#00E5EE;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:#1A1A33;flex-shrink:0;">3</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">SHAP global — bar + beeswarm</div><div style="font-size:0.66em;color:#B0AFCC;">Top 3 variables · direction · vérification métier.</div></div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#7657FF;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:white;flex-shrink:0;">4</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">SHAP local — force plots</div><div style="font-size:0.66em;color:#B0AFCC;">Un cas clairement positif · un négatif · un incertain.</div></div>
  </div>
  <div style="display:flex;align-items:flex-start;gap:14px;">
    <div style="min-width:30px;height:30px;border-radius:50%;background:#C445FF;display:flex;align-items:center;justify-content:center;font-family:'Work Sans';font-weight:700;font-size:0.7em;color:white;flex-shrink:0;">5</div>
    <div><div style="font-family:'Work Sans';font-weight:600;font-size:0.72em;color:#E8E7E1;">Contrôle équité / risque</div><div style="font-size:0.66em;color:#B0AFCC;">Attributs sensibles · proxies · validation supplémentaire ?</div></div>
  </div>
</div>

---

### Synthèse

# À retenir

<div style="background:linear-gradient(135deg,rgba(255,103,69,0.12),rgba(118,87,255,0.08));border:1px solid #FF6745;border-radius:12px;padding:20px 24px;margin-top:10px;">
  <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:12px;">À retenir</div>
  <ul style="margin:0;padding-left:1.2em;color:#E8E7E1;font-size:0.75em;line-height:1.9;">
    <li>Haute précision ≠ fiable. Toujours demander : <strong>pourquoi cette prédiction ?</strong></li>
    <li>Outils classiques (arbre, coefficients, ACP) sont <em>intuitifs</em> mais <strong>limités</strong></li>
    <li>SHAP offre un <strong>langage unifié</strong> : décomposition = ligne de base + contributions</li>
    <li>Deux vues : <strong>globale</strong> (bar, beeswarm) et <strong>locale</strong> (force)</li>
    <li>Multi-classes ? Une explication <em>par classe</em> — en espace logit</li>
    <li>SHAP ≠ causalité. Il révèle des <strong>motifs appris</strong>, pas la vérité du monde</li>
  </ul>
</div>

---

### Quiz · Vérifiez votre compréhension

# Que signifie une valeur SHAP positive ?

<div style="display:flex;flex-direction:column;gap:10px;margin-top:12px;">
  <div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 18px;font-size:0.72em;color:#B0AFCC;">A — La variable est globalement importante sur tout le jeu de données</div>
  <div style="background:rgba(221,255,69,0.1);border:1px solid #DDFF45;border-radius:8px;padding:12px 18px;font-size:0.72em;color:#DDFF45;display:flex;justify-content:space-between;align-items:center;">
    <span>B — Cette variable a poussé cette prédiction <em>au-dessus</em> de la ligne de base ✓</span>
  </div>
  <div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 18px;font-size:0.72em;color:#B0AFCC;">C — La variable a causé le résultat dans le monde réel</div>
  <div style="background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:12px 18px;font-size:0.72em;color:#B0AFCC;">D — La prédiction est certainement correcte</div>
</div>

<br>

*Les valeurs SHAP sont **locales** et **associatives** — une prédiction, une personne, une contribution.*

---

### Pour aller plus loin

# Ressources recommandées

<div style="display:flex;gap:18px;margin-top:10px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#00E5EE;margin-bottom:8px;">Livres</div>
    <ul style="margin:0;padding-left:1em;font-size:0.68em;color:#B0AFCC;line-height:1.7;">
      <li><em>Interpretable ML</em> — C. Molnar</li>
      <li><em>Hands-On ML</em> — A. Géron (Ch. 6 + bonus)</li>
    </ul>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#DDFF45;margin-bottom:8px;">Articles</div>
    <ul style="margin:0;padding-left:1em;font-size:0.68em;color:#B0AFCC;line-height:1.7;">
      <li>Lundberg & Lee (2017) — <em>A Unified Approach to Interpreting Model Predictions</em></li>
      <li>Ribeiro et al. (2016) — <em>LIME: Why Should I Trust You?</em></li>
    </ul>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:10px;padding:14px 18px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.5em;text-transform:uppercase;letter-spacing:0.18em;color:#FF6745;margin-bottom:8px;">Librairies</div>
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

### Masterclass terminée

# Merci !

## Des questions ? Échangeons.

<br>

<div style="display:flex;gap:6px;justify-content:center;margin-top:16px;">
  <div style="width:40px;height:4px;border-radius:2px;background:#FF6745;"></div>
  <div style="width:40px;height:4px;border-radius:2px;background:#DDFF45;"></div>
  <div style="width:40px;height:4px;border-radius:2px;background:#00E5EE;"></div>
  <div style="width:40px;height:4px;border-radius:2px;background:#7657FF;"></div>
</div>
