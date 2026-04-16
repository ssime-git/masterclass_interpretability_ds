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

<div style="display:flex;gap:20px;margin-top:12px;align-items:stretch;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #FF6745;border-radius:10px;padding:16px 20px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.55em;text-transform:uppercase;letter-spacing:0.12em;color:#FF6745;margin-bottom:8px;">L'histoire classique</div>
    <p style="font-size:0.78em;color:#B0AFCC;line-height:1.55;margin:0;">Un classifieur loup vs. husky atteint <strong>98% de précision</strong>. Un bon modèle ?</p>
    <p style="font-size:0.78em;color:#E8E7E1;line-height:1.55;margin-top:10px;">En ouvrant la boîte noire, on découvre qu'il regarde <em>la neige en arrière-plan</em>, pas l'animal.</p>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-left:3px solid #DDFF45;border-radius:10px;padding:16px 20px;">
    <div style="font-family:'Work Sans';font-weight:700;font-size:0.55em;text-transform:uppercase;letter-spacing:0.12em;color:#DDFF45;margin-bottom:8px;">La leçon</div>
    <p style="font-size:0.78em;color:#B0AFCC;line-height:1.55;margin:0;">Une performance élevée <strong>ne suffit pas</strong>. Il faut aussi savoir <em>pourquoi</em> un modèle décide.</p>
    <p style="font-size:0.78em;color:#E8E7E1;line-height:1.55;margin-top:10px;">L'interprétabilité est le pont entre la performance et la <strong>confiance</strong>.</p>
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

<br>

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

<div style="background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:10px;padding:12px 18px;font-size:0.72em;color:#E8E7E1;">
⚠ Si une variable sensible comme <em>gender_Female</em> apparaît importante, c'est un signal pour <strong>auditer</strong> le modèle — pas pour essentialiser les personnes.
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
  <p style="font-size:0.8em;color:#E8E7E1;margin:0;line-height:1.5;">Meilleure performance → moins lisible. Pas d'arbre unique à inspecter. Pas de tableau de coefficients. Le raisonnement est <strong>distribué sur des centaines d'arbres</strong>.</p>
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
      <div style="font-size:0.68em;color:#B0AFCC;margin-top:2px;"><code>explainer = shap.TreeExplainer(model, data=X_train, model_output="probability")</code></div>
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

# Qu'est-ce que l'expected value ?

<div style="background:#252540;border:1px solid #2E2E50;border-radius:12px;padding:16px 22px;margin-top:6px;">
<pre style="background:none;border:none;padding:0;margin:0;font-size:0.75em;color:#E8E7E1;">
données de fond
      ↓
le modèle prédit plusieurs probabilités
      ↓
ligne de base moyenne = <span style="color:#FF6745;font-weight:600;">expected_value</span>
</pre>
</div>

<div style="margin-top:12px;font-size:0.74em;color:#B0AFCC;line-height:1.7;">

```text
expected_value + Σ shap_values[personne] = prédiction[personne]
```

</div>

<div style="display:flex;gap:14px;margin-top:10px;">
  <div style="flex:1;background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#E8E7E1;">
    <strong>Pas</strong> la probabilité d'une personne
  </div>
  <div style="flex:1;background:rgba(221,255,69,0.08);border:1px solid #DDFF45;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#E8E7E1;">
    <em>Point de départ commun</em> à toutes les explications
  </div>
</div>

---

### Vue globale · 1

# Le bar plot — ce qui compte en moyenne

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
    Chaque barre = <strong>|SHAP| moyenne</strong>
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    Barre plus longue = <em>influence moyenne plus forte</em>
  </div>
  <div style="flex:1;background:rgba(255,103,69,0.08);border:1px solid #FF6745;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#E8E7E1;">
    ⚠ Classe les variables — <strong>sans</strong> montrer la direction
  </div>
</div>

---

### Vue globale · 2

# Le beeswarm — comment et pour qui

```text
                    pousse vers ≤50K   |   pousse vers >50K

capital-gain        • • • •            |   • • ● ● ● ● ● ●
marital_Married     • • • •            |   ● ● ● ● ● ●
age                 • • •              |   ● ● ●
hours-per-week      • •                |   ● ● ●
```

<div style="display:flex;gap:14px;margin-top:6px;">
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Chaque point</strong> — un individu
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Position horizontale</strong> — valeur SHAP
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.68em;color:#B0AFCC;">
    <strong>Couleur</strong> — valeur basse (bleu) vs haute (rouge)
  </div>
</div>

<br>

*Les fortes valeurs de capital-gain poussent nettement vers >50K. gender_Female pousse légèrement vers ≤50K — un signal à auditer.*

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

```text
base value                                            f(x)
   ▼                                                   ▼
[ 0.24 ] ←← blocs bleus ←←   ←← → →   →→ blocs rouges →→ [ 0.83 ]

        poussent vers ≤50K              poussent vers >50K
```

<div style="display:flex;gap:14px;margin-top:8px;">
  <div style="flex:1;background:rgba(239,68,68,0.1);border:1px solid #ef4444;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#E8E7E1;">
    🟥 <strong>Blocs rouges</strong> poussent la prédiction vers le haut
  </div>
  <div style="flex:1;background:rgba(34,197,94,0.1);border:1px solid #22c55e;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#E8E7E1;">
    🟦 <strong>Blocs bleus</strong> poussent la prédiction vers le bas
  </div>
  <div style="flex:1;background:#252540;border:1px solid #2E2E50;border-radius:8px;padding:10px 14px;font-size:0.7em;color:#B0AFCC;">
    <strong>Largeur</strong> = force de la contribution
  </div>
</div>

<br>

*Les vues globales disent ce qui compte en moyenne. Le force plot dit **pourquoi cette personne** a cette prédiction.*

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

<div style="background:rgba(221,255,69,0.07);border:1px solid #DDFF45;border-radius:10px;padding:12px 18px;font-size:0.72em;color:#E8E7E1;">
✓ Même workflow — <code>TreeExplainer</code>, <code>shap_values</code>, force plots. Mais on ralentit sur deux concepts nouveaux.
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
