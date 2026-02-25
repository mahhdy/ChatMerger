---
source: "c:\Users\b0583931\GitHub\ChatMerger\output\ethics_test_20260225_133235\Ethics_01_converted.json"
total_conversations: 1
total_segments_merged: 5
manual_review_needed: 1
models: [claude-opus-4-6]
generated_by: chat-merger
---

# Table of Contents

- [Chat Merger Report](#chat-merger-report)
  - [Conversation 1](#conversation-1)
    - [Request](#request)
- [System Instruction](#system-instruction)
- [AGENT SYSTEM INSTRUCTION](#agent-system-instruction)
  - [Agent Role](#agent-role)
  - [1. Text Direction (RTL/LTR)](#1-text-direction-rtlltr)
  - [2. TikZ / \foreach Rules](#2-tikz--foreach-rules)
  - [3. Spacing & ZWNJ](#3-spacing--zwnj)
  - [4. Numbers](#4-numbers)
  - [5. Fonts & Language](#5-fonts--language)
  - [6. Persian Punctuation](#6-persian-punctuation)
  - [7. Math](#7-math)
  - [8. Labels & References](#8-labels--references)
  - [9. Bibliography & Footnotes](#9-bibliography--footnotes)
  - [10. Packages & Conflicts](#10-packages--conflicts)
  - [11. Output / Bookmarks](#11-output--bookmarks)
  - [12. tcolorbox (RTL)](#12-tcolorbox-rtl)
  - [13. Title Formatting (titlesec)](#13-title-formatting-titlesec)
  - [14. **Global Page‑Layout Integrity (NEW)**](#14-global-pagelayout-integrity-new)
    - [14.1 Overfull floats/tables](#141-overfull-floatstables)
    - [14.2 Negative indents / misalignment](#142-negative-indents--misalignment)
    - [14.3 Widow/Orphan prevention for section/subsection titles](#143-widoworphan-prevention-for-sectionsubsection-titles)
    - [14.4 Vertical spacing consistency](#144-vertical-spacing-consistency)
    - [14.5 Float Placement Quality](#145-float-placement-quality)
  - [15. Response Format](#15-response-format)
    - [Response](#response)
- [ساختار و طرح پیشنهادی مقاله](#ساختار-و-طرح-پیشنهادی-مقاله)
  - [فهرست بخش‌ها و محتوا](#فهرست-بخشها-و-محتوا)
  - [عناصر بصری (TikZ)](#عناصر-بصری-tikz)
  - [خلاصهٔ ویژگی‌های سند](#خلاصهٔ-ویژگیهای-سند)
    - [تغییرات و رعایت قواعد](#تغییرات-و-رعایت-قواعد)
  - [خلاصهٔ کلّ بخش‌های تکمیلی](#خلاصهٔ-کلّ-بخشهای-تکمیلی)
  - [راهنمای ترکیب بخش‌ها در سند نهایی](#راهنمای-ترکیب-بخشها-در-سند-نهایی)
    - [Overlap Report](#overlap-report)

---


# Chat Merger Report

| Metric | Value |
|--------|-------|
| Conversations | 1 |
| Total segments merged | 5 |
| Overlaps detected | 1 |
| Blocks needing review | 1 |

---

## Conversation 1
*(5 segments merged)*
*Model: claude-opus-4-6*

<!-- 🔧 MANUAL INTERVENTION NEEDED -->
> **Review needed:** Overlap detection flagged some areas

### Request

مقاله Academic در مورد اخلاق ...

آیا می‌توانی یک مقاله‌ی جامع و مروری در خصوص اخلاق و هستی شناسی-معرفت شناسی آن بنویسی؟

با استفاده از منابع آکادمیک و تخصصی و با فرمت لاتکس دانشگاهی با نمودارها و نقشه‌های مفهومی و سیر تاریخی - روندی و گروه‌بندی مکاتب و نحله‌ها و اندیشمندان محوری

چه نقاط کانونی و متغیری در این میان وجود داشت!

چه جدال‌هایی زنده و داغ و پویا هستند؟

چه اجماع‌هایی به دست آمده است و راهنمای عمل است؟

چه موضوعات وژوهشی‌ای وجود دارند و چه افرادی در آن ها شاخص هستند؟

یک مرور عمیق و دقیق و چند وجهی چه دید کلی اجمالی ولی عمیق و همراه با فهم از نقاط تفاوت و اختلاف و تمرکز به دست دهد.

نتایج و آثار هر یک و هر پاسخ و هر انتخاب چالشی در زیست جمعی و جنبه‌های مختلف آن چیست؟


use this / a variation of this as you may need, for the desing and editoral needs. 
Prepare the structure and propose the content
have in mind all required elements to produce a healty not faulty xpersian bidi latex document. (i will provide you one as system prompt)
```latex
\documentclass[12pt,a4paper]{article}

% ─── بسته‌های پایه ───────────────────────────────────────────
\usepackage{fontspec}
\usepackage{geometry}
\usepackage{xcolor}
\usepackage{colortbl}
\usepackage{booktabs}
\usepackage{longtable}
\usepackage{array}
\usepackage{tabularx}
\usepackage{multirow}
\usepackage{makecell}
\usepackage{tikz}
\usepackage{pgfplots}
\usepackage{tcolorbox}
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage{titletoc}
\usepackage{hyperref}
\usepackage{enumitem}
% \usepackage{microtype} % FIXED: حذف شد — سازگاری ناقص با XeLaTeX
\usepackage{graphicx}
\usepackage{wrapfig}
\usepackage{multicol}
\usepackage{setspace}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{footnote}
\usepackage{endnotes}
\usepackage{etoolbox}
\usepackage{calc}
\usepackage{varwidth}

% ─── تنظیمات TikZ ─────────────────────────────────────────────
\usetikzlibrary{
  arrows, arrows.meta, positioning, shapes, shapes.geometric,
  shapes.multipart, shadows, decorations, decorations.pathreplacing,
  decorations.markings, patterns, backgrounds, calc, fit,
  mindmap, trees, matrix, chains, scopes,
  fadings, through, plotmarks, intersections
}
\pgfplotsset{compat=1.18}
\tcbuselibrary{skins, breakable}

% ─── صفحه‌آرایی ───────────────────────────────────────────────
\geometry{
  a4paper,
  top=2.8cm, bottom=2.8cm,
  right=3.5cm, left=3cm,
  headheight=1.5cm,
  headsep=0.5cm,
  footskip=1.2cm
}

% فونت‌ها بعد از xepersian تعریف می‌شوند

% ─── پالت رنگی ────────────────────────────────────────────────
\definecolor{PrimaryDeep}{HTML}{1A237E}    % آبی عمیق
\definecolor{PrimaryMid}{HTML}{283593}     % آبی متوسط
\definecolor{PrimaryLight}{HTML}{3949AB}   % آبی روشن
\definecolor{AccentGold}{HTML}{F9A825}     % طلایی
\definecolor{AccentAmber}{HTML}{FF8F00}    % کهربایی
\definecolor{AccentTeal}{HTML}{00695C}     % فیروزه‌ای
\definecolor{AccentRed}{HTML}{B71C1C}      % قرمز عمیق
\definecolor{AccentGreen}{HTML}{1B5E20}    % سبز عمیق
\definecolor{AccentPurple}{HTML}{4A148C}   % بنفش
\definecolor{NeutralLight}{HTML}{ECEFF1}   % خاکستری بسیار روشن
\definecolor{NeutralMid}{HTML}{B0BEC5}     % خاکستری روشن
\definecolor{NeutralDark}{HTML}{455A64}    % خاکستری تیره
\definecolor{TextMain}{HTML}{212121}       % متن اصلی
\definecolor{TextSecond}{HTML}{424242}     % متن ثانوی
\definecolor{BgWarm}{HTML}{FFF8E1}         % پس‌زمینه گرم
\definecolor{BgCool}{HTML}{E8EAF6}         % پس‌زمینه سرد
\definecolor{BgTeal}{HTML}{E0F2F1}         % پس‌زمینه فیروزه

% ─── رنگ‌های دوره‌ها ───────────────────────────────────────────
\definecolor{EraAncient}{HTML}{4E342E}     % باستان: قهوه‌ای
\definecolor{EraMedieval}{HTML}{37474F}    % قرون وسطی: خاکستری تیره
\definecolor{EraEarlyMod}{HTML}{1565C0}   % مدرن اولیه: آبی
\definecolor{EraModern}{HTML}{2E7D32}      % مدرن: سبز
\definecolor{EraContemp}{HTML}{6A1B9A}     % معاصر: بنفش
\definecolor{EraPostmod}{HTML}{AD1457}     % پسامدرن: صورتی تیره

% ─── جعبه‌های محتوایی ─────────────────────────────────────────
\tcbset{
  mybox/.style={
    enhanced, breakable,
    colback=BgCool, colframe=PrimaryMid,
    fonttitle=\bfseries\large,
    attach boxed title to top right={yshift=-2mm, xshift=-3mm},
    boxed title style={colback=PrimaryMid, colframe=PrimaryDeep},
    top=4mm, bottom=4mm,
    before skip=12pt, after skip=12pt,
  },
  defbox/.style={
    enhanced, breakable,
    colback=BgWarm, colframe=AccentGold,
    fonttitle=\bfseries,
    left=4mm, right=4mm,
    borderline west={3pt}{0pt}{AccentAmber},
    sharp corners,
    before skip=12pt, after skip=12pt,
  },
  wavebox/.style={
    enhanced, breakable,
    colback=BgTeal, colframe=AccentTeal,
    fonttitle=\bfseries,
    rounded corners,
    drop shadow,
    before skip=12pt, after skip=12pt,
  },
  quotebox/.style={
    enhanced, breakable,
    colback=NeutralLight, colframe=NeutralDark,
    fontupper=\itshape,
    left=8mm,
    borderline west={4pt}{0pt}{NeutralMid},
    sharp corners=south,
    before skip=12pt, after skip=12pt,
  },
  enemybox/.style={
    enhanced, breakable,
    colback=red!5, colframe=AccentRed,
    fonttitle=\bfseries,
    borderline west={3pt}{0pt}{AccentRed},
    before skip=12pt, after skip=12pt,
  },
}

% ─── سربرگ و پابرگ ────────────────────────────────────────────
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.6pt}
\renewcommand{\footrulewidth}{0.3pt}
\fancyhead[R]{\small\color{PrimaryMid}\rightmark}
\fancyhead[L]{\small\color{NeutralDark}آزادی به مثابه... \textbar{} مهدی سالم}
\fancyfoot[C]{\small\thepage}
\fancyfoot[R]{\small\color{NeutralDark}\leftmark}

% ─── عنوان‌بندی بخش‌ها ────────────────────────────────────────
\titleformat{\section}[block]
  {\Large\bfseries\color{PrimaryDeep}}
  {\thesection}{1em}{}
  [{\color{AccentGold}\titlerule[1.5pt]}]

\titleformat{\subsection}[block]
  {\large\bfseries\color{PrimaryMid}}
  {\thesubsection}{0.8em}{}
  [{\color{NeutralMid}\titlerule[0.6pt]}]

\titleformat{\subsubsection}[runin]
  {\normalsize\bfseries\color{AccentTeal}}
  {\thesubsubsection}{0.6em}{}[\ —\ ]

% ─── فاصله‌گذاری ──────────────────────────────────────────────
\titlespacing*{\section}{0pt}{18pt}{10pt}
\titlespacing*{\subsection}{0pt}{14pt}{6pt}
\setlength{\parindent}{1em}
\setlength{\parskip}{0.4em}
\onehalfspacing

% ─── hyperref ─────────────────────────────────────────────────
\hypersetup{
  colorlinks  = true,
  linkcolor   = PrimaryMid,
  citecolor   = AccentTeal,
  urlcolor    = AccentAmber,
  pdftitle    = {آزادی به مثابه...},
  pdfauthor   = {مهدی سالم},
  pdfkeywords = {آزادی، فلسفه‌ی سیاسی، لیبرالیسم، جمهوری‌خواهی، فرانکفورت},
  pdfsubject  = {فلسفه‌ی سیاسی تطبیقی},
  bookmarks   = true,
  pdfpagemode = UseOutlines,
  pdfencoding = unicode, % FIXED: برای نمایش درست بوکمارک‌های فارسی
}

\usepackage{xepersian} % FIXED: xepersian باید آخرین بسته باشد

% ─── فونت‌ها (باید بعد از xepersian باشند) ────────────────────────
\settextfont{Vazirmatn}
\setlatintextfont[Scale=0.95]{Linux Libertine}
\setdigitfont[Scale=0.95]{Vazirmatn}


% ─── دستورات کمکی ─────────────────────────────────────────────
\newcommand{\concept}[1]{\textbf{\color{PrimaryMid}#1}}
\newcommand{\thinker}[1]{\textit{\color{AccentTeal}#1}}
\newcommand{\era}[1]{\textbf{\color{AccentAmber}#1}}
\newcommand{\enemy}[1]{\textbf{\color{AccentRed}#1}}
\newcommand{\lat}[1]{\lr{#1}}
\newcommand{\src}[1]{\textsuperscript{\scriptsize\color{NeutralDark}[#1]}}

% ─── فرمت پانوشت ──────────────────────────────────────────────
\renewcommand{\thefootnote}{\arabic{footnote}}
```

# System Instruction
```markdown
# AGENT SYSTEM INSTRUCTION
## Agent Role

You are a senior XeLaTeX Persian typesetting auditor/fixer.

Given a LaTeX block, return a corrected version following ALL rules below.

## 1. Text Direction (RTL/LTR)

- TikZ always LTR → wrap Persian text inside nodes/labels/etc. with `\rl{}`.
- Do NOT wrap Latin numbers or TikZ coordinates.
- algorithm/lstlisting/verbatim/minted → LTR; Persian comments inside them use `\rl{}`.
- Tables with Persian content must be RTL; column order mirrors LTR (rightmost = first).
- Persian captions/headings inside floats → wrap in `\rl{}`.
- No nested `\rl{}`.

## 2. TikZ / \foreach Rules

- Complex `\foreach` (shifts, current page.*) → rewrite as explicit nodes.
- Multiline node text: end each line with `%`.
- Last list item in `\foreach` must end with `%`.
- Do not use PGF reserved words (`in`, `out`, `shift`, etc.) as style names.
- Nodes containing `\\` must declare `align=center/left/right`.
- Every coordinate path must start with `\draw`/`\fill`.

## 3. Spacing & ZWNJ

- Persian prefixes/suffixes require ZWNJ.
- Ezafe needs no ZWNJ except mediating “ی”.
- Persian number + unit → space. Latin number + unit → `~`.

## 4. Numbers

- Persian digits in Persian text; Latin digits allowed in math.
- TikZ coordinates always Latin.
- Auto‑generated numbers (page/chapter/figure) not manually modified.

## 5. Fonts & Language

- English text → `\lr{}` or `\begin{latin}`.
- First English term: `Persian (\lr{Term})`.
- URLs/emails: `\lr{\url{...}}`.
- `\texttt{}` containing English must be inside `\lr`.
- Use `\setlatintextfont` (NOT `\setlatinfont`).
- Font names must match installed names.

## 6. Persian Punctuation

- Use Persian comma/semicolon/question mark/guillemets/ellipsis.
- Parentheses/brackets auto‑mirror; do not swap manually.

## 7. Math

- Persian inside math: `\text{\rl{...}}`.
- Equation numbers left (xepersian default).

## 8. Labels & References

- Labels must be Latin-only (`\label{fig:abc}`).
- `\ref`/`pageref` do not need `\rl`.
- `\hyperref{}` Persian text normally needs no `\rl` unless in TikZ.

## 9. Bibliography & Footnotes

- Persian entry format: last name, first name, italic title.
- English bib entries wrapped with `\lr`.
- Persian footnotes OK; English footnotes wrapped with `\lr`.

## 10. Packages & Conflicts

- `bidi` loads last (xepersian handles).
- Any package loaded after xepersian → move before.
- Remove unused packages (microtype, mdframed, etc.).
- Avoid microtype under XeLaTeX.
- Never load both mdframed and tcolorbox.
- `tcbuselibrary{listings}` conflicts with titlesec — remove if unused.
- Load TikZ libraries only when needed.

## 11. Output / Bookmarks

- Ensure `\hypersetup{pdfencoding=unicode}` exists.
- TOC entries correct automatically if captions use `\rl{}`.

## 12. tcolorbox (RTL)

- Always supply `before skip` and `after skip` (e.g., 12pt).
- Always set `breakable`.

## 13. Title Formatting (titlesec)

- No negative `\vspace` before/after headings.
- Use only `\titlespacing*`.
- Do not put `\vspace` inside \titleformat after-code.
- When a section is immediately followed by a long table:

\needspace{6\baselineskip}
\nopagebreak[4]%
\vspace{-1ex}%
\noindent%
## 14. **Global Page‑Layout Integrity (NEW)**
### 14.1 Overfull floats/tables
- Detect if **tables, figures, TikZ diagrams exceed page width**.
- Auto-fix by applying one or more:
- `\resizebox{\linewidth}{!}{...}`
- `\begin{adjustbox}{max width=\linewidth}`
- Reduce column spacing (`\setlength{\tabcolsep}{...}`).
- For TikZ: scale via `scale=<factor>` or `transform canvas=`.

### 14.2 Negative indents / misalignment
- Detect and remove:
- `\hspace{-...}`,
- negative `\parindent`,
- negative `\leftskip`/`\rightskip`,
- section titles with negative spacing.
- Replace with zero or minimal positive logical spacing.

### 14.3 Widow/Orphan prevention for section/subsection titles
- **Never leave a section/subsection title alone at bottom of a page.**
Apply before headings:
- `\needspace{6\baselineskip}`
- `\clearpage` (only if required)
- `\nopagebreak[4]`

### 14.4 Vertical spacing consistency
- Charts, diagrams, tables, paragraphs, tcolorboxes, and headings must not have excessive blank space.
- Remove double blank lines.
- Normalize spacing:
- before floats: `\vspace{0.5\baselineskip}`
- after floats: `\vspace{0.5\baselineskip}`
- between sections and next paragraph: moderate spacing only.
- Ensure **uniform margin around visual elements** (no crowded blocks, no oversized whitespace).

### 14.5 Float Placement Quality
- If float appears awkwardly isolated:
- enforce `[htbp]`
- or move to top of next page
- or downscale.

## 15. Response Format
- Return only corrected code.
- Mark changed lines with `% FIXED: <reason>`.
- Add a summary table: `[line | issue | fix]`.
- Add "Preamble Warnings" if structural issues exist.
```

### Response


# ساختار و طرح پیشنهادی مقاله

در ادامه، ابتدا **ساختار کلی** و **فهرست محتوایی** مقاله را ارائه می‌دهم و سپس **کد لاتکس کامل** را تقدیم می‌کنم.

---

## فهرست بخش‌ها و محتوا

| بخش | عنوان | محتوا |
|-----|-------|-------|
| ۱ | مقدمه | تعریف اخلاق، اهمیت پژوهش، پرسش‌های محوری |
| ۲ | هستی‌شناسی اخلاق | واقع‌گرایی vs ناواقع‌گرایی، طبیعت‌گرایی، غیرطبیعت‌گرایی، خطاگرایی |
| ۳ | معرفت‌شناسی اخلاق | شهودگرایی، انسجام‌گرایی، تعادل تأملی، تجربه‌گرایی اخلاقی |
| ۴ | سیر تاریخی مکاتب اخلاقی | یونان باستان → قرون وسطی → مدرن → معاصر |
| ۵ | نقشهٔ مفهومی مکاتب هنجاری | فضیلت‌گرایی، وظیفه‌گرایی، پیامدگرایی + شاخه‌ها |
| ۶ | فرااخلاق: نقشهٔ مفهومی | معناشناسی، هستی‌شناسی، معرفت‌شناسی، روان‌شناسی اخلاقی |
| ۷ | جدال‌های زنده و پویا | واقع‌گرایی/ناواقع‌گرایی، خاص‌گرایی/عام‌گرایی، فضیلت vs وظیفه |
| ۸ | اجماع‌ها و نقاط مشترک | حقوق بشر، عدالت رویه‌ای، اصل آسیب |
| ۹ | موضوعات پژوهشی نوظهور | اخلاق هوش مصنوعی، اخلاق زیست‌محیطی، عصب‌اخلاق |
| ۱۰ | آثار و نتایج در زیست جمعی | سیاست‌گذاری، حقوق، اقتصاد، فناوری |
| ۱۱ | نتیجه‌گیری و افق‌های پیش رو | جمع‌بندی، پیشنهادات پژوهشی |
| — | کتاب‌نامه | منابع آکادمیک |

---

## عناصر بصری (TikZ)

1. **خط زمانی تاریخی** (Timeline): از یونان باستان تا معاصر
2. **نقشهٔ مفهومی فرااخلاق** (Mindmap): شاخه‌های اصلی
3. **نقشهٔ مفهومی اخلاق هنجاری** (Mindmap): سه مکتب اصلی + شاخه‌ها
4. **جدول مقایسه‌ای مکاتب**: هستی‌شناسی، معرفت‌شناسی، هنجاری
5. **نمودار جدال‌های اصلی**: محورهای اختلاف و اندیشمندان

---

اکنون کد لاتکس کامل:

```latex
\documentclass[12pt,a4paper]{article}

% ─── بسته‌های پایه ───────────────────────────────────────────
\usepackage{fontspec}
\usepackage{geometry}
\usepackage{xcolor}
\usepackage{colortbl}
\usepackage{booktabs}
\usepackage{longtable}
\usepackage{array}
\usepackage{tabularx}
\usepackage{multirow}
\usepackage{makecell}
\usepackage{tikz}
\usepackage{pgfplots}
\usepackage{tcolorbox}
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage{titletoc}
\usepackage{hyperref}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage{adjustbox} % FIXED: اضافه شد برای کنترل عرض جداول و اشکال
\usepackage{wrapfig}
\usepackage{multicol}
\usepackage{setspace}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{footnote}
\usepackage{endnotes}
\usepackage{etoolbox}
\usepackage{calc}
\usepackage{varwidth}
\usepackage{needspace} % FIXED: اضافه شد برای جلوگیری از تنهایی عنوان

% ─── تنظیمات TikZ ─────────────────────────────────────────────
\usetikzlibrary{
  arrows, arrows.meta, positioning, shapes, shapes.geometric,
  shapes.multipart, shadows, decorations, decorations.pathreplacing,
  decorations.markings, patterns, backgrounds, calc, fit,
  mindmap, trees, matrix, chains, scopes,
  fadings, through, plotmarks, intersections
}
\pgfplotsset{compat=1.18}
\tcbuselibrary{skins, breakable}

% ─── صفحه‌آرایی ───────────────────────────────────────────────
\geometry{
  a4paper,
  top=2.8cm, bottom=2.8cm,
  right=3.5cm, left=3cm,
  headheight=1.5cm,
  headsep=0.5cm,
  footskip=1.2cm
}

% ─── پالت رنگی ────────────────────────────────────────────────
\definecolor{PrimaryDeep}{HTML}{1A237E}
\definecolor{PrimaryMid}{HTML}{283593}
\definecolor{PrimaryLight}{HTML}{3949AB}
\definecolor{AccentGold}{HTML}{F9A825}
\definecolor{AccentAmber}{HTML}{FF8F00}
\definecolor{AccentTeal}{HTML}{00695C}
\definecolor{AccentRed}{HTML}{B71C1C}
\definecolor{AccentGreen}{HTML}{1B5E20}
\definecolor{AccentPurple}{HTML}{4A148C}
\definecolor{NeutralLight}{HTML}{ECEFF1}
\definecolor{NeutralMid}{HTML}{B0BEC5}
\definecolor{NeutralDark}{HTML}{455A64}
\definecolor{TextMain}{HTML}{212121}
\definecolor{TextSecond}{HTML}{424242}
\definecolor{BgWarm}{HTML}{FFF8E1}
\definecolor{BgCool}{HTML}{E8EAF6}
\definecolor{BgTeal}{HTML}{E0F2F1}

% ─── رنگ‌های دوره‌ها ───────────────────────────────────────────
\definecolor{EraAncient}{HTML}{4E342E}
\definecolor{EraMedieval}{HTML}{37474F}
\definecolor{EraEarlyMod}{HTML}{1565C0}
\definecolor{EraModern}{HTML}{2E7D32}
\definecolor{EraContemp}{HTML}{6A1B9A}
\definecolor{EraPostmod}{HTML}{AD1457}

% ─── جعبه‌های محتوایی ─────────────────────────────────────────
\tcbset{
  mybox/.style={
    enhanced, breakable,
    colback=BgCool, colframe=PrimaryMid,
    fonttitle=\bfseries\large,
    attach boxed title to top right={yshift=-2mm, xshift=-3mm},
    boxed title style={colback=PrimaryMid, colframe=PrimaryDeep},
    top=4mm, bottom=4mm,
    before skip=12pt, after skip=12pt,
  },
  defbox/.style={
    enhanced, breakable,
    colback=BgWarm, colframe=AccentGold,
    fonttitle=\bfseries,
    left=4mm, right=4mm,
    borderline west={3pt}{0pt}{AccentAmber},
    sharp corners,
    before skip=12pt, after skip=12pt,
  },
  wavebox/.style={
    enhanced, breakable,
    colback=BgTeal, colframe=AccentTeal,
    fonttitle=\bfseries,
    rounded corners,
    drop shadow,
    before skip=12pt, after skip=12pt,
  },
  quotebox/.style={
    enhanced, breakable,
    colback=NeutralLight, colframe=NeutralDark,
    fontupper=\itshape,
    left=8mm,
    borderline west={4pt}{0pt}{NeutralMid},
    sharp corners=south,
    before skip=12pt, after skip=12pt,
  },
  enemybox/.style={
    enhanced, breakable,
    colback=red!5, colframe=AccentRed,
    fonttitle=\bfseries,
    borderline west={3pt}{0pt}{AccentRed},
    before skip=12pt, after skip=12pt,
  },
}

% ─── سربرگ و پابرگ ────────────────────────────────────────────
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.6pt}
\renewcommand{\footrulewidth}{0.3pt}
\fancyhead[R]{\small\color{PrimaryMid}\rightmark}
\fancyhead[L]{\small\color{NeutralDark}اخلاق: هستی‌شناسی و معرفت‌شناسی \textbar{} مقالهٔ مروری}
\fancyfoot[C]{\small\thepage}
\fancyfoot[R]{\small\color{NeutralDark}\leftmark}

% ─── عنوان‌بندی بخش‌ها ────────────────────────────────────────
\titleformat{\section}[block]
  {\Large\bfseries\color{PrimaryDeep}}
  {\thesection}{1em}{}
  [{\color{AccentGold}\titlerule[1.5pt]}]

\titleformat{\subsection}[block]
  {\large\bfseries\color{PrimaryMid}}
  {\thesubsection}{0.8em}{}
  [{\color{NeutralMid}\titlerule[0.6pt]}]

\titleformat{\subsubsection}[runin]
  {\normalsize\bfseries\color{AccentTeal}}
  {\thesubsubsection}{0.6em}{}[\ —\ ]

% ─── فاصله‌گذاری ──────────────────────────────────────────────
\titlespacing*{\section}{0pt}{18pt}{10pt}
\titlespacing*{\subsection}{0pt}{14pt}{6pt}
\setlength{\parindent}{1em}
\setlength{\parskip}{0.4em}
\onehalfspacing

% ─── hyperref ─────────────────────────────────────────────────
\hypersetup{
  colorlinks  = true,
  linkcolor   = PrimaryMid,
  citecolor   = AccentTeal,
  urlcolor    = AccentAmber,
  pdftitle    = {اخلاق: مروری بر هستی‌شناسی و معرفت‌شناسی},
  pdfauthor   = {},
  pdfkeywords = {اخلاق، فرااخلاق، هستی‌شناسی اخلاقی، معرفت‌شناسی اخلاقی، فلسفه اخلاق},
  pdfsubject  = {فلسفه اخلاق},
  bookmarks   = true,
  pdfpagemode = UseOutlines,
  pdfencoding = unicode,
}

\usepackage{xepersian} % FIXED: xepersian باید آخرین بسته باشد

% ─── فونت‌ها (باید بعد از xepersian باشند) ────────────────────────
\settextfont{Vazirmatn}
\setlatintextfont[Scale=0.95]{Linux Libertine}
\setdigitfont[Scale=0.95]{Vazirmatn}

% ─── دستورات کمکی ─────────────────────────────────────────────
\newcommand{\concept}[1]{\textbf{\color{PrimaryMid}#1}}
\newcommand{\thinker}[1]{\textit{\color{AccentTeal}#1}}
\newcommand{\era}[1]{\textbf{\color{AccentAmber}#1}}
\newcommand{\enemy}[1]{\textbf{\color{AccentRed}#1}}
\newcommand{\lat}[1]{\lr{#1}}
\newcommand{\src}[1]{\textsuperscript{\scriptsize\color{NeutralDark}[#1]}}

% ─── فرمت پانوشت ──────────────────────────────────────────────
\renewcommand{\thefootnote}{\arabic{footnote}}

% ══════════════════════════════════════════════════════════════
\begin{document}

% ─── صفحهٔ عنوان ──────────────────────────────────────────────
\begin{titlepage}
\begin{center}

\vspace*{2cm}

{\Huge\bfseries\color{PrimaryDeep}%
اخلاق}

\vspace{0.6cm}

{\LARGE\color{PrimaryMid}%
مروری جامع بر هستی‌شناسی و معرفت‌شناسی اخلاقی}

\vspace{0.4cm}

{\large\color{NeutralDark}%
مکاتب، اندیشمندان، جدال‌ها، اجماع‌ها و افق‌های پژوهشی}

\vspace{2cm}

\begin{tikzpicture}[scale=0.85, transform shape]
  \fill[PrimaryDeep, opacity=0.08] (0,0) circle (3.5cm);
  \fill[AccentTeal, opacity=0.08] (-2.2,-0.5) circle (2.5cm);
  \fill[AccentGold, opacity=0.10] (2.2,-0.5) circle (2.5cm);
  \node[font=\large\bfseries, color=PrimaryDeep] at (0, 1.2) {\rl{فرااخلاق}};%
  \node[font=\normalsize, color=AccentTeal] at (-2.2, -1.5) {\rl{هستی‌شناسی}};%
  \node[font=\normalsize, color=AccentAmber] at (2.2, -1.5) {\rl{معرفت‌شناسی}};%
  \node[font=\small, color=NeutralDark] at (0, -0.3) {\rl{اخلاق هنجاری}};%
\end{tikzpicture}

\vspace{2cm}

{\large مقالهٔ مروری}

\vspace{0.5cm}

{\color{NeutralDark}\today}

\end{center}
\end{titlepage}

% ─── فهرست مطالب ──────────────────────────────────────────────
\tableofcontents
\newpage

% ══════════════════════════════════════════════════════════════
%  بخش ۱: مقدمه
% ══════════════════════════════════════════════════════════════
\section{مقدمه: اخلاق چیست و چرا مهم است؟}\label{sec:intro}

اخلاق (\lat{Ethics}) از دیرباز یکی از محوری‌ترین شاخه‌های فلسفه بوده است. پرسش‌هایی نظیر «خوب چیست؟»، «وظیفهٔ ما چیست؟» و «چگونه باید زیست؟» قرن‌هاست ذهن بشر را به خود مشغول داشته‌اند.\footnote{%
\lr{Aristotle, \textit{Nicomachean Ethics}, Book~I.}}

\begin{tcolorbox}[defbox, title=پرسش‌های بنیادین مقاله]
\begin{enumerate}[label=\textbf{\arabic*.}, nosep]
  \item آیا واقعیت‌های اخلاقی وجود دارند؟ (\concept{هستی‌شناسی اخلاقی})
  \item چگونه می‌توان به شناخت اخلاقی دست یافت؟ (\concept{معرفت‌شناسی اخلاقی})
  \item گزاره‌های اخلاقی چه معنایی دارند؟ (\concept{معناشناسی اخلاقی})
  \item چه اصول هنجاری‌ای باید راهنمای عمل باشند؟ (\concept{اخلاق هنجاری})
  \item این پاسخ‌ها چه نتایجی در زیست جمعی دارند؟ (\concept{اخلاق کاربردی})
\end{enumerate}
\end{tcolorbox}

این مقاله می‌کوشد مروری جامع، عمیق و چندوجهی بر این پرسش‌ها ارائه دهد. ساختار مقاله از سطح فرااخلاق (\lat{Metaethics}) آغاز می‌شود، سپس به اخلاق هنجاری (\lat{Normative Ethics}) می‌رسد و در نهایت پیامدهای عملی و کاربردی (\lat{Applied Ethics}) را بررسی می‌کند.

\subsection{تمایز سه‌گانهٔ فلسفهٔ اخلاق}\label{subsec:three-levels}

فلسفهٔ اخلاق معمولاً به سه سطح تقسیم می‌شود:\footnote{%
\lr{Sayre-McCord, G. (2014). ``Metaethics.'' In \textit{The Stanford Encyclopedia of Philosophy}.}}

\begin{tcolorbox}[mybox, title=سه سطح فلسفهٔ اخلاق]
\begin{description}[style=nextline, nosep]
  \item[\concept{فرااخلاق} (\lat{Metaethics})]
  بررسی ماهیت، مبانی و وضعیت معرفتی گزاره‌های اخلاقی. آیا اخلاق عینی است؟ آیا واقعیت اخلاقی وجود دارد؟

  \item[\concept{اخلاق هنجاری} (\lat{Normative Ethics})]
  تدوین اصول و معیارهایی برای تشخیص درست از نادرست. وظیفه‌گرایی، پیامدگرایی، فضیلت‌گرایی.

  \item[\concept{اخلاق کاربردی} (\lat{Applied Ethics})]
  به‌کارگیری اصول اخلاقی در حوزه‌های مشخص: اخلاق پزشکی، اخلاق محیط‌زیست، اخلاق فناوری.
\end{description}
\end{tcolorbox}


% ══════════════════════════════════════════════════════════════
%  بخش ۲: هستی‌شناسی اخلاق
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{هستی‌شناسی اخلاق: آیا واقعیت اخلاقی وجود دارد؟}\label{sec:ontology}

هستی‌شناسی اخلاقی (\lat{Moral Ontology}) به این پرسش بنیادین می‌پردازد: آیا ویژگی‌ها و واقعیت‌های اخلاقی بخشی از ساختار عالم‌اند یا ساخته‌های ذهن بشری؟\footnote{%
\lr{Shafer-Landau, R. (2003). \textit{Moral Realism: A Defence}. Oxford University Press.}}

\subsection{واقع‌گرایی اخلاقی (\lat{Moral Realism})}\label{subsec:realism}

واقع‌گرایان اخلاقی بر این باورند که گزاره‌های اخلاقی می‌توانند صادق یا کاذب باشند و صدقشان مستقل از باورها و نگرش‌های ما تعیین می‌شود.\footnote{%
\lr{Enoch, D. (2011). \textit{Taking Morality Seriously}. Oxford University Press.}}

\subsubsection{طبیعت‌گرایی اخلاقی (\lat{Ethical Naturalism})}
ویژگی‌های اخلاقی همان ویژگی‌های طبیعی‌اند یا بر آنها نظارت دارند. \thinker{فیلیپا فوت}\footnote{\lr{Foot, P. (2001). \textit{Natural Goodness}. Oxford University Press.}} و \thinker{پیتر ریلتون}\footnote{\lr{Railton, P. (1986). ``Moral Realism.'' \textit{Philosophical Review}, 95(2), 163--207.}} از مدافعان اصلی این دیدگاه‌اند. طبیعت‌گرایان استدلال می‌کنند که خوبی و بدی اخلاقی را می‌توان برحسب ویژگی‌هایی مانند رفاه، شکوفایی انسانی یا کارکردهای زیست‌شناختی تبیین کرد.

\subsubsection{غیرطبیعت‌گرایی اخلاقی (\lat{Non-naturalism})}
واقعیت‌های اخلاقی واقعی‌اند اما به ویژگی‌های طبیعی فروکاست‌پذیر نیستند. \thinker{جی.\ ای.\ مور}\footnote{\lr{Moore, G.E. (1903). \textit{Principia Ethica}. Cambridge University Press.}} با طرح \concept{مغالطهٔ طبیعت‌گرایانه} استدلال کرد که «خوب» یک ویژگی بسیط و تعریف‌ناپذیر است. \thinker{دِرِک پارفیت}\footnote{\lr{Parfit, D. (2011). \textit{On What Matters}. Oxford University Press.}} نیز دیدگاهی غیرطبیعت‌گرایانه دفاع کرده است.

\subsubsection{برنامهٔ کرنل (\lat{Cornell Realism})}
\thinker{نیکلاس استرجن}\footnote{\lr{Sturgeon, N. (1985). ``Moral Explanations.'' In \textit{Morality, Reason and Truth}.}} و \thinker{دیوید برینک}\footnote{\lr{Brink, D.O. (1989). \textit{Moral Realism and the Foundations of Ethics}. Cambridge University Press.}} نوعی واقع‌گرایی طبیعت‌گرایانه را مطرح کردند که واقعیت‌های اخلاقی نقش تبیینی ایفا می‌کنند.

\subsection{ناواقع‌گرایی اخلاقی (\lat{Moral Anti-realism})}\label{subsec:antirealism}

\subsubsection{خطاگرایی (\lat{Error Theory})}
\thinker{جان مکی}\footnote{\lr{Mackie, J.L. (1977). \textit{Ethics: Inventing Right and Wrong}. Penguin.}} با استدلال‌های «غرابت» (\lat{argument from queerness}) و «اختلاف» (\lat{argument from disagreement}) نشان داد که گزاره‌های اخلاقی منظماً کاذب‌اند، زیرا ویژگی‌های اخلاقی عینی‌ای در عالم وجود ندارند. \thinker{جویس}\footnote{\lr{Joyce, R. (2001). \textit{The Myth of Morality}. Cambridge University Press.}} این خط فکری را ادامه داده است.

\subsubsection{عاطفه‌گرایی (\lat{Emotivism})}
\thinker{آلفرد آیر}\footnote{\lr{Ayer, A.J. (1936). \textit{Language, Truth and Logic}. Victor Gollancz.}} و \thinker{چارلز استیونسون}\footnote{\lr{Stevenson, C.L. (1944). \textit{Ethics and Language}. Yale University Press.}} گزاره‌های اخلاقی را بیانگر احساسات و نگرش‌ها دانستند، نه توصیفی از واقعیت.

\subsubsection{هنجارگذاری بیانی (\lat{Expressivism})}
\thinker{سایمون بلکبرن}\footnote{\lr{Blackburn, S. (1993). \textit{Essays in Quasi-Realism}. Oxford University Press.}} با طرح \concept{شبه‌واقع‌گرایی} (\lat{Quasi-realism}) و \thinker{آلن گیبارد}\footnote{\lr{Gibbard, A. (2003). \textit{Thinking How to Live}. Harvard University Press.}} با \concept{هنجارگذاری بیانی} کوشیدند رویکردی بیانگرایانه ارائه دهند که ضمن انکار واقعیت‌های اخلاقی عینی، ویژگی‌های منطقی گفتمان اخلاقی (مانند انسجام و استنتاج) را حفظ کند.

\subsubsection{سازه‌انگاری (\lat{Constructivism})}
\thinker{جان رالز}\footnote{\lr{Rawls, J. (1980). ``Kantian Constructivism in Moral Theory.'' \textit{Journal of Philosophy}, 77(9), 515--572.}} و \thinker{کریستین کرسگارد}\footnote{\lr{Korsgaard, C.M. (1996). \textit{The Sources of Normativity}. Cambridge University Press.}} بر این باورند که اصول اخلاقی محصول رویه‌های ساختاری خردورزی عملی هستند.

\vspace{0.5\baselineskip}

% ─── نمودار هستی‌شناسی اخلاق ──────────────────────────────────
\needspace{8\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  level 1/.style={sibling distance=60mm, level distance=22mm},
  level 2/.style={sibling distance=30mm, level distance=20mm},
  every node/.style={
    rounded corners, draw, thick,
    minimum width=22mm, minimum height=8mm,
    font=\small, align=center
  },
  edge from parent/.style={draw, thick, -Stealth},
  root/.style={fill=PrimaryDeep, text=white, font=\bfseries},
  cat1/.style={fill=AccentTeal!20, draw=AccentTeal},
  cat2/.style={fill=AccentRed!15, draw=AccentRed},
  leaf/.style={fill=NeutralLight, draw=NeutralDark, font=\footnotesize},
]
  \node[root] {\rl{هستی‌شناسی اخلاقی}}
    child {
      node[cat1] {\rl{واقع‌گرایی}}
      child { node[leaf] {\rl{طبیعت‌گرایی}} }
      child { node[leaf] {\rl{غیرطبیعت‌گرایی}} }
    }
    child {
      node[cat2] {\rl{ناواقع‌گرایی}}
      child { node[leaf] {\rl{خطاگرایی}} }
      child { node[leaf] {\rl{بیانگرایی}} }
      child { node[leaf] {\rl{سازه‌انگاری}} }
    };
\end{tikzpicture}
\end{adjustbox}
\caption{نقشهٔ مفهومی هستی‌شناسی اخلاقی}\label{fig:ontology-map}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  بخش ۳: معرفت‌شناسی اخلاق
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{معرفت‌شناسی اخلاق: چگونه می‌دانیم؟}\label{sec:epistemology}

معرفت‌شناسی اخلاقی (\lat{Moral Epistemology}) به بررسی امکان، منابع و توجیه شناخت اخلاقی می‌پردازد.\footnote{%
\lr{Audi, R. (2004). \textit{The Good in the Right}. Princeton University Press.}}

\subsection{شهودگرایی اخلاقی (\lat{Moral Intuitionism})}\label{subsec:intuitionism}

\thinker{دبلیو.\ دی.\ راس}\footnote{\lr{Ross, W.D. (1930). \textit{The Right and the Good}. Oxford University Press.}} معتقد بود برخی اصول اخلاقی (مانند وفای به عهد، عدم آزار) بدیهی‌اند و از طریق شهود عقلانی دریافت می‌شوند. \thinker{رابرت آئودی}\src{Audi 2004} و \thinker{مایکل هیومر}\footnote{\lr{Huemer, M. (2005). \textit{Ethical Intuitionism}. Palgrave.}} این سنت را در فلسفهٔ معاصر احیا کرده‌اند.

\subsection{انسجام‌گرایی و تعادل تأملی (\lat{Reflective Equilibrium})}\label{subsec:coherentism}

\thinker{جان رالز} مفهوم \concept{تعادل تأملی} را مطرح کرد: فرایندی تکراری از تنظیم متقابل بین داوری‌های خاص، اصول عام و نظریه‌های زمینه‌ای تا رسیدن به انسجام.\footnote{%
\lr{Daniels, N. (1979). ``Wide Reflective Equilibrium and Theory Acceptance in Ethics.'' \textit{Journal of Philosophy}, 76(5), 256--282.}}

\subsection{تجربه‌گرایی اخلاقی (\lat{Moral Empiricism})}\label{subsec:empiricism}

برخی فیلسوفان مانند \thinker{جسی پرینتس}\footnote{\lr{Prinz, J. (2007). \textit{The Emotional Construction of Morals}. Oxford University Press.}} استدلال می‌کنند که شناخت اخلاقی در نهایت ریشه در تجربهٔ عاطفی و اجتماعی دارد.

\subsection{شکاکیت اخلاقی (\lat{Moral Skepticism})}\label{subsec:skepticism}

\thinker{والتر سینات-آرمسترانگ}\footnote{\lr{Sinnott-Armstrong, W. (2006). \textit{Moral Skepticisms}. Oxford University Press.}} طیفی از مواضع شکاکانه را بررسی کرده است: از شکاکیت ملایم (نمی‌دانیم کدام نظریهٔ اخلاقی درست است) تا شکاکیت رادیکال (هیچ باور اخلاقی موجهی وجود ندارد).

\begin{tcolorbox}[wavebox, title=رویکردهای اصلی معرفت‌شناسی اخلاقی]
\begin{center}
\begin{adjustbox}{max width=\linewidth}% FIXED: جلوگیری از سرریز
\begin{tabular}{>{\bfseries\color{PrimaryMid}}r  p{4.5cm}  p{4.5cm}}
\toprule
\textbf{\color{PrimaryDeep}رویکرد} & \textbf{منبع شناخت} & \textbf{نمایندگان اصلی} \\
\midrule
شهودگرایی & شهود عقلانی / بداهت & \lr{Ross, Audi, Huemer} \\
\rowcolor{NeutralLight}
انسجام‌گرایی & انسجام بین باورها و اصول & \lr{Rawls, Daniels} \\
تجربه‌گرایی & تجربهٔ عاطفی و اجتماعی & \lr{Prinz, Nichols} \\
\rowcolor{NeutralLight}
شکاکیت & (فقدان منبع کافی) & \lr{Sinnott-Armstrong, Machuca} \\
\bottomrule
\end{tabular}
\end{adjustbox}
\end{center}
\end{tcolorbox}


% ══════════════════════════════════════════════════════════════
%  بخش ۴: سیر تاریخی
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{سیر تاریخی اندیشهٔ اخلاقی}\label{sec:history}

\subsection{یونان باستان: زادگاه فضیلت‌اندیشی}\label{subsec:ancient}

\thinker{سقراط} با روش پرسش و پاسخ، اخلاق را از اسطوره جدا کرد. \thinker{افلاطون} «خیر» را ایدهٔ برتر دانست. \thinker{ارسطو} با \concept{اخلاق نیکوماخوسی} نظریهٔ فضیلت را بنیان نهاد: سعادت (\lat{eudaimonia}) غایت نهایی زندگی انسانی است و فضایل اخلاقی حد وسط میان افراط و تفریط‌اند.\footnote{%
\lr{Aristotle. \textit{Nicomachean Ethics}, trans. Irwin, T. (1999). Hackett.}}

رواقیان بر عقل و وظیفه تأکید کردند و اپیکوریان لذت‌گرایی خردمندانه‌ای پیشنهاد دادند.

\subsection{قرون وسطی: اخلاق الهیاتی}\label{subsec:medieval}

\thinker{آگوستین} و \thinker{توماس آکویناس}\footnote{\lr{Aquinas, T. \textit{Summa Theologica}, II-II.}} اخلاق را در چارچوب قانون طبیعی الهی صورت‌بندی کردند. آکویناس سنت ارسطویی را با الهیات مسیحی تلفیق کرد. در جهان اسلام، \thinker{فارابی}، \thinker{ابن‌سینا}، \thinker{غزالی} و \thinker{ابن‌رشد} هر یک مشارکت‌های مهمی در فلسفهٔ اخلاق داشتند.

\subsection{دورهٔ مدرن اولیه: عقل و قرارداد}\label{subsec:earlymod}

\thinker{هابز} اخلاق را بر قرارداد اجتماعی مبتنی کرد. \thinker{هیوم}\footnote{\lr{Hume, D. (1739). \textit{A Treatise of Human Nature}.}} با تمایز \concept{هست/باید} و تأکید بر عواطف، بنیان تجربه‌گرایی اخلاقی را نهاد.

\subsection{عصر روشنگری و مدرن: وظیفه و سود}\label{subsec:modern}

\thinker{ایمانوئل کانت}\footnote{\lr{Kant, I. (1785). \textit{Groundwork of the Metaphysics of Morals}.}} با \concept{امر مطلق} (\lat{Categorical Imperative}) وظیفه‌گرایی را تأسیس کرد. \thinker{جرمی بنتام}\footnote{\lr{Bentham, J. (1789). \textit{An Introduction to the Principles of Morals and Legislation}.}} و \thinker{جان استوارت میل}\footnote{\lr{Mill, J.S. (1863). \textit{Utilitarianism}.}} سودگرایی (\lat{Utilitarianism}) را بسط دادند.

\subsection{قرن بیستم و معاصر}\label{subsec:contemporary}

\thinker{جی.\ ای.\ مور} با فلسفهٔ تحلیلی فرااخلاق را تأسیس کرد. دهه‌های میانی قرن بیستم عصر سلطهٔ عاطفه‌گرایی و توصیفگری بود. \thinker{الیزابت انسکوم}\footnote{\lr{Anscombe, G.E.M. (1958). ``Modern Moral Philosophy.'' \textit{Philosophy}, 33(124), 1--19.}} با مقالهٔ تأثیرگذارش بازگشت به اخلاق فضیلت را رقم زد.

\vspace{0.5\baselineskip}

% ─── خط زمانی تاریخی ─────────────────────────────────────────
\needspace{8\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  x=2.4cm,
  every node/.style={font=\footnotesize, align=center}
]
  % خط افقی
  \draw[very thick, PrimaryMid, -Stealth] (-0.5,0) -- (7.5,0);

  % دوره‌ها
  \node[above, EraAncient, font=\footnotesize\bfseries] at (0,0.5)
    {\rl{یونان باستان}\\[-2pt]\rl{ق‌م ۴۰۰}};
  \fill[EraAncient] (0,0) circle (4pt);

  \node[above, EraMedieval, font=\footnotesize\bfseries] at (1.5,0.5)
    {\rl{قرون وسطی}\\[-2pt]\rl{ق ۵--۱۵}};
  \fill[EraMedieval] (1.5,0) circle (4pt);

  \node[above, EraEarlyMod, font=\footnotesize\bfseries] at (3,0.5)
    {\rl{مدرن اولیه}\\[-2pt]\rl{ق ۱۶--۱۷}};
  \fill[EraEarlyMod] (3,0) circle (4pt);

  \node[above, EraModern, font=\footnotesize\bfseries] at (4.5,0.5)
    {\rl{روشنگری}\\[-2pt]\rl{ق ۱۸--۱۹}};
  \fill[EraModern] (4.5,0) circle (4pt);

  \node[above, EraContemp, font=\footnotesize\bfseries] at (6,0.5)
    {\rl{تحلیلی}\\[-2pt]\rl{ق ۲۰}};
  \fill[EraContemp] (6,0) circle (4pt);

  \node[above, EraPostmod, font=\footnotesize\bfseries] at (7.2,0.5)
    {\rl{معاصر}\\[-2pt]\rl{ق ۲۱}};
  \fill[EraPostmod] (7.2,0) circle (4pt);

  % اندیشمندان زیر خط
  \node[below, EraAncient] at (0,-0.3) {\rl{ارسطو، افلاطون}};
  \node[below, EraMedieval] at (1.5,-0.3) {\rl{آکویناس، غزالی}};
  \node[below, EraEarlyMod] at (3,-0.3) {\rl{هابز، هیوم}};
  \node[below, EraModern] at (4.5,-0.3) {\rl{کانت، میل}};
  \node[below, EraContemp] at (6,-0.3) {\rl{مور، راس، آیر}};
  \node[below, EraPostmod] at (7.2,-0.3) {\rl{پارفیت، اسکنلن}};
\end{tikzpicture}
\end{adjustbox}
\caption{خط زمانی سیر تاریخی فلسفهٔ اخلاق}\label{fig:timeline}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  بخش ۵: نقشهٔ مفهومی اخلاق هنجاری
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{اخلاق هنجاری: سه پارادایم اصلی}\label{sec:normative}

\subsection{فضیلت‌گرایی (\lat{Virtue Ethics})}\label{subsec:virtue}

فضیلت‌گرایی بر خصلت‌های فاعل اخلاقی تمرکز دارد. پرسش اصلی نه «چه باید کرد؟» بلکه «چگونه باید بود؟» است.

\begin{itemize}[nosep]
  \item \thinker{ارسطو}: فضیلت به‌عنوان حد وسط؛ سعادت (\lat{eudaimonia})
  \item \thinker{السدیر مک‌اینتایر}\footnote{\lr{MacIntyre, A. (1981). \textit{After Virtue}. University of Notre Dame Press.}}: فضیلت در بستر سنت و روایت
  \item \thinker{فیلیپا فوت} و \thinker{رزالیند هرست‌هاوس}\footnote{\lr{Hursthouse, R. (1999). \textit{On Virtue Ethics}. Oxford University Press.}}: فضیلت‌گرایی نوارسطویی
  \item \thinker{مایکل اسلات}\footnote{\lr{Slote, M. (2001). \textit{Morals from Motives}. Oxford University Press.}}: فضیلت‌گرایی مبتنی بر انگیزه
\end{itemize}

\subsection{وظیفه‌گرایی (\lat{Deontology})}\label{subsec:deontology}

وظیفه‌گرایی بر ذات عمل تمرکز دارد، نه پیامدهای آن.

\begin{itemize}[nosep]
  \item \thinker{کانت}: امر مطلق — عمل بر اساس قاعده‌ای که بتوان آن را قانون عام خواست
  \item \thinker{دبلیو.\ دی.\ راس}: وظایف در نظر اول (\lat{prima facie duties})
  \item \thinker{تی.\ ام.\ اسکنلن}\footnote{\lr{Scanlon, T.M. (1998). \textit{What We Owe to Each Other}. Harvard University Press.}}: قراردادگرایی اخلاقی — اصولی که کسی نمی‌تواند به‌طور معقول رد کند
  \item \thinker{کریستین کرسگارد}: کانت‌گرایی سازه‌انگارانه
\end{itemize}

\subsection{پیامدگرایی (\lat{Consequentialism})}\label{subsec:consequentialism}

ارزش اخلاقی عمل به پیامدهایش بستگی دارد.

\begin{itemize}[nosep]
  \item \thinker{بنتام}: سودگرایی لذت‌محور
  \item \thinker{میل}: سودگرایی با تمایز کیفی لذات
  \item \thinker{پیتر سینگر}\footnote{\lr{Singer, P. (2011). \textit{Practical Ethics}. 3rd ed. Cambridge University Press.}}: سودگرایی ترجیحی
  \item \thinker{دِرِک پارفیت}: پیامدگرایی قاعده‌ای
  \item \thinker{جاشوا گرین}\footnote{\lr{Greene, J. (2013). \textit{Moral Tribes}. Penguin.}}: پیامدگرایی عصب‌شناختی
\end{itemize}

\vspace{0.5\baselineskip}

% ─── نقشهٔ مفهومی اخلاق هنجاری ──────────────────────────────
\needspace{8\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  level 1/.style={sibling distance=55mm, level distance=25mm},
  level 2/.style={sibling distance=25mm, level distance=20mm},
  every node/.style={
    rounded corners, draw, thick,
    minimum width=20mm, minimum height=8mm,
    font=\small, align=center
  },
  edge from parent/.style={draw, thick, -Stealth},
  root/.style={fill=PrimaryDeep, text=white, font=\bfseries},
  v/.style={fill=AccentGreen!15, draw=AccentGreen},
  d/.style={fill=EraEarlyMod!15, draw=EraEarlyMod},
  c/.style={fill=AccentAmber!15, draw=AccentAmber},
  leaf/.style={fill=NeutralLight, draw=NeutralDark, font=\footnotesize},
]
  \node[root] {\rl{اخلاق هنجاری}}
    child {
      node[v] {\rl{فضیلت‌گرایی}}
      child { node[leaf] {\rl{ارسطویی}} }
      child { node[leaf] {\rl{انگیزه‌ای}} }
    }
    child {
      node[d] {\rl{وظیفه‌گرایی}}
      child { node[leaf] {\rl{کانتی}} }
      child { node[leaf] {\rl{قراردادی}} }
    }
    child {
      node[c] {\rl{پیامدگرایی}}
      child { node[leaf] {\rl{عمل‌محور}} }
      child { node[leaf] {\rl{قاعده‌ای}} }
    };
\end{tikzpicture}
\end{adjustbox}
\caption{نقشهٔ مفهومی سه پارادایم اخلاق هنجاری}\label{fig:normative-map}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  بخش ۶: فرااخلاق — نقشهٔ جامع
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{فرااخلاق: نقشهٔ جامع}\label{sec:metaethics}

فرااخلاق شامل چهار زیرحوزهٔ اصلی است:\footnote{%
\lr{Miller, A. (2013). \textit{Contemporary Metaethics: An Introduction}. 2nd ed. Polity.}}

\begin{enumerate}[label=\textbf{\arabic*.}, nosep]
  \item \concept{معناشناسی اخلاقی} (\lat{Moral Semantics}): گزاره‌های اخلاقی چه معنایی دارند؟
  \item \concept{هستی‌شناسی اخلاقی}: آیا واقعیت‌های اخلاقی وجود دارند؟ (بخش \ref{sec:ontology})
  \item \concept{معرفت‌شناسی اخلاقی}: چگونه به شناخت اخلاقی دست می‌یابیم؟ (بخش \ref{sec:epistemology})
  \item \concept{روان‌شناسی اخلاقی} (\lat{Moral Psychology}): رابطهٔ باور اخلاقی و انگیزش چیست؟
\end{enumerate}

\subsection{معناشناسی اخلاقی}\label{subsec:semantics}

\subsubsection{شناخت‌گرایی (\lat{Cognitivism})}
گزاره‌های اخلاقی بیانگر باورهایی‌اند که می‌توانند صادق یا کاذب باشند. واقع‌گرایان و نظریه‌پردازان خطا هر دو شناخت‌گرا هستند.

\subsubsection{ناشناخت‌گرایی (\lat{Non-cognitivism})}
گزاره‌های اخلاقی باور نیستند بلکه بیانگر نگرش‌ها، احساسات یا تعهداتند. عاطفه‌گرایی و بیانگرایی در این دسته قرار می‌گیرند.

\subsection{روان‌شناسی اخلاقی}\label{subsec:moral-psych}

\subsubsection{درون‌گرایی انگیزشی (\lat{Motivational Internalism})}
داوری اخلاقی ذاتاً انگیزه‌بخش است. اگر کسی صادقانه باور داشته باشد X درست است، لزوماً انگیزه‌ای برای انجام X دارد.\footnote{%
\lr{Smith, M. (1994). \textit{The Moral Problem}. Blackwell.}}

\subsubsection{برون‌گرایی انگیزشی (\lat{Motivational Externalism})}
داوری اخلاقی و انگیزش ارتباط ضروری ندارند. امکان «بی‌تفاوتی اخلاقی» وجود دارد.\footnote{%
\lr{Brink, D.O. (1989). \textit{Moral Realism and the Foundations of Ethics}. Cambridge University Press.}}


% ══════════════════════════════════════════════════════════════
%  بخش ۷: جدال‌های زنده و پویا
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{جدال‌های زنده و پویا}\label{sec:debates}

\subsection{واقع‌گرایی در برابر ناواقع‌گرایی}\label{subsec:debate-realism}

این مهم‌ترین جدال فرااخلاقی است. \thinker{دِرِک پارفیت} و \thinker{دیوید اِنوک}\src{Enoch 2011} از جبههٔ واقع‌گرایی و \thinker{شارون استریت}\footnote{\lr{Street, S. (2006). ``A Darwinian Dilemma for Realist Theories of Value.'' \textit{Philosophical Studies}, 127(1), 109--166.}} با \concept{معضل داروینی} از جبههٔ ناواقع‌گرایی.

\begin{tcolorbox}[enemybox, title=معضل داروینی استریت]
اگر تکامل باورهای اخلاقی ما را شکل داده، و تکامل به حقیقت اخلاقی بی‌اعتناست، چگونه می‌توان به باورهای اخلاقی‌مان اعتماد کرد؟ واقع‌گرا باید یا نفوذ تکامل را انکار کند (ناموجه) یا ارتباطی میان تکامل و حقیقت اخلاقی بیابد (بعید).
\end{tcolorbox}

\subsection{خاص‌گرایی در برابر عام‌گرایی}\label{subsec:debate-particularism}

آیا اصول اخلاقی عام وجود دارند یا هر موقعیت یکتاست؟ \thinker{جاناتان دنسی}\footnote{\lr{Dancy, J. (2004). \textit{Ethics without Principles}. Oxford University Press.}} از خاص‌گرایی دفاع می‌کند و \thinker{شان مک‌کیور}\footnote{\lr{McKeever, S. \& Ridge, M. (2006). \textit{Principled Ethics}. Oxford University Press.}} از عام‌گرایی.

\subsection{مسئلهٔ اختلاف‌نظر اخلاقی}\label{subsec:debate-disagreement}

آیا اختلاف‌نظرهای اخلاقی عمیق و مقاوم، دلیلی بر نبود حقیقت اخلاقی عینی است؟\footnote{%
\lr{McGrath, S. (2008). ``Moral Disagreement and Moral Expertise.'' \textit{Oxford Studies in Metaethics}, 3, 87--108.}} یا صرفاً نشان‌دهندهٔ دشواری شناخت اخلاقی است؟

\subsection{معضل ترولی و شهودهای متعارض}\label{subsec:debate-trolley}

\concept{معضل ترولی} (\lat{Trolley Problem}) که \thinker{فیلیپا فوت}\footnote{\lr{Foot, P. (1967). ``The Problem of Abortion and the Doctrine of Double Effect.'' \textit{Oxford Review}, 5, 5--15.}} و \thinker{جودیت جارویس تامسون}\footnote{\lr{Thomson, J.J. (1985). ``The Trolley Problem.'' \textit{Yale Law Journal}, 94(6), 1395--1415.}} مطرح کردند، شکاف میان شهودهای وظیفه‌گرایانه و پیامدگرایانه را آشکار می‌سازد. پژوهش‌های عصب‌شناختی \thinker{جاشوا گرین}\src{Greene 2013} نشان می‌دهد سیستم‌های عاطفی و تحلیلی مغز پاسخ‌های متفاوتی می‌دهند.

\subsection{فضیلت‌گرایی در برابر وظیفه‌گرایی: جدال بازگشته}\label{subsec:debate-virtue-deont}

با احیای فضیلت‌گرایی توسط \thinker{انسکوم}، \thinker{مک‌اینتایر} و دیگران، پرسش این است که آیا فضیلت‌گرایی نظریه‌ای مستقل و رقیب است یا مکملی برای وظیفه‌گرایی و پیامدگرایی؟\footnote{%
\lr{Crisp, R. \& Slote, M. (eds.) (1997). \textit{Virtue Ethics}. Oxford University Press.}}

% ─── جدول خلاصهٔ جدال‌ها ─────────────────────────────────────
\needspace{8\baselineskip}
\nopagebreak[4]%
\vspace{0.5\baselineskip}
\noindent%
\begin{table}[htbp]
\centering
\caption{خلاصهٔ جدال‌های اص

```latex
% ─── ادامهٔ جدول خلاصهٔ جدال‌ها ─────────────────────────────────────
\begin{table}[htbp]
\centering
\caption{خلاصهٔ جدال‌های اصلی در فلسفهٔ اخلاق معاصر}\label{tab:debates}
\begin{adjustbox}{max width=\linewidth}
\begin{tabular}{>{\bfseries\color{PrimaryDeep}}r  p{3.2cm}  p{3.2cm}  p{3.8cm}}
\toprule
\textbf{\color{PrimaryDeep}محور جدال} & \textbf{موضع اول} & \textbf{موضع دوم} & \textbf{اندیشمندان شاخص} \\
\midrule
واقع‌گرایی / ناواقع‌گرایی
  & واقعیت‌های اخلاقی عینی‌اند
  & واقعیت‌های اخلاقی ساختهٔ ذهن‌اند
  & \lr{Enoch, Parfit\,/\,Street, Blackburn} \\
\rowcolor{NeutralLight}
عام‌گرایی / خاص‌گرایی
  & اصول اخلاقی عام وجود دارند
  & هر موقعیت یکتاست
  & \lr{McKeever\,/\,Dancy} \\
فضیلت / وظیفه / پیامد
  & خصلت فاعل محوری است
  & ذات عمل یا پیامد آن
  & \lr{Hursthouse\,/\,Scanlon\,/\,Singer} \\
\rowcolor{NeutralLight}
درون‌گرایی / برون‌گرایی
  & باور اخلاقی ذاتاً انگیزه‌بخش
  & باور و انگیزش مستقل‌اند
  & \lr{Smith\,/\,Brink} \\
اختلاف‌نظر اخلاقی
  & دلیل بر نبود حقیقت عینی
  & دلیل بر دشواری شناخت
  & \lr{Mackie\,/\,McGrath, Enoch} \\
\rowcolor{NeutralLight}
طبیعت‌گرایی / غیرطبیعت‌گرایی
  & ویژگی‌های اخلاقی طبیعی‌اند
  & ویژگی‌های اخلاقی متفاوت‌اند
  & \lr{Railton, Foot\,/\,Moore, Parfit} \\
\bottomrule
\end{tabular}
\end{adjustbox}
\end{table}


% ══════════════════════════════════════════════════════════════
%  بخش ۸: اجماع‌ها و نقاط مشترک
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{اجماع‌ها و نقاط مشترک: آنچه راهنمای عمل است}\label{sec:consensus}

علی‌رغم اختلافات عمیق نظری، فیلسوفان اخلاق در نقاط مهمی به نوعی \concept{همگرایی عملی} رسیده‌اند:

\subsection{اصل آسیب و ممنوعیت شکنجه}\label{subsec:harm}

تقریباً تمام نظریه‌های اخلاقی — چه وظیفه‌گرایانه، چه پیامدگرایانه، چه فضیلت‌محور — بر ممنوعیت آسیب‌رسانی بی‌دلیل و شکنجه اتفاق‌نظر دارند. \thinker{جان استوارت میل}\src{Mill 1863} \concept{اصل آسیب} (\lat{Harm Principle}) را صورت‌بندی کرد: تنها توجیه مشروع برای محدودکردن آزادی فرد، جلوگیری از آسیب به دیگران است.

\subsection{احترام به کرامت انسانی}\label{subsec:dignity}

مفهوم \concept{کرامت ذاتی انسان} نقطهٔ تلاقی سنت‌های گوناگون است: صورت‌بندی دوم امر مطلق کانت (انسان را همواره غایت بدان، نه صرفاً وسیله)، حقوق طبیعی لاکی، و حتی سودگرایی ترجیحی که ترجیحات هر فرد را ارزشمند می‌شمارد.\footnote{%
\lr{Kateb, G. (2011). \textit{Human Dignity}. Harvard University Press.}}

\subsection{عدالت رویه‌ای و بی‌طرفی}\label{subsec:justice}

از \thinker{رالز}\footnote{\lr{Rawls, J. (1971). \textit{A Theory of Justice}. Harvard University Press.}} تا \thinker{هابرماس}\footnote{\lr{Habermas, J. (1990). \textit{Moral Consciousness and Communicative Action}. MIT Press.}}، ایدهٔ \concept{بی‌طرفی رویه‌ای} — یعنی اصولی که تحت شرایط منصفانهٔ انتخاب مورد توافق قرار می‌گیرند — پذیرفته شده است. پردهٔ بی‌خبری رالز و موقعیت گفت‌وگوی ایدئال هابرماس هر دو تلاش‌هایی برای تضمین بی‌طرفی رویه‌ای‌اند.

\subsection{حقوق بشر به‌عنوان حداقل اخلاقی مشترک}\label{subsec:human-rights}

\thinker{جیمز گریفین}\footnote{\lr{Griffin, J. (2008). \textit{On Human Rights}. Oxford University Press.}} و \thinker{آمارتیا سن}\footnote{\lr{Sen, A. (2009). \textit{The Idea of Justice}. Harvard University Press.}} از زوایای مختلف نشان داده‌اند که حقوق بشر نقطهٔ اشتراک نظریه‌های رقیب است. حتی فضیلت‌گرایانی مانند \thinker{مارتا نوسبام}\footnote{\lr{Nussbaum, M. (2006). \textit{Frontiers of Justice}. Harvard University Press.}} با رویکرد قابلیت‌ها به تأیید حقوق بنیادین رسیده‌اند.

\subsection{مسئولیت در قبال نسل‌های آینده}\label{subsec:future-gen}

\concept{اصل پایداری} و مسئولیت بین‌نسلی از جمله نقاط اجماع رو به رشد است. \thinker{دِرِک پارفیت}\footnote{\lr{Parfit, D. (1984). \textit{Reasons and Persons}. Oxford University Press, Part~IV.}} با طرح \concept{مسئلهٔ عدم هویت} (\lat{Non-identity Problem}) پرسش‌های عمیقی مطرح کرد، اما اجماع عملی بر وجود مسئولیت شکل گرفته است.

\begin{tcolorbox}[wavebox, title=نقاط اجماع عملی]
\begin{enumerate}[label=\color{AccentTeal}\textbf{\arabic*.}, nosep]
  \item ممنوعیت آسیب‌رسانی بی‌دلیل و شکنجه
  \item احترام به کرامت ذاتی هر انسان
  \item ضرورت بی‌طرفی و انصاف در رویه‌ها
  \item حقوق بشر به‌عنوان حداقل اخلاقی
  \item مسئولیت در قبال نسل‌های آینده و محیط‌زیست
  \item ارزش صداقت، وفای به عهد، و احترام به استقلال فردی
\end{enumerate}
\end{tcolorbox}


% ══════════════════════════════════════════════════════════════
%  بخش ۹: موضوعات پژوهشی نوظهور
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{موضوعات پژوهشی نوظهور و پژوهشگران شاخص}\label{sec:emerging}

\subsection{اخلاق هوش مصنوعی (\lat{AI Ethics})}\label{subsec:ai-ethics}

با گسترش فناوری‌های هوشمند، پرسش‌های اخلاقی جدیدی پدید آمده‌اند: تصمیم‌گیری الگوریتمی، سوگیری ماشینی، مسئولیت در برابر خودروهای خودران، و حریم خصوصی داده‌ها.

\begin{itemize}[nosep]
  \item \thinker{لوچیانو فلوریدی}\footnote{\lr{Floridi, L. (2013). \textit{The Ethics of Information}. Oxford University Press.}}: فلسفهٔ اطلاعات و اخلاق دیجیتال
  \item \thinker{نیک بوستروم}\footnote{\lr{Bostrom, N. (2014). \textit{Superintelligence}. Oxford University Press.}}: خطرات وجودی هوش مصنوعی
  \item \thinker{وِندل والاچ}\footnote{\lr{Wallach, W. \& Allen, C. (2009). \textit{Moral Machines}. Oxford University Press.}}: ماشین‌های اخلاقی
  \item \thinker{تیم‌نیت گِبرو}\footnote{\lr{Gebru, T. et al. (2021). ``On the Dangers of Stochastic Parrots.'' \textit{FAccT '21}.}}: عدالت الگوریتمی و سوگیری
\end{itemize}

\subsection{عصب‌اخلاق (\lat{Neuroethics})}\label{subsec:neuroethics}

\thinker{جاشوا گرین}\src{Greene 2013}، \thinker{مولی کراکت}\footnote{\lr{Crockett, M. (2013). ``Models of morality.'' \textit{Trends in Cognitive Sciences}, 17(8), 363--366.}} و \thinker{آدینا روسکیز}\footnote{\lr{Roskies, A. (2002). ``Neuroethics for the New Millenium.'' \textit{Neuron}, 35, 21--23.}} در خط مقدم پژوهش‌هایی قرار دارند که ساختارهای عصبی تصمیم‌گیری اخلاقی را بررسی می‌کنند.

\begin{tcolorbox}[defbox, title=پرسش بنیادین عصب‌اخلاق]
آیا یافته‌های عصب‌شناسی اخلاقی \textbf{هنجاری} هستند یا صرفاً \textbf{توصیفی}؟ آیا دانستن اینکه شهود ما از سیستم عاطفی مغز سرچشمه می‌گیرد، آن شهود را بی‌اعتبار می‌کند؟
\end{tcolorbox}

\subsection{اخلاق زیست‌محیطی (\lat{Environmental Ethics})}\label{subsec:env-ethics}

\begin{itemize}[nosep]
  \item \thinker{آلدو لئوپولد}\footnote{\lr{Leopold, A. (1949). \textit{A Sand County Almanac}. Oxford University Press.}}: اخلاق زمین (\lat{Land Ethic})
  \item \thinker{آرنه نِس}\footnote{\lr{Næss, A. (1973). ``The Shallow and the Deep.'' \textit{Inquiry}, 16, 95--100.}}: بوم‌شناسی ژرف
  \item \thinker{دیل جیمیسون}\footnote{\lr{Jamieson, D. (2014). \textit{Reason in a Dark Time}. Oxford University Press.}}: اخلاق تغییر اقلیم
  \item \thinker{رابین آتفیلد}\footnote{\lr{Attfield, R. (2014). \textit{Environmental Ethics}. 2nd ed. Polity.}}: اخلاق محیط‌زیست جامع
\end{itemize}

\subsection{اخلاق زیست‌پزشکی (\lat{Bioethics})}\label{subsec:bioethics}

\begin{itemize}[nosep]
  \item \thinker{تام بیوچمپ} و \thinker{جیمز چیلدرس}\footnote{\lr{Beauchamp, T. \& Childress, J. (2019). \textit{Principles of Biomedical Ethics}. 8th ed. Oxford University Press.}}: چهار اصل اخلاق زیست‌پزشکی (خودمختاری، سودرسانی، آسیب‌نرسانی، عدالت)
  \item \thinker{جولیان ساوولسکو}\footnote{\lr{Savulescu, J. (2001). ``Procreative Beneficence.'' \textit{Bioethics}, 15(5-6), 413--426.}}: ارتقای ژنتیکی
  \item \thinker{پیتر سینگر}: حقوق حیوانات و اخلاق آغاز و پایان حیات
\end{itemize}

\subsection{اخلاق فمینیستی و اخلاق مراقبت (\lat{Care Ethics})}\label{subsec:feminist-ethics}

\thinker{کرول گیلیگان}\footnote{\lr{Gilligan, C. (1982). \textit{In a Different Voice}. Harvard University Press.}} و \thinker{نِل نادینگز}\footnote{\lr{Noddings, N. (1984). \textit{Caring: A Feminine Approach to Ethics}. University of California Press.}} اخلاق مراقبت را به‌عنوان بدیلی برای مدل‌های انتزاعی و اصل‌محور مطرح کردند. \thinker{ویرجینیا هِلد}\footnote{\lr{Held, V. (2006). \textit{The Ethics of Care}. Oxford University Press.}} این رویکرد را به حوزهٔ فلسفهٔ سیاسی گسترش داده است.

\subsection{فلسفهٔ اخلاق تجربی (\lat{Experimental Philosophy})}\label{subsec:xphi}

\thinker{جاشوا نوب}\footnote{\lr{Knobe, J. (2003). ``Intentional Action and Side Effects.'' \textit{Analysis}, 63(3), 190--194.}} و \thinker{شان نیکلز}\footnote{\lr{Nichols, S. (2004). \textit{Sentimental Rules}. Oxford University Press.}} با بررسی تجربی شهودهای اخلاقی عامه، پلی میان فلسفهٔ تحلیلی و علوم شناختی زده‌اند. این رویکرد نشان داده که شهودهای اخلاقی تحت تأثیر عوامل نامربوطی مانند ترتیب سؤالات، فرهنگ و حتی دمای محیط قرار می‌گیرند.

\vspace{0.5\baselineskip}

% ─── نقشهٔ مفهومی موضوعات نوظهور ────────────────────────────
\needspace{8\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  mindmap,
  every node/.style={concept, font=\footnotesize, minimum size=18mm, text width=18mm, align=center},
  root concept/.append style={
    concept color=PrimaryDeep, text=white, font=\small\bfseries,
    minimum size=28mm, text width=26mm
  },
  level 1 concept/.append style={
    sibling angle=60, level distance=42mm
  },
  grow cyclic,
]
  \node[root concept] {\rl{موضوعات}\\[-2pt]\rl{نوظهور}}
    child [concept color=AccentTeal] {
      node {\rl{اخلاق}\\[-2pt]\rl{هوش مصنوعی}}
    }
    child [concept color=AccentAmber] {
      node {\rl{عصب‌اخلاق}}
    }
    child [concept color=AccentGreen] {
      node {\rl{اخلاق}\\[-2pt]\rl{محیط‌زیست}}
    }
    child [concept color=AccentPurple] {
      node {\rl{اخلاق}\\[-2pt]\rl{زیست‌پزشکی}}
    }
    child [concept color=AccentRed] {
      node {\rl{اخلاق}\\[-2pt]\rl{مراقبت}}
    }
    child [concept color=EraEarlyMod] {
      node {\rl{فلسفهٔ}\\[-2pt]\rl{تجربی}}
    };
\end{tikzpicture}
\end{adjustbox}
\caption{نقشهٔ مفهومی موضوعات پژوهشی نوظهور در فلسفهٔ اخلاق}\label{fig:emerging-map}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  بخش ۱۰: آثار و نتایج در زیست جمعی
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{آثار و نتایج هر انتخاب اخلاقی در زیست جمعی}\label{sec:implications}

هر پاسخی که به پرسش‌های بنیادین اخلاقی داده شود، پیامدهای عینی در ساختارهای اجتماعی، حقوقی، اقتصادی و فناورانه دارد. در این بخش، نتایج عملی هر رویکرد اخلاقی اصلی را بررسی می‌کنیم.

\subsection{پیامدهای واقع‌گرایی و ناواقع‌گرایی}\label{subsec:impl-realism}

\subsubsection{واقع‌گرایی اخلاقی}
اگر واقعیت‌های اخلاقی عینی وجود دارند:
\begin{itemize}[nosep]
  \item حقوق بشر \textbf{کشف} می‌شوند نه \textbf{اختراع}
  \item نقد فرهنگ‌ها و نظام‌های سیاسی بر مبنای معیارهای فرافرهنگی مشروعیت می‌یابد
  \item نسبیت‌گرایی فرهنگی رد می‌شود؛ رویه‌هایی مانند ختنهٔ زنان یا نظام کاست قابل محکومیت عینی هستند
  \item خطر: \enemy{استبداد اخلاقی} — کسانی که مدعی دسترسی ممتاز به حقیقت اخلاقی‌اند
\end{itemize}

\subsubsection{ناواقع‌گرایی اخلاقی}
اگر واقعیت‌های اخلاقی عینی وجود ندارند:
\begin{itemize}[nosep]
  \item اخلاق محصول توافق اجتماعی یا بیان احساسات است
  \item نظام‌های حقوقی باید بر \textbf{رویه‌های دموکراتیک} مبتنی شوند نه ادعاهای فراتجربی
  \item تساهل فرهنگی تقویت می‌شود اما: خطر \enemy{نسبیت‌گرایی افراطی} و ناتوانی در نقد ظلم
  \item سازه‌انگاری رالزی راه میانه‌ای پیشنهاد می‌کند: اصول عادلانه محصول رویه‌اند نه واقعیت عینی، اما همچنان الزام‌آورند
\end{itemize}

\subsection{پیامدهای نظریه‌های هنجاری}\label{subsec:impl-normative}

\needspace{8\baselineskip}
\nopagebreak[4]%
\vspace{0.5\baselineskip}
\noindent%
\begin{table}[htbp]
\centering
\caption{مقایسهٔ پیامدهای عملی نظریه‌های هنجاری اصلی}\label{tab:implications}
\begin{adjustbox}{max width=\linewidth}
\begin{tabular}{>{\bfseries\color{PrimaryDeep}}r  p{3.5cm}  p{3.5cm}  p{3.5cm}}
\toprule
\textbf{\color{PrimaryDeep}حوزه} & \textbf{پیامدگرایی} & \textbf{وظیفه‌گرایی} & \textbf{فضیلت‌گرایی} \\
\midrule
سیاست‌گذاری عمومی
  & تحلیل هزینه-فایده؛ بیشینه‌سازی رفاه کل
  & حقوق بنیادین غیرقابل نقض
  & پرورش فضایل مدنی؛ نهادهای فضیلت‌محور \\
\rowcolor{NeutralLight}
عدالت کیفری
  & مجازات بازدارنده و اصلاحی
  & مجازات متناسب با جرم (استحقاق)
  & بازپروری و اصلاح خصلت مجرم \\
اخلاق پزشکی
  & بیشینه‌سازی سلامت جمعی
  & رضایت آگاهانه و خودمختاری بیمار
  & پرورش فضایل حرفه‌ای پزشک \\
\rowcolor{NeutralLight}
اقتصاد و توزیع
  & بیشینه‌سازی مجموع رفاه
  & اصول عدالت توزیعی رالز
  & اقتصاد مبتنی بر شکوفایی انسانی (سن، نوسبام) \\
محیط‌زیست
  & محاسبهٔ سود-زیان نسل‌ها
  & وظیفهٔ عدم آسیب به طبیعت
  & فضیلت مراقبت از زمین \\
\rowcolor{NeutralLight}
فناوری و هوش مصنوعی
  & بیشینه‌سازی سود فناوری
  & حریم خصوصی و شفافیت به‌عنوان حق
  & مسئولیت‌پذیری و خردمندی طراح \\
\bottomrule
\end{tabular}
\end{adjustbox}
\end{table}

\subsection{نتایج در حوزهٔ حقوق و قانون‌گذاری}\label{subsec:impl-law}

انتخاب‌های فرااخلاقی مستقیماً بر نظام حقوقی تأثیر می‌گذارند:

\begin{itemize}[nosep]
  \item \concept{حقوق طبیعی} (مبتنی بر واقع‌گرایی): حقوقی وجود دارند که هیچ قانون‌گذاری نمی‌تواند نقض کند
  \item \concept{پوزیتیویسم حقوقی} (قابل‌سازگاری با ناواقع‌گرایی): حقوق آن است که قانون‌گذار وضع کرده
  \item \concept{رویکرد قابلیت‌ها} (\lat{Capabilities Approach}): قوانین باید قابلیت‌های اساسی انسان‌ها را تضمین کنند\footnote{%
  \lr{Nussbaum, M. (2011). \textit{Creating Capabilities}. Harvard University Press.}}
\end{itemize}

\subsection{نتایج در حوزهٔ تربیت اخلاقی}\label{subsec:impl-education}

\begin{itemize}[nosep]
  \item \textbf{فضیلت‌گرایی}: تربیت اخلاقی = پرورش خصلت‌ها از طریق الگو و عادت
  \item \textbf{وظیفه‌گرایی}: تربیت اخلاقی = آموزش اصول عقلانی و استدلال اخلاقی (مراحل رشد اخلاقی \thinker{کولبرگ})\footnote{\lr{Kohlberg, L. (1981). \textit{The Philosophy of Moral Development}. Harper \& Row.}}
  \item \textbf{پیامدگرایی}: تربیت اخلاقی = آموزش تفکر نقادانه دربارهٔ پیامدها
  \item \textbf{اخلاق مراقبت}: تربیت اخلاقی = پرورش همدلی و توجه به دیگری
\end{itemize}

\subsection{نتایج در حوزهٔ روابط بین‌الملل}\label{subsec:impl-intl}

\begin{itemize}[nosep]
  \item \concept{جهان‌وطنی اخلاقی} (\lat{Cosmopolitanism}): هر انسان شایستهٔ توجه اخلاقی برابر است، فارغ از ملیت.\footnote{%
  \lr{Pogge, T. (2008). \textit{World Poverty and Human Rights}. 2nd ed. Polity.}} \thinker{پیتر سینگر} و \thinker{توماس پوگ} از مدافعان شاخص‌اند.
  \item \concept{ملی‌گرایی اخلاقی}: وفاداری‌های خاص مشروع‌اند. \thinker{دیوید میلر}\footnote{\lr{Miller, D. (1995). \textit{On Nationality}. Oxford University Press.}} دفاع استدلالی ارائه کرده است.
  \item \concept{عدالت جهانی}: آیا اصول عدالت رالزی قابل تعمیم به سطح جهانی‌اند؟ \thinker{رالز} خود در \textit{قانون مردمان}\footnote{\lr{Rawls, J. (1999). \textit{The Law of Peoples}. Harvard University Press.}} پاسخ منفی داد، اما \thinker{بیتز}\footnote{\lr{Beitz, C. (1979). \textit{Political Theory and International Relations}. Princeton University Press.}} و \thinker{پوگ} مخالفت کردند.
\end{itemize}

% ─── نمودار تأثیر بر حوزه‌ها ──────────────────────────────────
\needspace{8\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  every node/.style={font=\footnotesize, align=center},
  box/.style={
    draw, thick, rounded corners=3pt,
    minimum width=24mm, minimum height=10mm,
    fill=#1!12, draw=#1, font=\footnotesize\bfseries
  },
  arr/.style={-Stealth, thick, color=NeutralDark},
]
  % مرکز
  \node[box=PrimaryDeep, text=white, minimum width=30mm] (center) at (0,0)
    {\rl{انتخاب‌های}\\[-2pt]\rl{اخلاقی بنیادین}};

  % حوزه‌ها
  \node[box=AccentTeal] (law) at (4.5, 2) {\rl{حقوق و قانون}};
  \node[box=AccentAmber] (pol) at (4.5, 0) {\rl{سیاست‌گذاری}};
  \node[box=AccentGreen] (edu) at (4.5,-2) {\rl{تربیت}};
  \node[box=AccentPurple] (tech) at (-4.5, 2) {\rl{فناوری}};
  \node[box=AccentRed] (econ) at (-4.5, 0) {\rl{اقتصاد}};
  \node[box=EraEarlyMod] (intl) at (-4.5,-2) {\rl{روابط بین‌الملل}};

  \draw[arr] (center) -- (law);
  \draw[arr] (center) -- (pol);
  \draw[arr] (center) -- (edu);
  \draw[arr] (center) -- (tech);
  \draw[arr] (center) -- (econ);
  \draw[arr] (center) -- (intl);
\end{tikzpicture}
\end{adjustbox}
\caption{تأثیر انتخاب‌های اخلاقی بنیادین بر حوزه‌های زیست جمعی}\label{fig:implications}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  بخش ۱۱: نتیجه‌گیری
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{نتیجه‌گیری و افق‌های پیش رو}\label{sec:conclusion}

\subsection{جمع‌بندی: نقاط کانونی و متغیر}\label{subsec:summary}

این مرور نشان داد که فلسفهٔ اخلاق حوزه‌ای زنده، پویا و چندلایه است. نقاط کانونی اصلی عبارتند از:

\begin{enumerate}[label=\textbf{\arabic*.}, nosep]
  \item \concept{پرسش هستی‌شناختی}: آیا واقعیت اخلاقی مستقل از ذهن وجود دارد؟
  \item \concept{پرسش معرفت‌شناختی}: اگر وجود دارد، چگونه می‌توان به آن دست یافت؟
  \item \concept{پرسش هنجاری}: معیار درست و نادرست چیست؟ خصلت فاعل، ذات عمل، یا پیامد؟
  \item \concept{پرسش انگیزشی}: رابطهٔ شناخت اخلاقی و عمل اخلاقی چیست؟
  \item \concept{پرسش کاربردی}: چگونه اصول اخلاقی را در جهان پیچیدهٔ معاصر اعمال کنیم؟
\end{enumerate}

\subsection{عدم تقلیل‌پذیری}\label{subsec:irreducibility}

یکی از درس‌های مهم این مرور آن است که هیچ‌یک از نظریه‌های اخلاقی — فضیلت‌گرایی، وظیفه‌گرایی، پیامدگرایی — به‌تنهایی تمام ابعاد تجربهٔ اخلاقی را پوشش نمی‌دهد. \thinker{دِرِک پارفیت}\src{Parfit 2011} در \textit{دربارهٔ آنچه مهم است} استدلال کرد که این سه نظریه در یک کوه اما از سمت‌های مختلف بالا می‌روند و در نهایت به مقصد مشترکی می‌رسند.

\begin{tcolorbox}[quotebox]
«وظیفه‌گرایان، پیامدگرایان و فضیلت‌اندیشان مانند کوه‌نوردانی هستند که از وجوه مختلف یک کوه بالا می‌روند. اگر بالاتر برویم، به هم نزدیک‌تر خواهیم شد.»\\
\hfill — \thinker{دِرِک پارفیت}، \textit{دربارهٔ آنچه مهم است} (۲۰۱۱)
\end{tcolorbox}

\subsection{چالش‌های قرن بیست‌ویکم}\label{subsec:challenges}

\begin{enumerate}[label=\textbf{\alph*.}, nosep]
  \item \concept{هوش مصنوعی عمومی}: چگونه اخلاق را به ماشین‌ها بیاموزیم؟
  \item \concept{بحران اقلیمی}: چگونه مسئولیت بین‌نسلی و بین‌المللی را توزیع کنیم؟
  \item \concept{ارتقای ژنتیکی}: آیا ویرایش ژنوم انسانی مجاز است؟
  \item \concept{پساحقیقت}: چگونه گفتمان اخلاقی را در عصر اطلاعات نادرست حفظ کنیم؟
  \item \concept{نابرابری جهانی}: آیا وظیفهٔ اخلاقی برای بازتوزیع جهانی ثروت وجود دارد؟
  \item \concept{تنوع فرهنگی}: چگونه می‌توان اصول عام اخلاقی را با احترام به تنوع فرهنگی سازگار کرد؟
\end{enumerate}

\subsection{پیشنهادات پژوهشی}\label{subsec:future}

\begin{itemize}[nosep]
  \item تعمیق گفت‌وگوی بین‌فرهنگی در فلسفهٔ اخلاق (تلفیق سنت‌های غربی، اسلامی، کنفوسیوسی و آفریقایی)
  \item پژوهش‌های بین‌رشته‌ای میان فلسفه، علوم شناختی، و هوش مصنوعی
  \item بسط رویکرد قابلیت‌ها به حوزهٔ اخلاق دیجیتال
  \item بازاندیشی مفهوم مسئولیت اخلاقی در عصر سیستم‌های خودکار
  \item بررسی تجربی اثربخشی رویکردهای مختلف تربیت اخلاقی
\end{itemize}

% ─── نمودار ترکیبی پایانی ────────────────────────────────────
\needspace{10\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  every node/.style={font=\footnotesize, align=center},
  layer/.style={
    draw, very thick, rounded corners=5pt,
    minimum width=100mm, minimum height=14mm,
    font=\small\bfseries
  },
  arr/.style={-Stealth, very thick, color=NeutralDark},
]
  % لایه‌ها از پایین به بالا
  \node[layer, fill=PrimaryDeep!12, draw=PrimaryDeep] (meta) at (0,0)
    {\rl{\color{PrimaryDeep}فرااخلاق: هستی‌شناسی — معرفت‌شناسی — معناشناسی — روان‌شناسی}};

  \node[layer, fill=AccentTeal!12, draw=AccentTeal] (norm) at (0,2)
    {\rl{\color{AccentTeal}اخلاق هنجاری: فضیلت‌گرایی — وظیفه‌گرایی — پیامدگرایی}};

  \node[layer, fill=AccentAmber!12, draw=AccentAmber] (applied) at (0,4)
    {\rl{\color{AccentAmber}اخلاق کاربردی: پزشکی — محیط‌زیست — فناوری — سیاست}};

  \node[layer, fill=AccentGreen!12, draw=AccentGreen] (life) at (0,6)
    {\rl{\color{AccentGreen}زیست جمعی: حقوق — قانون — اقتصاد — تربیت — روابط بین‌الملل}};

  % فلش‌ها
  \draw[arr] (meta.north) -- (norm.south) node[midway, left, font=\scriptsize, color=NeutralDark] {\rl{مبنا}};
  \draw[arr] (norm.north) -- (applied.south) node[midway, left, font=\scriptsize, color=NeutralDark] {\rl{اصول}};
  \draw[arr] (applied.north) -- (life.south) node[midway, left, font=\scriptsize, color=NeutralDark] {\rl{اجرا}};

  % بازخورد
  \draw[arr, dashed, AccentRed] (life.east) -- ++(1.5,0) |- (meta.east)
    node[midway, right, font=\scriptsize, color=AccentRed] {\rl{بازخورد تجربی}};
\end{tikzpicture}
\end{adjustbox}
\caption{مدل لایه‌ای فلسفهٔ اخلاق: از فرااخلاق تا زیست جمعی}\label{fig:layers}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  کتاب‌نامه
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section*{کتاب‌نامه}\label{sec:bibliography}
\addcontentsline{toc}{section}{کتاب‌نامه}

\begin{enumerate}[label={[\arabic*]}, nosep, leftmargin=2em]

\item \lr{Anscombe, G.E.M. (1958). ``Modern Moral Philosophy.'' \textit{Philosophy}, 33(124), 1--19.}

\item \lr{Aristotle. \textit{Nicomachean Ethics}, trans. Irwin, T. (1999). Hackett Publishing.}

\item \lr{Attfield, R. (2014). \textit{Environmental Ethics: An Overview for the Twenty-First Century}. 2nd ed. Polity.}

\item \lr{Audi, R. (2004). \textit{The Good in the Right: A Theory of Intuition and Intrinsic Value}. Princeton University Press.}

\item \lr{Ayer, A.J. (1936). \textit{Language, Truth and Logic}. Victor Gollancz.}

\item \lr{Beauchamp, T. \& Childress, J. (2019). \textit{Principles of Biomedical Ethics}. 8th ed. Oxford University Press.}

\item \lr{Beitz, C. (1979). \textit{Political Theory and International Relations}. Princeton University Press.}

\item \lr{Bentham, J. (1789). \textit{An Introduction to the Principles of Morals and Legislation}.}

\item \lr{Blackburn, S. (1993). \textit{Essays in Quasi-Realism}. Oxford University Press.}

\item \lr{Bostrom, N. (2014). \textit{Superintelligence: Paths, Dangers, Strategies}. Oxford University Press.}

\item \lr{Brink, D.O. (1989). \textit{Moral Realism and the Foundations of Ethics}. Cambridge University Press.}

\item \lr{Crisp, R. \& Slote, M. (eds.) (1997). \textit{Virtue Ethics}. Oxford University Press.}

\item \lr{Crockett, M. (2013). ``Models of morality.'' \textit{Trends in Cognitive Sciences}, 17(8), 363--366.}

\item \lr{Dancy, J. (2004). \textit{Ethics without Principles}. Oxford University Press.}

\item \lr{Daniels, N. (1979). ``Wide Reflective Equilibrium and Theory Acceptance in Ethics.'' \textit{Journal of Philosophy}, 76(5), 256--282.}

\item \lr{Enoch, D. (2011). \textit{Taking Morality Seriously: A Defense of Robust Realism}. Oxford University Press.}

\item \lr{Floridi, L. (2013). \textit{The Ethics of Information}. Oxford University Press.}

\item \lr{Foot, P. (1967). ``The Problem of Abortion and the Doctrine of Double Effect.'' \textit{Oxford Review}, 5, 5--15.}

\item \lr{Foot, P. (2001). \textit{Natural Goodness}. Oxford University Press.}

\item \lr{Gibbard, A. (2003). \textit{Thinking How to Live}. Harvard University Press.}

\item \lr{Gilligan, C. (1982). \textit{In a Different Voice}. Harvard University Press.}

\item \lr{Greene, J. (2013). \textit{Moral Tribes: Emotion, Reason, and the Gap Between Us and Them}. Penguin.}

\item \lr{Griffin, J. (2008). \textit{On Human Rights}. Oxford University Press.}

\item \lr{Habermas, J. (1990). \textit{Moral Consciousness and Communicative Action}. MIT Press.}

\item \lr{Held, V. (2006). \textit{The Ethics of Care: Personal, Political, and Global}. Oxford University Press.}

\item \lr{Huemer, M. (2005). \textit{Ethical Intuitionism}. Palgrave Macmillan.}

\item \lr{Hume, D. (1739). \textit{A Treatise of Human Nature}.}

\item \lr{Hursthouse, R. (1999). \textit{On Virtue Ethics}. Oxford University Press.}

\item \lr{Jamieson, D. (2014). \textit{Reason in a Dark Time: Why the Struggle Against Climate Change Failed}. Oxford University Press.}

\item \lr{Joyce, R. (2001). \textit{The Myth of Morality}. Cambridge University Press.}

\item \lr{Kant, I. (1785). \textit{Groundwork of the Metaphysics of Morals}.}

\item \lr{Kateb, G. (2011). \textit{Human Dignity}. Harvard University Press.}

\item \lr{Knobe, J. (2003). ``Intentional Action and Side Effects in Ordinary Language.'' \textit{Analysis}, 63(3), 190--194.}

\item \lr{Kohlberg, L. (1981). \textit{The Philosophy of Moral Development}. Harper \& Row.}

\item \lr{Korsgaard, C.M. (1996). \textit{The Sources of Normativity}. Cambridge University Press.}

\item \lr{Leopold, A. (1949). \textit{A Sand County Almanac}. Oxford University Press.}

\item \lr{Mackie, J.L. (1977). \textit{Ethics: Inventing Right and Wrong}. Penguin.}

\item \lr{MacIntyre, A. (1981). \textit{After Virtue: A Study in Moral Theory}. University of Notre Dame Press.}

\item \lr{McGrath, S. (2008). ``Moral Disagreement and Moral Expertise.'' \textit{Oxford Studies in Metaethics}, 3, 87--108.}

\item \lr{McKeever, S. \& Ridge, M. (2006). \textit{Principled Ethics: Generalism as a Regulative Ideal}. Oxford University Press.}

\item \lr{Mill, J.S. (1863). \textit{Utilitarianism}.}

\item \lr{Miller, A. (2013). \textit{Contemporary Metaethics: An Introduction}. 2nd ed. Polity.}

\item \lr{Miller, D. (1995). \textit{On Nationality}. Oxford University Press.}

\item \lr{Moore, G.E. (1903). \textit{Principia Ethica}. Cambridge University Press.}

\item \lr{Næss, A. (1973). ``The Shallow and the Deep, Long-Range Ecology Movement.'' \textit{Inquiry}, 16, 95--100.}

\item \lr{Nichols, S. (2004). \textit{Sentimental Rules: On the Natural Foundations of Moral Judgment}. Oxford University Press.}

\item \lr{Noddings, N. (1984). \textit{Caring: A Feminine Approach to Ethics and Moral Education}. University of California Press.}

\item \lr{Nussbaum, M. (2006). \textit{Frontiers of Justice: Disability, Nationality, Species Membership}. Harvard University Press.}

\item \lr{Nussbaum, M. (2011). \textit{Creating Capabilities: The Human Development Approach}. Harvard University Press.}

\item \lr{Parfit, D. (1984). \textit{Reasons and Persons}. Oxford University Press.}

\item \lr{Parfit, D. (2011). \textit{On What Matters}. Vols. 1--2. Oxford University Press.}

\item \lr{Pogge, T. (2008). \textit{World Poverty and Human Rights}. 2nd ed. Polity.}

\item \lr{Prinz, J. (2007). \textit{The Emotional Construction of Morals}. Oxford University Press.}

\item \lr{Railton, P. (1986). ``Moral Realism.'' \textit{Philosophical Review}, 95(2), 163--207.}

\item \lr{Rawls, J. (1971). \textit{A Theory of Justice}. Harvard University Press.}

\item \lr{Rawls, J. (1980). ``Kantian Constructivism in Moral Theory.'' \textit{Journal of Philosophy}, 77(9), 515--572.}

\item \lr{Rawls, J. (1999). \textit{The Law of Peoples}. Harvard University Press.}

\item \lr{Roskies, A. (2002). ``Neuroethics for the New Millenium.'' \textit{Neuron}, 35, 21--23.}

\item \lr{Ross, W.D. (1930). \textit{The Right and the Good}. Oxford University Press.}

\item \lr{Savulescu, J. (2001). ``Procreative Beneficence.'' \textit{Bioethics}, 15(5-6), 413--426.}

\item \lr{Scanlon, T.M. (1998). \textit{What We Owe to Each Other}. Harvard University Press.}

\item \lr{Sen, A. (2009). \textit{The Idea of Justice}. Harvard University Press.}

\item \lr{Shafer-Landau, R. (2003). \textit{Moral Realism: A Defence}. Oxford University Press.}

\item \lr{Singer, P. (2011). \textit{Practical Ethics}. 3rd ed. Cambridge University Press.}

\item \lr{Sinnott-Armstrong, W. (2006). \textit{Moral Skepticisms}. Oxford University Press.}

\item \lr{Slote, M. (2001). \textit{Morals from Motives}. Oxford University Press.}

\item \lr{Smith, M. (1994). \textit{The Moral Problem}. Blackwell.}

\item \lr{Stevenson, C.L. (1944). \textit{Ethics and Language}. Yale University Press.}

\item \lr{Street, S. (2006). ``A Darwinian Dilemma for Realist Theories of Value.'' \textit{Philosophical Studies}, 127(1), 109--166.}

\item \lr{Sturgeon, N. (1985). ``Moral Explanations.'' In Copp, D. \& Zimmerman, D. (eds.), \textit{Morality, Reason and Truth}. Rowman \& Allanheld.}

\item \lr{Thomson, J.J. (1985). ``The Trolley Problem.'' \textit{Yale Law Journal}, 94(6), 1395--1415.}

\item \lr{Wallach, W. \& Allen, C. (2009). \textit{Moral Machines: Teaching Robots Right from Wrong}. Oxford University Press.}

\end{enumerate}


% ══════════════════════════════════════════════════════════════
%  پیوست: واژه‌نامهٔ تطبیقی
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section*{پیوست: واژه‌نامهٔ تطبیقی فارسی-انگلیسی}\label{sec:glossary}
\addcontentsline{toc}{section}{پیوست: واژه‌نامه}

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{longtable}{r  l  r  l}
\toprule
\textbf{فارسی} & \textbf{\lr{English}} & \textbf{فارسی} & \textbf{\lr{English}} \\
\midrule
\endfirsthead
\toprule
\textbf{فارسی} & \textbf{\lr{English}} & \textbf{فارسی} & \textbf{\lr{English}} \\
\midrule
\endhead
\bottomrule
\endfoot
اخلاق & \lr{Ethics} & فرااخلاق & \lr{Metaethics} \\
\rowcolor{NeutralLight}
هستی‌شناسی اخلاقی & \lr{Moral Ontology} & معرفت‌شناسی اخلاقی & \lr{Moral Epistemology} \\
واقع‌گرایی اخلاقی & \lr{Moral Realism} & ناواقع‌گرایی اخلاقی & \lr{Moral Anti-realism} \\
\rowcolor{NeutralLight}
طبیعت‌گرایی & \lr{Naturalism} & غیرطبیعت‌گرایی & \lr{Non-naturalism} \\
خطاگرایی & \lr{Error Theory} & بیانگرایی & \lr{Expressivism} \\
\rowcolor{NeutralLight}
عاطفه‌گرایی & \lr{Emotivism} & سازه‌انگاری & \lr{Constructivism} \\
شهودگرایی & \lr{Intuitionism} & انسجام‌گرایی & \lr{Coherentism} \\
\rowcolor{NeutralLight}
شبه‌واقع‌گرایی & \lr{Quasi-realism} & شناخت‌گرایی & \lr{Cognitivism} \\
فضیلت‌گرایی & \lr{Virtue Ethics} & وظیفه‌گرایی & \lr{Deontology} \\
\rowcolor{NeutralLight}
پیامدگرایی & \lr{Consequentialism} & سودگرایی & \lr{Utilitarianism} \\
امر مطلق & \lr{Categorical Imperative} & سعادت & \lr{Eudaimonia} \\
\rowcolor{NeutralLight}
اخلاق مراقبت & \lr{Care Ethics} & جهان‌وطنی & \lr{Cosmopolitanism} \\
تعادل تأملی & \lr{Reflective Equilibrium} & خاص‌گرایی & \lr{Particularism} \\
\rowcolor{NeutralLight}
درون‌گرایی انگیزشی & \lr{Motivational Internalism} & برون‌گرایی انگیزشی & \lr{Motivational Externalism} \\
عصب‌اخلاق & \lr{Neuroethics} & رویکرد قابلیت‌ها & \lr{Capabilities Approach} \\
\end{longtable}
\end{adjustbox}
\end{center}


\end{document}
```

---

## خلاصهٔ ویژگی‌های سند

| ویژگی | توضیح |
|--------|-------|
| **بخش‌ها** | ۱۱ بخش اصلی + کتاب‌نامه + واژه‌نامه |
| **نمودارهای TikZ** | ۶ شکل: نقشهٔ هستی‌شناسی، خط زمانی، نقشهٔ هنجاری، نقشهٔ ذهنی موضوعات نوظهور، نمودار تأثیر، مدل لایه‌ای |
| **جداول** | ۳ جدول مقایسه‌ای: معرفت‌شناسی، جدال‌ها، پیامدهای عملی |
| **جعبه‌های ویژه** | `defbox` (تعاریف)، `wavebox` (اجماع‌ها)، `quotebox` (نقل‌قول‌ها)، `enemybox` (چالش‌ها)، `mybox` (مفاهیم کلیدی) |
| **منابع** | ۷۱ ارجاع به منابع آکادمیک معتبر |
| **اندیشمندان** | بیش از ۴۰ اندیشمند شاخص |
| **واژه‌نامه** | ۲۸ واژهٔ تخصصی فارسی-انگلیسی |
| **سازگاری** | XePersian + RTL + TikZ با `\rl{}` + `adjustbox` برای کنترل عرض |

### تغییرات و رعایت قواعد

| خط/عنصر | مسئله | رفع |
|----------|-------|-----|
| TikZ nodes | متن فارسی در محیط LTR | همه با `\rl{}` پوشانده شد |
| جداول | احتمال سرریز از عرض صفحه | `adjustbox{max width=\linewidth}` |
| `needspace` | عنوان تنها در پایین صفحه | `\needspace{6\baselineskip}` قبل از هر بخش |
| `microtype` | ناسازگار با XeLaTeX | حذف شد |
| `xepersian` | باید آخرین بسته باشد | در انتها بارگذاری شد |
| فونت‌ها | باید بعد از `xepersian` | پس از آن تعریف شدند |
| `pdfencoding` | بوکمارک‌های فارسی | `unicode` تنظیم شد |
| `longtable` | واژه‌نامه بلند | با `longtable` + `adjustbox` |
| هر `tcolorbox` | `before skip` و `after skip` | همه دارای `12pt` |
| هر `tcolorbox` | `breakable` | همه دارند |

در ادامه، بخش‌های تکمیلی و تعمیقی را ارائه می‌دهم که می‌توانند پیش از بخش نتیجه‌گیری (بخش ۱۱) در سند اصلی درج شوند، یا به‌عنوان پیوست‌های جداگانه افزوده شوند:

```latex
% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی الف: سنت‌های غیرغربی در فلسفهٔ اخلاق
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{سنت‌های غیرغربی در فلسفهٔ اخلاق}\label{sec:nonwestern}

مرور جامع فلسفهٔ اخلاق بدون توجه به سنت‌های غیرغربی ناقص خواهد بود. این سنت‌ها
نه‌تنها غنای مفهومی دارند، بلکه پاسخ‌های متفاوتی به پرسش‌های بنیادین ارائه می‌دهند
و امکان گفت‌وگوی بین‌فرهنگی را فراهم می‌سازند.

\subsection{اخلاق در سنت اسلامی}\label{subsec:islamic-ethics}

فلسفهٔ اخلاق اسلامی سنتی غنی و چندلایه دارد که در تعامل با فلسفهٔ یونانی
و الهیات اسلامی شکل گرفته است.\footnote{%
\lr{Fakhry, M. (1991). \textit{Ethical Theories in Islam}. E.J. Brill.}}

\subsubsection{اخلاق فلسفی}
\thinker{فارابی} (م.\ ۹۵۰~م) اخلاق ارسطویی را با فلسفهٔ اسلامی تلفیق کرد و
در \textit{آراء اهل المدینة الفاضله} مدینهٔ فاضله‌ای ترسیم نمود که در آن فضایل
عقلان

<!-- POSSIBLE OVERLAP - REVIEW MANUALLY -->

```latex
% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی الف: سنت‌های غیرغربی در فلسفهٔ اخلاق (ادامه)
% ══════════════════════════════════════════════════════════════

\subsubsection{اخلاق فلسفی (ادامه)}
\thinker{فارابی} (م.\ ۹۵۰~م) اخلاق ارسطویی را با فلسفهٔ اسلامی تلفیق کرد و
در \textit{آراء اهل المدینة الفاضله} مدینهٔ فاضله‌ای ترسیم نمود که در آن فضایل
عقلانی و اخلاقی شهروندان به سعادت جمعی منتهی می‌شود.\footnote{%
\lr{Al-Farabi. \textit{On the Perfect State} (\textit{Mabadi' Ara' Ahl al-Madina al-Fadila}),
trans. Walzer, R. (1985). Oxford University Press.}}

\thinker{ابن‌سینا} (م.\ ۱۰۳۷~م) در بخش‌های پایانی \textit{الشفاء} و در
\textit{الإشارات و التنبیهات} به مباحث اخلاقی پرداخت و مراتب سعادت را
از سعادت حسی تا سعادت عقلانی تقسیم‌بندی کرد.\footnote{%
\lr{Goodman, L.E. (1992). \textit{Avicenna}. Routledge, Ch.~7.}}

\thinker{ابن‌مسکویه} (م.\ ۱۰۳۰~م) با اثر مهم \textit{تهذیب الاخلاق} یکی از
نظام‌مندترین تلاش‌ها برای ترکیب اخلاق ارسطویی، افلاطونی و اسلامی را صورت داد.
او فضایل چهارگانه (حکمت، شجاعت، عفت، عدالت) را در چارچوب نفس‌شناسی سه‌گانه
تبیین کرد.\footnote{%
\lr{Miskawayh. \textit{The Refinement of Character} (\textit{Tahdhib al-Akhlaq}),
trans. Zurayk, C. (1968). American University of Beirut.}}

\subsubsection{اخلاق عرفانی}
\thinker{غزالی} (م.\ ۱۱۱۱~م) در \textit{احیاء علوم الدین} و \textit{کیمیای سعادت}
رویکردی عرفانی-اخلاقی ارائه داد که در آن تزکیهٔ نفس و مجاهدت باطنی محور اصلی
حیات اخلاقی است. غزالی ضمن نقد فلسفهٔ محض، اخلاق را به تجربهٔ معنوی و ارتباط
با خداوند پیوند زد.\footnote{%
\lr{Ghazali. \textit{Ihya' 'Ulum al-Din}, partial trans. Skellie, W.J. (as
\textit{The Alchemy of Happiness}). Various editions.}}

\thinker{مولانا جلال‌الدین رومی} (م.\ ۱۲۷۳~م) در \textit{مثنوی معنوی} اخلاق
را در قالب حکایات و تمثیلات عرفانی بیان کرد. محوریت عشق، فنای نفس، و تعالی
روحانی در آثار او یک نظام اخلاقی ضمنی اما منسجم را شکل می‌دهد.\footnote{%
\lr{Chittick, W.C. (1983). \textit{The Sufi Path of Love: The Spiritual Teachings of Rumi}.
SUNY Press.}}

\subsubsection{اخلاق کلامی}
در کلام اسلامی، جدال میان \concept{معتزله} و \concept{اشاعره} دربارهٔ
رابطهٔ عقل و وحی در شناخت اخلاقی از مهم‌ترین مباحث است:

\begin{itemize}[nosep]
  \item \textbf{معتزله}: حُسن و قُبح عقلی‌اند (\concept{حُسن و قُبح ذاتی}).
  عقل بشری به‌طور مستقل قادر به تشخیص خوب و بد است، حتی پیش از ورود شریعت.
  \item \textbf{اشاعره}: حُسن و قُبح شرعی‌اند (\concept{حُسن و قُبح شرعی}).
  خوب آن است که خداوند امر کرده و بد آن است که نهی کرده. این موضع
  شباهت‌هایی با مسئلهٔ \concept{یوثیفرو} در فلسفهٔ غربی دارد.\footnote{%
  \lr{Hourani, G. (1985). \textit{Reason and Tradition in Islamic Ethics}.
  Cambridge University Press.}}
\end{itemize}

\begin{tcolorbox}[defbox, title=پرسش یوثیفرو در بستر اسلامی]
آیا عملی خوب است چون خداوند آن را خوب می‌داند (حُسن ذاتی — معتزله) یا عملی
خوب است چون خداوند به آن امر کرده (حُسن شرعی — اشاعره)؟ این همان پرسش
\concept{معضل یوثیفرو} (\lat{Euthyphro Dilemma}) است که
\thinker{افلاطون} در محاورهٔ یوثیفرو مطرح کرد.\footnote{%
\lr{Quinn, P. (2006). ``Theological Voluntarism.'' In Copp, D. (ed.),
\textit{The Oxford Handbook of Ethical Theory}. Oxford University Press.}}
\end{tcolorbox}

\subsection{اخلاق کنفوسیوسی}\label{subsec:confucian-ethics}

سنت اخلاقی کنفوسیوسی یکی از قدیمی‌ترین و تأثیرگذارترین نظام‌های اخلاقی
بشری است.\footnote{%
\lr{Van Norden, B. (2007). \textit{Virtue Ethics and Consequentialism in
Early Chinese Philosophy}. Cambridge University Press.}}

\subsubsection{\thinker{کنفوسیوس} (۵۵۱--۴۷۹ ق.م)}
\concept{رِن} (\lat{Ren} — انسان‌دوستی/خیرخواهی) و \concept{لی}
(\lat{Li} — آداب/نظم اجتماعی) دو مفهوم محوری اخلاق کنفوسیوسی هستند.
کنفوسیوس بر \concept{خودپروری} (\lat{self-cultivation}) تأکید داشت:
شخص فضیلتمند (\lat{junzi}) از طریق یادگیری، تأمل و عمل به آداب، به
کمال اخلاقی دست می‌یابد.\footnote{%
\lr{Confucius. \textit{Analerta}, trans. Slingerland, E. (2003). Hackett.}}

\subsubsection{\thinker{منسیوس} (۳۷۲--۲۸۹ ق.م)}
منسیوس بر \concept{طبیعت نیک انسان} تأکید کرد: همهٔ انسان‌ها چهار جوانهٔ
اخلاقی دارند (شفقت، شرم، احترام، تمییز درست و نادرست) که با پرورش به
فضایل کامل تبدیل می‌شوند.\footnote{%
\lr{Mencius. \textit{Mencius}, trans. Lau, D.C. (1970). Penguin.}}

\subsubsection{\thinker{شیون‌تزه} (حدود ۳۱۰--۲۳۵ ق.م)}
در مقابل منسیوس، شیون‌تزه معتقد بود طبیعت انسان بد است و فضیلت تنها از طریق
تربیت، آموزش و نهادهای اجتماعی حاصل می‌شود. این اختلاف شبیه جدال
طبیعت‌گرایی/سازه‌انگاری در فلسفهٔ غربی است.\footnote{%
\lr{Xunzi. \textit{Xunzi}, trans. Hutton, E.L. (2014). Princeton University Press.}}

\subsection{اخلاق بودایی}\label{subsec:buddhist-ethics}

اخلاق بودایی بر \concept{رنج} (\lat{dukkha})، \concept{شفقت}
(\lat{karuna}) و \concept{راه هشت‌گانه} (\lat{Noble Eightfold Path})
استوار است.\footnote{%
\lr{Keown, D. (2005). \textit{Buddhist Ethics: A Very Short Introduction}.
Oxford University Press.}}

\begin{itemize}[nosep]
  \item \concept{اَهیمسا} (\lat{Ahimsa} — عدم خشونت): اصل بنیادین اخلاق بودایی
  \item \concept{پنج سیلا} (\lat{Panca-sila}): پنج اصل اخلاقی پایه
  (پرهیز از کشتن، دزدی، دروغ، سوءرفتار جنسی، مسکرات)
  \item \thinker{دالایی لاما} این اصول را با زبان مدرن و در گفت‌وگو با
  علوم شناختی بازخوانی کرده است.\footnote{%
  \lr{Dalai Lama (1999). \textit{Ethics for the New Millennium}. Riverhead Books.}}
\end{itemize}

\thinker{دیمین کیون}\src{Keown 2005} استدلال کرده که اخلاق بودایی
با اخلاق فضیلت ارسطویی همخوانی‌های ساختاری دارد: هر دو بر شکوفایی انسانی،
خودپروری و حد وسط تأکید دارند.

\subsection{اخلاق آفریقایی: اوبونتو}\label{subsec:ubuntu}

\concept{اوبونتو} (\lat{Ubuntu}) — «من هستم چون ما هستیم» — فلسفهٔ اخلاقی
آفریقایی است که بر \concept{هویت رابطه‌ای} و \concept{اجتماع‌محوری} تأکید
دارد.\footnote{%
\lr{Metz, T. (2007). ``Toward an African Moral Theory.''
\textit{Journal of Political Philosophy}, 15(3), 321--341.}}

\thinker{تادئوس مِتز}\src{Metz 2007} اوبونتو را به‌صورت نظریهٔ اخلاقی
هنجاری صورت‌بندی کرده: عملی درست است اگر و فقط اگر ارتباطات هماهنگ
و مراقبتی میان انسان‌ها را ترویج کند. \thinker{کوامه گیِکِی}\footnote{%
\lr{Gyekye, K. (1997). \textit{Tradition and Modernity: Philosophical Reflections
on the African Experience}. Oxford University Press.}} نیز مشارکت مهمی
در صورت‌بندی فلسفهٔ اخلاق آفریقایی داشته است.

\begin{tcolorbox}[wavebox, title=مقایسهٔ سنت‌های اخلاقی: نقاط تمایز و تلاقی]
\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{tabular}{>{\bfseries\color{PrimaryDeep}}r  p{2.8cm}  p{2.8cm}  p{2.6cm}  p{2.6cm}}
\toprule
\textbf{\color{PrimaryDeep}مؤلفه} & \textbf{غربی} & \textbf{اسلامی} & \textbf{شرق آسیا} & \textbf{آفریقایی} \\
\midrule
محور فاعل
  & فرد خودمختار
  & بندهٔ خدا / خلیفه
  & عضو شبکهٔ روابط
  & عضو اجتماع \\
\rowcolor{NeutralLight}
منبع هنجاری
  & عقل / تجربه
  & عقل + وحی
  & آداب + خودپروری
  & هماهنگی اجتماعی \\
غایت اخلاقی
  & سعادت / رفاه / وظیفه
  & قرب الهی + سعادت
  & هماهنگی + تعالی
  & همبستگی + شکوفایی \\
\rowcolor{NeutralLight}
رابطهٔ فرد-جمع
  & تقدم فرد (لیبرالیسم)
  & توازن فرد-امت
  & تقدم نقش اجتماعی
  & تقدم اجتماع \\
\bottomrule
\end{tabular}
\end{adjustbox}
\end{center}
\end{tcolorbox}

% ─── نقشهٔ مفهومی سنت‌های غیرغربی ─────────────────────────────
\needspace{8\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  mindmap,
  every node/.style={concept, font=\footnotesize, minimum size=18mm,
    text width=18mm, align=center},
  root concept/.append style={
    concept color=PrimaryDeep, text=white, font=\small\bfseries,
    minimum size=30mm, text width=28mm
  },
  level 1 concept/.append style={
    sibling angle=72, level distance=44mm
  },
  level 2 concept/.append style={
    sibling angle=40, level distance=30mm, font=\tiny,
    minimum size=14mm, text width=14mm
  },
  grow cyclic,
]
  \node[root concept] {\rl{سنت‌های}\\[-2pt]\rl{اخلاقی جهان}}
    child [concept color=AccentTeal] {
      node {\rl{اسلامی}}
      [clockwise from=120]
      child { node {\rl{فلسفی}} }
      child { node {\rl{عرفانی}} }
      child { node {\rl{کلامی}} }
    }
    child [concept color=AccentAmber] {
      node {\rl{کنفوسیوسی}}
      [clockwise from=60]
      child { node {\rl{منسیوس}} }
      child { node {\rl{شیون‌تزه}} }
    }
    child [concept color=AccentGreen] {
      node {\rl{بودایی}}
      [clockwise from=0]
      child { node {\rl{تراوادا}} }
      child { node {\rl{ماهایانا}} }
    }
    child [concept color=AccentPurple] {
      node {\rl{آفریقایی}}
      [clockwise from=-60]
      child { node {\rl{اوبونتو}} }
    }
    child [concept color=EraEarlyMod] {
      node {\rl{هندویی}}
      [clockwise from=-120]
      child { node {\rl{دارما}} }
      child { node {\rl{کارما}} }
    };
\end{tikzpicture}
\end{adjustbox}
\caption{نقشهٔ مفهومی سنت‌های اخلاقی غیرغربی}\label{fig:nonwestern-map}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی ب: نقشهٔ جامع اندیشمندان محوری
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{نقشهٔ جامع اندیشمندان محوری}\label{sec:thinkers-map}

در این بخش، اندیشمندان کلیدی فلسفهٔ اخلاق بر اساس حوزه و دوره
گروه‌بندی می‌شوند.

\needspace{10\baselineskip}
\nopagebreak[4]%
\vspace{0.5\baselineskip}
\noindent%
\begin{table}[htbp]
\centering
\caption{اندیشمندان محوری فلسفهٔ اخلاق: گروه‌بندی بر اساس حوزه و دوره}\label{tab:thinkers}
\begin{adjustbox}{max width=\linewidth}
\begin{tabular}{>{\bfseries\color{PrimaryDeep}}r  p{3.8cm}  p{3.6cm}  p{4cm}}
\toprule
\textbf{\color{PrimaryDeep}حوزه} & \textbf{باستان و میانه} & \textbf{مدرن (ق ۱۷--۱۹)} & \textbf{معاصر (ق ۲۰--۲۱)} \\
\midrule
فضیلت‌گرایی
  & \lr{Aristotle}، فارابی، ابن‌مسکویه
  & \lr{Hume} (بخشی)
  & \lr{Anscombe, MacIntyre,}%
    \lr{Hursthouse, Foot, Slote} \\
\rowcolor{NeutralLight}
وظیفه‌گرایی
  & رواقیان، آکویناس
  & \lr{Kant}
  & \lr{Ross, Scanlon, Korsgaard,}%
    \lr{Parfit, O'Neill} \\
پیامدگرایی
  & اپیکوریان، مو تزه (چین)
  & \lr{Bentham, Mill, Sidgwick}
  & \lr{Singer, Railton, Greene,}%
    \lr{Ord, MacAskill} \\
\rowcolor{NeutralLight}
فرااخلاق
  & افلاطون (ایدهٔ خیر)
  & \lr{Hume} (هست/باید)
  & \lr{Moore, Ayer, Stevenson,}%
    \lr{Mackie, Blackburn, Gibbard,}%
    \lr{Enoch, Street, Shafer-Landau} \\
اخلاق مراقبت
  & —
  & —
  & \lr{Gilligan, Noddings, Held,}%
    \lr{Kittay, Tronto} \\
\rowcolor{NeutralLight}
روان‌شناسی اخلاقی
  & ارسطو (آکراسیا)
  & \lr{Hume} (عواطف)
  & \lr{Smith, Haidt, Greene,}%
    \lr{Prinz, Nichols, Knobe} \\
\bottomrule
\end{tabular}
\end{adjustbox}
\end{table}


% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی ج: تحلیل عمیق نقاط اختلاف و تنش
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{تحلیل عمیق نقاط اختلاف و تنش}\label{sec:tensions}

در این بخش، مهم‌ترین محورهای اختلاف را با تحلیل دقیق‌تر بررسی می‌کنیم و
نشان می‌دهیم هر موضع چه پیش‌فرض‌هایی دارد و نفی یا اثبات آن چه
پیامدهایی در بر دارد.

\subsection{تنش اول: عینیت در برابر ذهنیت اخلاقی}\label{subsec:tension1}

\begin{tcolorbox}[mybox, title=ساختار تنش]
\begin{center}
\begin{adjustbox}{max width=0.95\linewidth}
\begin{tikzpicture}[
  every node/.style={font=\small, align=center},
  box/.style={
    draw, thick, rounded corners=4pt,
    minimum width=35mm, minimum height=18mm,
    font=\small
  },
  vs/.style={
    circle, draw=AccentRed, thick, fill=AccentRed!10,
    minimum size=10mm, font=\bfseries\color{AccentRed}
  },
  arr/.style={-Stealth, thick, color=NeutralDark},
  imp/.style={-Stealth, thick, dashed, color=AccentTeal},
]
  % دو قطب
  \node[box, fill=AccentGreen!10, draw=AccentGreen] (obj) at (-4,0)
    {\rl{\textbf{عینیت اخلاقی}}\\[2pt]%
     \rl{واقعیت‌های اخلاقی}\\%
     \rl{مستقل از ذهن‌اند}};%

  \node[box, fill=AccentRed!10, draw=AccentRed] (subj) at (4,0)
    {\rl{\textbf{ذهنیت اخلاقی}}\\[2pt]%
     \rl{ارزش‌ها ساختهٔ}\\%
     \rl{ذهن یا فرهنگ‌اند}};%

  \node[vs] at (0,0) {\rl{تنش}};

  % پیامدها
  \node[box, fill=BgCool, draw=PrimaryMid, font=\footnotesize] (p1) at (-4,-3.2)
    {\rl{نقد فرهنگ مشروع}\\[2pt]%
     \rl{حقوق بشر جهانی}\\[2pt]%
     \rl{خطر: استبداد اخلاقی}};%

  \node[box, fill=BgWarm, draw=AccentAmber, font=\footnotesize] (p2) at (4,-3.2)
    {\rl{تساهل فرهنگی}\\[2pt]%
     \rl{دموکراسی ارزشی}\\[2pt]%
     \rl{خطر: نسبیت‌گرایی افراطی}};%

  \draw[imp] (obj.south) -- (p1.north);
  \draw[imp] (subj.south) -- (p2.north);
\end{tikzpicture}
\end{adjustbox}
\end{center}
\end{tcolorbox}

این تنش بنیادین‌ترین شکاف فرااخلاقی است. \thinker{دیوید اِنوک}\src{Enoch 2011}
استدلال‌های ناپذیرفتنی (\lat{indispensability arguments}) ارائه می‌کند: ما در
تصمیم‌گیری‌های عملی ناگزیر از فرض عینیت اخلاقی هستیم. در مقابل، \thinker{شارون
استریت} با \concept{معضل داروینی} نشان می‌دهد که تکامل ارتباطی با حقیقت
اخلاقی ندارد و باورهای اخلاقی ما محصول فشارهای انتخابی‌اند نه ردیابی واقعیت.

\thinker{رانالد دورکین}\footnote{%
\lr{Dworkin, R. (2011). \textit{Justice for Hedgehogs}. Harvard University Press.}}
راه سومی پیشنهاد می‌کند: عینیت اخلاقی از جنس عینیت متافیزیکی نیست بلکه
عینیتی \textit{درون‌گفتمانی} است — گزاره‌های اخلاقی درست یا نادرست‌اند اما نه
به معنای مطابقت با واقعیتی بیرونی، بلکه به معنای انسجام در شبکهٔ ارزش‌ها.

\subsection{تنش دوم: عقل در برابر عاطفه}\label{subsec:tension2}

آیا داوری اخلاقی اساساً عقلانی است یا عاطفی؟

\begin{itemize}[nosep]
  \item \textbf{سنت عقل‌گرا} (\thinker{کانت}، \thinker{راس}، \thinker{اسکنلن}):
  اخلاق حاصل خردورزی عملی است. عواطف ممکن است انگیزه‌بخش باشند اما
  تعیین‌کنندهٔ درست و نادرست نیستند.
  \item \textbf{سنت عاطفه‌گرا} (\thinker{هیوم}، \thinker{آیر}، \thinker{هایت}\footnote{%
  \lr{Haidt, J. (2001). ``The Emotional Dog and Its Rational Tail.''
  \textit{Psychological Review}, 108(4), 814--834.}}):
  عقل «بردهٔ عواطف» است. داوری اخلاقی ابتدا عاطفی شکل می‌گیرد و عقل
  صرفاً توجیه‌گر پسینی است.
  \item \textbf{رویکرد تلفیقی} (\thinker{جاشوا گرین}\src{Greene 2013}):
  سیستم عاطفی «دوربین خودکار» (\lat{automatic settings}) و سیستم عقلانی
  «تنظیم دستی» (\lat{manual mode}) هر دو نقش دارند. دانستن ساختار عصبی
  به ما کمک می‌کند بفهمیم کِی به کدام سیستم اعتماد کنیم.
\end{itemize}

\subsection{تنش سوم: عام‌گرایی در برابر بافت‌گرایی}\label{subsec:tension3}

\begin{tcolorbox}[enemybox, title=چالش خاص‌گرایی]
\thinker{جاناتان دنسی}\src{Dancy 2004} استدلال می‌کند که هیچ ویژگی‌ای
همیشه و در هر بافتی دلیل اخلاقی واحدی فراهم نمی‌کند. «درد» معمولاً بد است،
اما در بافت تمرین ورزشی یا تنبیه عادلانه ممکن است دلیل بدی نباشد.
بنابراین \textbf{اصول اخلاقی عام وجود ندارند} و هر موقعیت نیازمند
قضاوت موردی است.

در مقابل، \thinker{مک‌کیور و ریج}\src{McKeever \& Ridge 2006} استدلال
می‌کنند که خاص‌گرایی افراطی عملاً ناممکن است: بدون هیچ اصل عامی، تربیت
اخلاقی، قانون‌گذاری و سیاست‌گذاری فلج می‌شوند.
\end{tcolorbox}

\subsection{تنش چهارم: اخلاق فردی در برابر ساختاری}\label{subsec:tension4}

آیا مسئولیت اخلاقی اساساً فردی است یا ساختاری و نهادی؟

\begin{itemize}[nosep]
  \item \textbf{فردگرایی اخلاقی}: فقط افراد فاعل اخلاقی‌اند. نهادها ابزارند.
  مسئولیت در نهایت به افراد بازمی‌گردد.
  \item \textbf{ساختارگرایی اخلاقی} (\thinker{آیریس ماریون یانگ}\footnote{%
  \lr{Young, I.M. (2011). \textit{Responsibility for Justice}.
  Oxford University Press.}}): بی‌عدالتی ساختاری ممکن است بدون آنکه فرد
  خاصی مقصر باشد، از تعامل نقش‌ها و نهادها ناشی شود. مدل
  \concept{مسئولیت اجتماعی ارتباطی} (\lat{Social Connection Model})
  یانگ جایگزینی برای مدل مسئولیت فردی سنتی ارائه می‌دهد.
  \item \textbf{رویکرد ترکیبی} (\thinker{تامس پوگ}\src{Pogge 2008}):
  هم ساختارهای نهادی و هم افرادی که از آن ساختارها بهره می‌برند
  مسئول‌اند.
\end{itemize}

\subsection{تنش پنجم: نسبیت‌گرایی فرهنگی در برابر جهان‌شمولی}\label{subsec:tension5}

\begin{itemize}[nosep]
  \item \concept{نسبیت‌گرایی فرهنگی} (\thinker{گیلبرت هارمن}\footnote{%
  \lr{Harman, G. (1996). ``Moral Relativism.'' In Harman, G. \& Thomson, J.J.,
  \textit{Moral Relativism and Moral Objectivity}. Blackwell.}}):
  اصول اخلاقی نسبت به فرهنگ‌ها متغیرند و هیچ دیدگاه فرافرهنگی وجود ندارد.
  \item \concept{جهان‌شمولی} (\thinker{مارتا نوسبام}\src{Nussbaum 2006}):
  برخی قابلیت‌های انسانی فرافرهنگی‌اند و هر نظام اجتماعی موظف به تضمین
  آنهاست.
  \item \concept{تکثرگرایی ارزشی} (\thinker{آیزایا برلین}\footnote{%
  \lr{Berlin, I. (1969). ``Two Concepts of Liberty.'' In \textit{Four Essays
  on Liberty}. Oxford University Press.}}):
  ارزش‌های متعدد و ناسازگاری وجود دارند که همگی واقعی‌اند اما نمی‌توان
  همهٔ آنها را همزمان تحقق بخشید.
\end{itemize}

% ─── نمودار محورهای تنش ────────────────────────────────────────
\needspace{10\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  every node/.style={font=\footnotesize, align=center},
  pole/.style={
    draw, very thick, rounded corners=4pt,
    minimum width=28mm, minimum height=10mm,
    font=\footnotesize\bfseries
  },
  axis/.style={very thick, color=NeutralDark, <->},
  lbl/.style={font=\scriptsize, color=NeutralDark, midway, above, sloped},
]
  % محور ۱: عینیت-ذهنیت
  \node[pole, fill=AccentGreen!15, draw=AccentGreen] (obj) at (-5, 3) {\rl{عینیت}};
  \node[pole, fill=AccentRed!15, draw=AccentRed] (subj) at (5, 3) {\rl{ذهنیت}};
  \draw[axis] (obj) -- (subj) node[lbl] {\rl{تنش ۱: هستی‌شناختی}};

  % محور ۲: عقل-عاطفه
  \node[pole, fill=EraEarlyMod!15, draw=EraEarlyMod] (reason) at (-5, 1.5) {\rl{عقل}};
  \node[pole, fill=AccentAmber!15, draw=AccentAmber] (emotion) at (5, 1.5) {\rl{عاطفه}};
  \draw[axis] (reason) -- (emotion) node[lbl] {\rl{تنش ۲: معرفت‌شناختی}};

  % محور ۳: عام-خاص
  \node[pole, fill=AccentPurple!15, draw=AccentPurple] (univ) at (-5, 0) {\rl{عام‌گرایی}};
  \node[pole, fill=EraPostmod!15, draw=EraPostmod] (part) at (5, 0) {\rl{خاص‌گرایی}};
  \draw[axis] (univ) -- (part) node[lbl] {\rl{تنش ۳: هنجاری}};

  % محور ۴: فرد-ساختار
  \node[pole, fill=AccentTeal!15, draw=AccentTeal] (indiv) at (-5, -1.5) {\rl{فرد}};
  \node[pole, fill=EraAncient!15, draw=EraAncient, text=white] (struct) at (5, -1.5)
    {\rl{ساختار}};
  \draw[axis] (indiv) -- (struct) node[lbl] {\rl{تنش ۴: مسئولیت}};

  % محور ۵: نسبیت-جهان‌شمولی
  \node[pole, fill=BgWarm, draw=AccentAmber] (rel) at (-5, -3) {\rl{نسبیت‌گرایی}};
  \node[pole, fill=BgCool, draw=PrimaryMid] (cosm) at (5, -3) {\rl{جهان‌شمولی}};
  \draw[axis] (rel) -- (cosm) node[lbl] {\rl{تنش ۵: فرهنگی}};
\end{tikzpicture}
\end{adjustbox}
\caption{پنج محور تنش بنیادین در فلسفهٔ اخلاق}\label{fig:tensions}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی د: روان‌شناسی اخلاقی تجربی
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{روان‌شناسی اخلاقی تجربی: پل میان فلسفه و علم}\label{sec:moral-psych-empirical}

\subsection{مدل شهودگرایی اجتماعی هایت}\label{subsec:haidt}

\thinker{جاناتان هایت}\src{Haidt 2001} با مدل \concept{سگ عاطفی و دُم عقلانی}
(\lat{Emotional Dog and Rational Tail}) استدلال کرد که داوری‌های اخلاقی
اغلب حاصل شهودهای سریع عاطفی‌اند و استدلال عقلانی صرفاً توجیه‌گری پسینی
(\lat{post-hoc rationalization}) است.

هایت در ادامه \concept{نظریهٔ بنیادهای اخلاقی} (\lat{Moral Foundations Theory})
را مطرح کرد که شش بنیان اخلاقی فطری را شناسایی می‌کند:\footnote{%
\lr{Haidt, J. (2012). \textit{The Righteous Mind: Why Good People Are Divided
by Politics and Religion}. Vintage.}}

\begin{enumerate}[label=\textbf{\arabic*.}, nosep]
  \item \concept{مراقبت / آسیب} (\lat{Care / Harm})
  \item \concept{انصاف / تقلب} (\lat{Fairness / Cheating})
  \item \concept{وفاداری / خیانت} (\lat{Loyalty / Betrayal})
  \item \concept{اقتدار / سرکشی} (\lat{Authority / Subversion})
  \item \concept{تقدس / انحطاط} (\lat{Sanctity / Degradation})
  \item \concept{آزادی / ستم} (\lat{Liberty / Oppression})
\end{enumerate}

\begin{tcolorbox}[defbox, title=اهمیت سیاسی نظریهٔ بنیادهای اخلاقی]
هایت نشان داد که لیبرال‌ها عمدتاً بر بنیادهای مراقبت و انصاف تکیه
می‌کنند، در حالی که محافظه‌کاران هر شش بنیان را تقریباً به‌طور مساوی
ارج می‌نهند. این یافته تبیین می‌کند چرا گفت‌وگوی میان دو جناح سیاسی
اغلب ناممکن به نظر می‌رسد: آنها به معنای واقعی کلمه دربارهٔ
\textbf{چیزهای متفاوتی} صحبت می‌کنند.
\end{tcolorbox}

\subsection{مدل فرایند دوگانهٔ گرین}\label{subsec:greene-dual}

\thinker{جاشوا گرین}\src{Greene 2013} با بهره‌گیری از تصویربرداری مغزی
(\lat{fMRI}) نشان داد که:

\begin{itemize}[nosep]
  \item معضلات اخلاقی \textbf{شخصی} (مانند هُل‌دادن فرد از روی پل در
  معضل ترولی) ناحیهٔ \lr{vmPFC} (عاطفی) را فعال می‌کنند و پاسخ
  وظیفه‌گرایانه تولید می‌کنند.
  \item معضلات اخلاقی \textbf{غیرشخصی} (مانند تغییر مسیر قطار با اهرم)
  ناحیهٔ \lr{dlPFC} (تحلیلی) را فعال می‌کنند و پاسخ پیامدگرایانه تولید
  می‌کنند.
\end{itemize}

گرین نتیجه می‌گیرد که شهودهای وظیفه‌گرایانه اغلب حاصل واکنش‌های عاطفی
تکامل‌یافته‌اند و برای مسائل پیچیدهٔ مدرن (مانند تغییر اقلیم یا فقر
جهانی) باید به تفکر پیامدگرایانهٔ تحلیلی اتکا کرد.

\begin{tcolorbox}[enemybox, title=نقد: مغالطهٔ طبیعت‌گرایانه دوباره؟]
منتقدان (از جمله \thinker{سلیم‌الدین برکی}\footnote{%
\lr{Berker, S. (2009). ``The Normative Insignificance of Neuroscience.''
\textit{Philosophy \& Public Affairs}, 37(4), 293--329.}}) استدلال
می‌کنند که یافته‌های عصب‌شناختی نمی‌توانند مستقیماً نتایج هنجاری داشته باشند.
اینکه شهودی عاطفی است، آن را بی‌اعتبار نمی‌کند — مگر آنکه از قبل فرض کنیم
عاطفه معرفتی نیست، که خود یک مدعای فلسفی قابل‌مناقشه است.
\end{tcolorbox}

\subsection{اثر کنوب و فلسفهٔ تجربی}\label{subsec:knobe-effect}

\thinker{جاشوا نوب}\src{Knobe 2003} کشف کرد که قضاوت مردم دربارهٔ
«عمدی» بودن یک عمل تحت تأثیر ارزیابی اخلاقی آنها از نتیجهٔ عمل قرار
می‌گیرد (\concept{اثر کنوب}). این یافته نشان می‌دهد که مفاهیم
ظاهراً توصیفی (مانند «عمدی») از ارزش‌داوری‌های اخلاقی متأثرند و
مرز میان توصیف و هنجار به‌اندازه‌ای که تصور می‌شد روشن نیست.


% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی هـ: نمودار ترکیبی جامع
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{نمودار ترکیبی جامع: معماری فلسفهٔ اخلاق}\label{sec:grand-map}

نمودار زیر تلاش می‌کند تمام ابعاد بحث‌شده در این مقاله را در یک
نقشهٔ واحد ترکیب کند.

\needspace{12\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  every node/.style={font=\footnotesize, align=center},
  mainbox/.style={
    draw, very thick, rounded corners=6pt,
    minimum width=36mm, minimum height=14mm,
    font=\small\bfseries, drop shadow
  },
  subbox/.style={
    draw, thick, rounded corners=3pt,
    minimum width=26mm, minimum height=10mm,
    font=\scriptsize
  },
  arr/.style={-Stealth, thick, color=NeutralDark},
  darr/.style={-Stealth, thick, dashed, color=AccentRed},
]
  % ─── ستون چپ: فرااخلاق ───
  \node[mainbox, fill=PrimaryDeep!15, draw=PrimaryDeep] (meta) at (-5, 5)
    {\rl{\color{PrimaryDeep}فرااخلاق}};

  \node[subbox, fill=BgCool, draw=PrimaryMid] (sem) at (-7.5, 3)
    {\rl{معناشناسی}\\[-2pt]\rl{شناخت‌گرایی / ناشناخت‌گرایی}};
  \node[subbox, fill=BgCool, draw=PrimaryMid] (ont) at (-5, 3)
    {\rl{هستی‌شناسی}\\[-2pt]\rl{واقع‌گرایی / ناواقع‌گرایی}};
  \node[subbox, fill=BgCool, draw=PrimaryMid] (epi) at (-2.5, 3)
    {\rl{معرفت‌شناسی}\\[-2pt]\rl{شهود / انسجام / تجربه}};

  \draw[arr] (meta) -- (sem);
  \draw[arr] (meta) -- (ont);
  \draw[arr] (meta) -- (epi);

  % ─── ستون وسط: اخلاق هنجاری ───
  \node[mainbox, fill=AccentTeal!15, draw=AccentTeal] (norm) at (0, 5)
    {\rl{\color{AccentTeal}اخلاق هنجاری}};

  \node[subbox, fill=BgTeal, draw=AccentTeal] (virt) at (-1.5, 3)
    {\rl{فضیلت‌گرایی}};
  \node[subbox, fill=BgTeal, draw=AccentTeal] (deon) at (0, 1.8)
    {\rl{وظیفه‌گرایی}};
  \node[subbox, fill=BgTeal, draw=AccentTeal] (cons) at (1.5, 3)
    {\rl{پیامدگرایی}};

  \draw[arr] (norm) -- (virt);
  \draw[arr] (norm.south) -- (deon.north);
  \draw[arr] (norm) -- (cons);

  % ─── ستون راست: اخلاق کاربردی ───
  \node[mainbox, fill=AccentAmber!15, draw=AccentAmber] (app) at (5, 5)
    {\rl{\color{AccentAmber}اخلاق کاربردی}};

  \node[subbox, fill=BgWarm, draw=AccentAmber] (ai) at (3.5, 3)
    {\rl{هوش مصنوعی}};
  \node[subbox, fill=BgWarm, draw=AccentAmber] (bio) at (5, 3)
    {\rl{زیست‌پزشکی}};
  \node[subbox, fill=BgWarm, draw=AccentAmber] (env) at (6.5, 3)
    {\rl{محیط‌زیست}};

  \draw[arr] (app) -- (ai);
  \draw[arr] (app) -- (bio);
  \draw[arr] (app) -- (env);

  % ─── سطح زیست جمعی ───
  \node[mainbox, fill=AccentGreen!15, draw=AccentGreen,
    minimum width=120mm] (life) at (0, -0.5)
    {\rl{\color{AccentGreen}زیست جمعی: حقوق — سیاست — اقتصاد — تربیت — فناوری — روابط بین‌الملل}};

  \draw[arr] (sem.south) -- ++(0,-0.6) -| ([xshift=-40mm]life.north);
  \draw[arr] (deon.south) -- (life.north);
  \draw[arr] (ai.south) -- ++(0,-0.6) -| ([xshift=25mm]life.north);

  % ─── سنت‌های غیرغربی ───
  \node[mainbox, fill=AccentPurple!15, draw=AccentPurple,
    minimum width=80mm] (nonw) at (0, -2.5)
    {\rl{\color{AccentPurple}سنت‌های غیرغربی: اسلامی — کنفوسیوسی — بودایی — آفریقایی}};

  \draw[darr] (nonw.north) -- (life.south)
    node[midway, left, font=\scriptsize, color=AccentRed] {\rl{گفت‌وگو و تعامل}};

  % ─── علوم تجربی ───
  \node[mainbox, fill=EraPostmod!15, draw=EraPostmod,
    minimum width=80mm] (sci) at (0, -4.2)
    {\rl{\color{EraPostmod}علوم تجربی: عصب‌شناسی — روان‌شناسی تکاملی — فلسفهٔ تجربی}};

  \draw[darr] (sci.north) -- (nonw.south)
    node[midway, left, font=\scriptsize, color=AccentRed] {\rl{داده‌های تجربی}};

  % ارتباط علوم تجربی به فرااخلاق
  \draw[darr] (sci.west) -- ++(-3,0) |- (meta.south west)
    node[near start, below, font=\scriptsize, color=AccentRed] {\rl{چالش تکاملی}};

\end{tikzpicture}
\end{adjustbox}
\caption{نقشهٔ ترکیبی جامع: معماری فلسفهٔ اخلاق}\label{fig:grand-map}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی و: جدول جامع مقایسه‌ای
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{جدول جامع مقایسه‌ای مکاتب}\label{sec:grand-table}

\needspace{10\baselineskip}
\nopagebreak[4]%
\vspace{0.5\baselineskip}
\noindent%
\begin{table}[htbp]
\centering
\caption{جدول جامع مقایسه‌ای: شش مکتب اصلی فلسفهٔ اخلاق}\label{tab:grand-compare}
\begin{adjustbox}{max width=\linewidth}
\begin{tabular}{>{\bfseries\color{PrimaryDeep}\footnotesize}r
  p{2cm} p{2cm} p{2cm} p{2cm} p{2cm} p{2cm}}
\toprule
\textbf{\color{PrimaryDeep}\footnotesize مؤلفه}
  & \textbf{\footnotesize سودگرایی}
  & \textbf{\footnotesize کانت‌گرایی}
  & \textbf{\footnotesize فضیلت‌گرایی}
  & \textbf{\footnotesize قراردادگرایی}
  & \textbf{\footnotesize اخلاق مراقبت}
  & \textbf{\footnotesize بیانگرایی} \\
\midrule
\footnotesize هستی‌شناسی
  & \footnotesize طبیعت‌گرایی
  & \footnotesize غیرطبیعت‌گرایی
  & \footnotesize طبیعت‌گرایی
  & \footnotesize سازه‌انگاری
  & \footnotesize رابطه‌ای
  & \footnotesize ناواقع‌گرایی \\
\rowcolor{NeutralLight}
\footnotesize معرفت‌شناسی
  & \footnotesize تجربه‌گرایی
  & \footnotesize عقل‌گرایی
  & \footnotesize شهود + عادت
  & \footnotesize خردورزی رویه‌ای
  & \footnotesize همدلی + تجربه
  & \footnotesize (نامعلوم) \\
\footnotesize واحد ارزیابی
  & \footnotesize پیامد عمل
  & \footnotesize قاعدهٔ عمل
  & \footnotesize خصلت فاعل
  & \footnotesize اصول مورد توافق
  & \footnotesize رابطهٔ مراقبتی
  & \footnotesize نگرش بیانگر \\
\rowcolor{NeutralLight}
\footnotesize غایت
  & \footnotesize بیشینه‌سازی رفاه
  & \footnotesize احترام به کرامت
  & \footnotesize شکوفایی انسانی
  & \footnotesize انصاف رویه‌ای
  & \footnotesize پرورش روابط
  & \footnotesize انسجام نگرشی \\
\footnotesize قوت اصلی
  & \footnotesize سادگی + کمّی‌پذیری
  & \footnotesize حقوق فردی
  & \footnotesize واقع‌نمایی اخلاقی
  & \footnotesize بی‌طرفی
  & \footnotesize توجه به بافت
  & \footnotesize تبیین عدم اتفاق‌نظر \\
\rowcolor{NeutralLight}
\footnotesize ضعف اصلی
  & \footnotesize نادیده‌گرفتن حقوق
  & \footnotesize سختی + انتزاعی
  & \footnotesize ابهام عملی
  & \footnotesize شرایط ایدئال‌سازی
  & \footnotesize محدودیت دامنه
  & \footnotesize نسبیت‌گرایی \\
\footnotesize نمایندهٔ اصلی
  & \footnotesize \lr{Singer, Mill}
  & \footnotesize \lr{Kant, Korsgaard}
  & \footnotesize \lr{Aristotle, MacIntyre}
  & \footnotesize \lr{Rawls, Scanlon}
  & \footnotesize \lr{Gilligan, Held}
  & \footnotesize \lr{Blackburn, Gibbard} \\
\bottomrule
\end{tabular}
\end{adjustbox}
\end{table}


% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی ز: پرسش‌های باز و مسیرهای پژوهشی آینده
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{پرسش‌های باز و مسیرهای پژوهشی آینده}\label{sec:open-questions}

\subsection{ده پرسش باز در فلسفهٔ اخلاق معاصر}\label{subsec:ten-questions}

\begin{enumerate}[label=\textbf{\color{PrimaryDeep}\arabic*.}, nosep]
  \item آیا می‌توان واقع‌گرایی اخلاقی را با تبیین تکاملی سازگار کرد؟
  (\thinker{استریت} در برابر \thinker{اِنوک} و \thinker{کالن‌برگ-پلانتینگا})

  \item آیا فرایند «تعادل تأملی» رالز واقعاً معرفت‌بخش است یا صرفاً
  بازتاب تعصبات موجود؟\footnote{%
  \lr{Singer, P. (2005). ``Ethics and Intuitions.'' \textit{Journal of Ethics},
  9(3-4), 331--352.}}

  \item چگونه می‌توان اصول اخلاقی را به هوش مصنوعی پیاده‌سازی کرد؟
  آیا \concept{هم‌ترازی ارزشی} (\lat{Value Alignment}) ممکن است؟\footnote{%
  \lr{Russell, S. (2019). \textit{Human Compatible: AI and the Problem of Control}.
  Viking.}}

  \item آیا حیوانات غیرانسانی وضعیت اخلاقی دارند؟ آیا حقوق حیوانات
  بر پایهٔ وظیفه‌گرایی قابل دفاع است یا فقط بر پایهٔ
  پیامدگرایی؟\footnote{%
  \lr{Regan, T. (1983). \textit{The Case for Animal Rights}.
  University of California Press.}}

  \item آیا نسل‌های آینده «حقوق

```latex
% ══════════════════════════════════════════════════════════════
%  ادامهٔ بخش: پرسش‌های باز و مسیرهای پژوهشی آینده
% ══════════════════════════════════════════════════════════════

  \item آیا نسل‌های آینده «حقوق» دارند؟ اگر هنوز وجود ندارند، چگونه
  می‌توان از حقوق آنها سخن گفت؟ \concept{مسئلهٔ عدم هویت}
  پارفیت\src{Parfit 1984} نشان می‌دهد که سیاست‌های ما هویت نسل‌های
  آینده را تغییر می‌دهند، پس نمی‌توان گفت کسی «آسیب دیده».\footnote{%
  \lr{Roberts, M.A. \& Wasserman, D.T. (eds.) (2009).
  \textit{Harming Future Persons}. Springer.}}

  \item آیا \concept{ارتقای اخلاقی} (\lat{Moral Enhancement}) از طریق
  دارو یا فناوری عصبی مجاز یا مطلوب است؟ \thinker{توماس داگلاس}\footnote{%
  \lr{Douglas, T. (2008). ``Moral Enhancement.'' \textit{Journal of Applied
  Philosophy}, 25(3), 228--245.}} استدلال می‌کند بله، اما
  \thinker{جان هریس}\footnote{%
  \lr{Harris, J. (2011). ``Moral Enhancement and Freedom.''
  \textit{Bioethics}, 25(2), 102--111.}} نگران از‌دست‌رفتن آزادی اخلاقی است.

  \item چگونه می‌توان عدالت اقلیمی را صورت‌بندی کرد؟ آیا کشورهای
  صنعتی «بدهی اقلیمی» (\lat{climate debt}) دارند؟\footnote{%
  \lr{Shue, H. (2014). \textit{Climate Justice: Vulnerability and Protection}.
  Oxford University Press.}}

  \item آیا \concept{نابرابری اقتصادی} ذاتاً نادرست اخلاقی است یا فقط
  وقتی نادرست است که از فرایندهای ناعادلانه ناشی شود؟
  \thinker{فرانکفورت}\footnote{%
  \lr{Frankfurt, H. (2015). \textit{On Inequality}. Princeton University Press.}}
  استدلال می‌کند مهم نابرابری نیست بلکه \concept{کفایت}
  (\lat{sufficiency}) مهم است. اما \thinker{اسکنلن}\footnote{%
  \lr{Scanlon, T.M. (2018). \textit{Why Does Inequality Matter?}
  Oxford University Press.}} دلایل متعددی برای اهمیت ذاتی نابرابری ارائه
  می‌دهد.

  \item آیا \concept{فلسفهٔ تجربی} (\lat{Experimental Philosophy}) واقعاً
  به فلسفهٔ اخلاق کمک می‌کند یا صرفاً روان‌شناسی اجتماعی با نام
  جدید است؟ \thinker{تیموتی ویلیامسون}\footnote{%
  \lr{Williamson, T. (2007). \textit{The Philosophy of Philosophy}.
  Blackwell, Ch.~7.}} از منتقدان جدی است.

  \item چگونه باید با \concept{هوش مصنوعی مولّد} (\lat{Generative AI})
  و توانایی آن در تولید محتوای گمراه‌کننده برخورد کرد؟ آیا مسئولیت
  اخلاقی متوجه طراح است، کاربر، یا خود سیستم؟\footnote{%
  \lr{Floridi, L. \& Chiriatti, M. (2020). ``GPT-3: Its Nature, Scope, Limits,
  and Consequences.'' \textit{Minds and Machines}, 30, 681--694.}}
\end{enumerate}

\subsection{نقشهٔ راه پژوهشی: حوزه‌ها و پژوهشگران شاخص}\label{subsec:roadmap}

\needspace{10\baselineskip}
\nopagebreak[4]%
\vspace{0.5\baselineskip}
\noindent%
\begin{table}[htbp]
\centering
\caption{نقشهٔ راه پژوهشی: حوزه‌ها، پرسش‌ها و پژوهشگران شاخص}\label{tab:roadmap}
\begin{adjustbox}{max width=\linewidth}
\begin{tabular}{>{\bfseries\color{PrimaryDeep}\footnotesize}r
  p{3.8cm}  p{3cm}  p{3.5cm}}
\toprule
\textbf{\color{PrimaryDeep}\footnotesize حوزهٔ پژوهشی}
  & \textbf{\footnotesize پرسش محوری}
  & \textbf{\footnotesize پژوهشگران شاخص}
  & \textbf{\footnotesize نشریات/مراکز کلیدی} \\
\midrule
\footnotesize هم‌ترازی ارزشی هوش مصنوعی
  & \footnotesize چگونه ارزش‌های انسانی را در سیستم‌های هوشمند تعبیه کنیم؟
  & \footnotesize \lr{Russell, Bostrom,}%
    \lr{Floridi, Gabriel}
  & \footnotesize \lr{FHI Oxford,}%
    \lr{CHAI Berkeley,}%
    \lr{DeepMind Ethics} \\
\rowcolor{NeutralLight}
\footnotesize عدالت اقلیمی
  & \footnotesize توزیع منصفانهٔ بارهای اقلیمی بین کشورها و نسل‌ها
  & \footnotesize \lr{Shue, Gardiner,}%
    \lr{Caney, Jamieson}
  & \footnotesize \lr{Ethics \& Global}%
    \lr{Politics, Climate}%
    \lr{Ethics journal} \\
\footnotesize عصب‌اخلاق
  & \footnotesize ساختارهای عصبی تصمیم‌گیری اخلاقی
  & \footnotesize \lr{Greene, Crockett,}%
    \lr{Roskies, Levy}
  & \footnotesize \lr{AJOB Neuroscience,}%
    \lr{Neuroethics journal} \\
\rowcolor{NeutralLight}
\footnotesize ارتقای اخلاقی
  & \footnotesize آیا مداخلهٔ فناورانه در خصلت‌های اخلاقی مجاز است؟
  & \footnotesize \lr{Douglas, Persson,}%
    \lr{Savulescu, Harris}
  & \footnotesize \lr{Journal of Medical}%
    \lr{Ethics, Bioethics} \\
\footnotesize فلسفهٔ تجربی اخلاق
  & \footnotesize آیا شهودهای عامه برای فلسفه معرفت‌بخش‌اند؟
  & \footnotesize \lr{Knobe, Nichols,}%
    \lr{Machery, Stich}
  & \footnotesize \lr{Phil. Psychology,}%
    \lr{Noûs, Phil. Studies} \\
\rowcolor{NeutralLight}
\footnotesize اخلاق بین‌فرهنگی
  & \footnotesize آیا اصول اخلاقی مشترک بین سنت‌ها وجود دارد؟
  & \footnotesize \lr{Nussbaum, Metz,}%
    \lr{Van Norden, Wong}
  & \footnotesize \lr{Dao, Phil. East \&}%
    \lr{West, J. of Global}%
    \lr{Ethics} \\
\footnotesize اخلاق داده و حریم خصوصی
  & \footnotesize حدود استفاده از داده‌های شخصی
  & \footnotesize \lr{Floridi, Nissenbaum,}%
    \lr{Zuboff, Véliz}
  & \footnotesize \lr{Ethics \& IT,}%
    \lr{Big Data \& Society} \\
\rowcolor{NeutralLight}
\footnotesize اخلاق جنگ و صلح
  & \footnotesize جنگ عادلانه در عصر پهپاد و سلاح‌های خودکار
  & \footnotesize \lr{Walzer, McMahan,}%
    \lr{Strawser, Sparrow}
  & \footnotesize \lr{Ethics \& Intl.}%
    \lr{Affairs, J. of}%
    \lr{Military Ethics} \\
\bottomrule
\end{tabular}
\end{adjustbox}
\end{table}


% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی ح: اثر جنبش‌های اخلاقی معاصر
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{جنبش‌های اخلاقی معاصر و تأثیر اجتماعی}\label{sec:movements}

نظریه‌های فلسفهٔ اخلاق صرفاً آکادمیک نیستند بلکه جنبش‌های اجتماعی
تأثیرگذاری از آنها برآمده‌اند.

\subsection{نوع‌دوستی مؤثر (\lat{Effective Altruism})}\label{subsec:ea}

\concept{نوع‌دوستی مؤثر} جنبشی فکری و اجتماعی است که از پیامدگرایی
سینگری الهام گرفته و می‌کوشد با استفاده از شواهد تجربی و استدلال عقلانی،
بیشترین خیر ممکن را با منابع موجود ایجاد کند.\footnote{%
\lr{MacAskill, W. (2015). \textit{Doing Good Better: Effective Altruism and
a Radical New Way to Make a Difference}. Guardian Faber.}}

\begin{itemize}[nosep]
  \item \thinker{پیتر سینگر}\src{Singer 2011}: بنیان‌گذار فکری
  \item \thinker{ویلیام مک‌اسکیل}\src{MacAskill 2015}: سازمان‌دهی جنبش
  \item \thinker{تابی اُرد}\footnote{%
  \lr{Ord, T. (2020). \textit{The Precipice: Existential Risk and the
  Future of Humanity}. Bloomsbury.}}: تمرکز بر خطرات وجودی
\end{itemize}

\begin{tcolorbox}[defbox, title=نقد نوع‌دوستی مؤثر]
\begin{itemize}[nosep]
  \item \enemy{نقد وظیفه‌گرایانه}: کمّی‌سازی رنج و خیر به نادیده‌گرفتن
  حقوق و کرامت فردی منجر می‌شود.
  \item \enemy{نقد فضیلت‌گرایانه}: تمرکز بر نتایج قابل‌اندازه‌گیری، فضایل
  مهمی مانند همبستگی، وفاداری و صداقت را نادیده می‌گیرد.
  \item \enemy{نقد ساختاری}: نوع‌دوستی مؤثر ساختارهای نابرابر را
  به‌چالش نمی‌کشد بلکه در چارچوب آنها عمل می‌کند.\footnote{%
  \lr{Srinivasan, A. (2015). ``Stop the Robot Apocalypse.''
  \textit{London Review of Books}, 37(18).}}
\end{itemize}
\end{tcolorbox}

\subsection{جنبش حقوق حیوانات}\label{subsec:animal-rights}

\thinker{پیتر سینگر} با \textit{آزادی حیوانات}\footnote{%
\lr{Singer, P. (1975). \textit{Animal Liberation}. New York Review/Random House.}}
و \thinker{تام ریگان}\footnote{%
\lr{Regan, T. (1983). \textit{The Case for Animal Rights}.
University of California Press.}} بنیان فلسفی جنبش حقوق حیوانات را
بنا نهادند. سینگر از زاویهٔ پیامدگرایانه (اصل برابری توجه به منافع)
و ریگان از زاویهٔ وظیفه‌گرایانه (حقوق ذاتی موجودات دارای ارزش درونی)
استدلال می‌کنند.

\thinker{مارتا نوسبام}\footnote{%
\lr{Nussbaum, M. (2023). \textit{Justice for Animals: Our Collective
Responsibility}. Simon \& Schuster.}} اخیراً رویکرد قابلیت‌ها را به
حیوانات گسترش داده و استدلال کرده که هر گونهٔ حیوانی حق شکوفایی
متناسب با قابلیت‌های خود را دارد.

\subsection{الهیات آزادی‌بخش و اخلاق رهایی}\label{subsec:liberation}

\concept{الهیات آزادی‌بخش} (\lat{Liberation Theology}) که در آمریکای
لاتین متولد شد، اخلاق را از منظر فقرا و ستمدیدگان بازخوانی می‌کند.
\thinker{گوستاو گوتیرز}\footnote{%
\lr{Gutiérrez, G. (1973). \textit{A Theology of Liberation}. Orbis Books.}}
استدلال کرد که خیر اخلاقی بدون عدالت اجتماعی بی‌معناست.

در فلسفهٔ سکولار، \thinker{آیریس ماریون یانگ}\src{Young 2011}
و \thinker{میراندا فریکر}\footnote{%
\lr{Fricker, M. (2007). \textit{Epistemic Injustice: Power and the Ethics
of Knowing}. Oxford University Press.}} مفهوم \concept{بی‌عدالتی معرفتی}
(\lat{Epistemic Injustice}) را مطرح کردند: وقتی شهادت فرد به‌دلیل
تعصبات ساختاری نادیده گرفته می‌شود، نوعی ظلم اخلاقی-معرفتی رخ داده است.

\subsection{جنبش آلتروئیسم طولانی‌مدت (\lat{Longtermism})}\label{subsec:longtermism}

\concept{آلتروئیسم طولانی‌مدت} شاخه‌ای از نوع‌دوستی مؤثر است که
ارزش اخلاقی بسیار بالایی به نسل‌های آینده نسبت می‌دهد. \thinker{ویلیام
مک‌اسکیل}\footnote{%
\lr{MacAskill, W. (2022). \textit{What We Owe the Future}. Basic Books.}}
استدلال می‌کند که اگر بشریت میلیاردها سال دیگر دوام بیاورد، مسئولیت
ما در قبال آیندگان بسیار سنگین‌تر از تصور ماست.

\begin{tcolorbox}[enemybox, title=نقدهای وارد بر آلتروئیسم طولانی‌مدت]
\begin{itemize}[nosep]
  \item \enemy{عدم قطعیت}: پیش‌بینی آینده بسیار دور تقریباً غیرممکن است.
  اولویت‌دادن به خطرات وجودی مبهم بر رنج واقعی حاضر مشکل‌ساز است.
  \item \enemy{توجیه بی‌عدالتی حاضر}: تمرکز بر آینده ممکن است
  بی‌توجهی به ستمدیدگان امروز را توجیه کند.\footnote{%
  \lr{Setiya, K. (2023). ``The New Moral Mathematics.''
  \textit{Boston Review}, January~2023.}}
  \item \enemy{مسئلهٔ عدم هویت}: چه کسی از آسیب‌دیدگان آینده است
  وقتی هویت آنها به انتخاب‌های ما بستگی دارد؟
\end{itemize}
\end{tcolorbox}


% ══════════════════════════════════════════════════════════════
%  بخش تکمیلی ط: فهرست نهایی مکاتب — نمودار درختی جامع
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section{نمودار درختی جامع مکاتب فلسفهٔ اخلاق}\label{sec:tree}

\needspace{14\baselineskip}
\begin{figure}[htbp]
\centering
\begin{adjustbox}{max width=\linewidth}
\begin{tikzpicture}[
  grow=down,
  level 1/.style={sibling distance=48mm, level distance=18mm},
  level 2/.style={sibling distance=26mm, level distance=16mm},
  level 3/.style={sibling distance=22mm, level distance=15mm},
  every node/.style={
    rounded corners=2pt, draw, thick,
    minimum height=7mm,
    font=\tiny, align=center, inner sep=2pt
  },
  edge from parent/.style={draw, thick, -Stealth},
  root/.style={fill=PrimaryDeep, text=white, font=\scriptsize\bfseries,
    minimum width=30mm},
  l1/.style={font=\tiny\bfseries},
  l2/.style={fill=NeutralLight, draw=NeutralDark},
  l3/.style={fill=white, draw=NeutralMid, font=\tiny},
]
  \node[root] {\rl{فلسفهٔ اخلاق}}
    child {
      node[l1, fill=PrimaryMid!15, draw=PrimaryMid] {\rl{فرااخلاق}}
      child {
        node[l2] {\rl{معناشناسی}}
        child { node[l3] {\rl{شناخت‌گرایی}} }
        child { node[l3] {\rl{ناشناخت‌گرایی}} }
      }
      child {
        node[l2] {\rl{هستی‌شناسی}}
        child { node[l3] {\rl{واقع‌گرایی}} }
        child { node[l3] {\rl{ناواقع‌گرایی}} }
      }
      child {
        node[l2] {\rl{معرفت‌شناسی}}
        child { node[l3] {\rl{شهودگرایی}} }
        child { node[l3] {\rl{انسجام‌گرایی}} }
      }
    }
    child {
      node[l1, fill=AccentTeal!15, draw=AccentTeal] {\rl{اخلاق هنجاری}}
      child {
        node[l2] {\rl{فضیلت‌گرایی}}
        child { node[l3] {\rl{ارسطویی}} }
        child { node[l3] {\rl{عاطفی}} }
      }
      child {
        node[l2] {\rl{وظیفه‌گرایی}}
        child { node[l3] {\rl{کانتی}} }
        child { node[l3] {\rl{قراردادی}} }
      }
      child {
        node[l2] {\rl{پیامدگرایی}}
        child { node[l3] {\rl{عمل‌محور}} }
        child { node[l3] {\rl{قاعده‌ای}} }
      }
    }
    child {
      node[l1, fill=AccentAmber!15, draw=AccentAmber] {\rl{اخلاق کاربردی}}
      child {
        node[l2] {\rl{زیست‌پزشکی}}
      }
      child {
        node[l2] {\rl{محیط‌زیست}}
      }
      child {
        node[l2] {\rl{فناوری و هوش مصنوعی}}
      }
    };
\end{tikzpicture}
\end{adjustbox}
\caption{نمودار درختی جامع مکاتب فلسفهٔ اخلاق}\label{fig:tree}
\end{figure}


% ══════════════════════════════════════════════════════════════
%  پیوست تکمیلی: منابع فارسی
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section*{پیوست: منابع فارسی پیشنهادی}\label{sec:persian-refs}
\addcontentsline{toc}{section}{پیوست: منابع فارسی}

\begin{enumerate}[label={[\arabic*]}, nosep, leftmargin=2em]

\item مصباح یزدی، محمدتقی (۱۳۹۴).
\textit{فلسفهٔ اخلاق}. تهران: مؤسسهٔ آموزشی و پژوهشی امام خمینی.

\item جوادی آملی، عبدالله (۱۳۸۸).
\textit{مبادی اخلاق در قرآن}. قم: مرکز نشر اسراء.

\item فنایی اشکوری، محمد (۱۳۹۵).
\textit{اخلاق دین‌شناسی: پژوهشی در مبانی معرفت‌شناختی و فرااخلاقی اخلاق دینی}.
تهران: نگاه معاصر.

\item حسینی شاهرودی، مرتضی (۱۳۹۲).
\textit{فرااخلاق}. تهران: سمت.

\item ملکیان، مصطفی (۱۳۹۰).
\textit{درسگفتارهای فلسفهٔ اخلاق}. مؤسسهٔ پژوهشی حکمت و فلسفه.

\item پالمر، مایکل (۱۳۹۳).
\textit{مسائل اخلاقی}. ترجمهٔ علیرضا آل‌بویه. تهران: سمت.

\item ریچلز، جیمز (۱۳۹۲).
\textit{فلسفهٔ اخلاق}. ترجمهٔ آرش اخگری. تهران: حکمت.

\item لاریجانی، صادق (۱۳۹۱).
\textit{نظریهٔ حق و فلسفهٔ اخلاق}. قم: مرکز پژوهش‌های اسلامی.

\item غزالی، ابوحامد محمد (بازچاپ ۱۳۸۶).
\textit{کیمیای سعادت}. به‌کوشش حسین خدیوجم. تهران: علمی و فرهنگی.

\item ابن‌مسکویه (بازچاپ ۱۳۸۱).
\textit{تهذیب الاخلاق}. ترجمهٔ علی‌اصغر حلبی. تهران: اساطیر.

\end{enumerate}


% ══════════════════════════════════════════════════════════════
%  پیوست: فهرست اندیشمندان به ترتیب زمانی
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section*{پیوست: فهرست اندیشمندان محوری به ترتیب زمانی}\label{sec:chronology}
\addcontentsline{toc}{section}{پیوست: فهرست اندیشمندان}

\begin{center}
\begin{adjustbox}{max width=\linewidth}
\begin{longtable}{r  l  r  l  l}
\toprule
\textbf{ردیف} & \textbf{نام} & \textbf{دوره} & \textbf{\lr{Name}} & \textbf{مشارکت اصلی} \\
\midrule
\endfirsthead
\toprule
\textbf{ردیف} & \textbf{نام} & \textbf{دوره} & \textbf{\lr{Name}} & \textbf{مشارکت اصلی} \\
\midrule
\endhead
\bottomrule
\endfoot
۱ & سقراط & ق‌م ۴۷۰--۳۹۹ & \lr{Socrates} & روش پرسش اخلاقی \\
\rowcolor{NeutralLight}
۲ & افلاطون & ق‌م ۴۲۸--۳۴۸ & \lr{Plato} & ایدهٔ خیر \\
۳ & ارسطو & ق‌م ۳۸۴--۳۲۲ & \lr{Aristotle} & فضیلت‌گرایی، سعادت \\
\rowcolor{NeutralLight}
۴ & کنفوسیوس & ق‌م ۵۵۱--۴۷۹ & \lr{Confucius} & رن، لی، خودپروری \\
۵ & منسیوس & ق‌م ۳۷۲--۲۸۹ & \lr{Mencius} & طبیعت نیک انسان \\
\rowcolor{NeutralLight}
۶ & فارابی & ۸۷۲--۹۵۰ & \lr{Al-Farabi} & مدینهٔ فاضله \\
۷ & ابن‌مسکویه & ۹۳۲--۱۰۳۰ & \lr{Miskawayh} & تهذیب الاخلاق \\
\rowcolor{NeutralLight}
۸ & ابن‌سینا & ۹۸۰--۱۰۳۷ & \lr{Avicenna} & مراتب سعادت \\
۹ & غزالی & ۱۰۵۸--۱۱۱۱ & \lr{Al-Ghazali} & اخلاق عرفانی \\
\rowcolor{NeutralLight}
۱۰ & آکویناس & ۱۲۲۵--۱۲۷۴ & \lr{Aquinas} & قانون طبیعی \\
۱۱ & هابز & ۱۵۸۸--۱۶۷۹ & \lr{Hobbes} & قرارداد اجتماعی \\
\rowcolor{NeutralLight}
۱۲ & هیوم & ۱۷۱۱--۱۷۷۶ & \lr{Hume} & تمایز هست/باید \\
۱۳ & کانت & ۱۷۲۴--۱۸۰۴ & \lr{Kant} & امر مطلق \\
\rowcolor{NeutralLight}
۱۴ & بنتام & ۱۷۴۸--۱۸۳۲ & \lr{Bentham} & سودگرایی \\
۱۵ & میل & ۱۸۰۶--۱۸۷۳ & \lr{Mill} & سودگرایی کیفی \\
\rowcolor{NeutralLight}
۱۶ & مور & ۱۸۷۳--۱۹۵۸ & \lr{G.E. Moore} & مغالطهٔ طبیعت‌گرایانه \\
۱۷ & راس & ۱۸۷۷--۱۹۷۱ & \lr{W.D. Ross} & وظایف در نظر اول \\
\rowcolor{NeutralLight}
۱۸ & آیر & ۱۹۱۰--۱۹۸۹ & \lr{A.J. Ayer} & عاطفه‌گرایی \\
۱۹ & رالز & ۱۹۲۱--۲۰۰۲ & \lr{Rawls} & عدالت به‌مثابهٔ انصاف \\
\rowcolor{NeutralLight}
۲۰ & مکی & ۱۹۱۷--۱۹۸۱ & \lr{Mackie} & خطاگرایی \\
۲۱ & انسکوم & ۱۹۱۹--۲۰۰۱ & \lr{Anscombe} & احیای فضیلت‌گرایی \\
\rowcolor{NeutralLight}
۲۲ & فوت & ۱۹۲۰--۲۰۱۰ & \lr{Foot} & خیر طبیعی \\
۲۳ & مک‌اینتایر & ۱۹۲۹-- & \lr{MacIntyre} & فضیلت و سنت \\
\rowcolor{NeutralLight}
۲۴ & سینگر & ۱۹۴۶-- & \lr{Singer} & سودگرایی عملی \\
۲۵ & پارفیت & ۱۹۴۲--۲۰۱۷ & \lr{Parfit} & همگرایی نظریه‌ها \\
\rowcolor{NeutralLight}
۲۶ & اسکنلن & ۱۹۴۰-- & \lr{Scanlon} & قراردادگرایی \\
۲۷ & کرسگارد & ۱۹۵۲-- & \lr{Korsgaard} & منابع هنجاریت \\
\rowcolor{NeutralLight}
۲۸ & بلکبرن & ۱۹۴۴-- & \lr{Blackburn} & شبه‌واقع‌گرایی \\
۲۹ & اِنوک & ۱۹۷۵-- & \lr{Enoch} & واقع‌گرایی قوی \\
\rowcolor{NeutralLight}
۳۰ & استریت & فعال & \lr{Street} & معضل داروینی \\
\end{longtable}
\end{adjustbox}
\end{center}


% ══════════════════════════════════════════════════════════════
%  یادداشت پایانی مؤلف
% ══════════════════════════════════════════════════════════════
\needspace{6\baselineskip}
\section*{یادداشت پایانی}\label{sec:final-note}
\addcontentsline{toc}{section}{یادداشت پایانی}

این مقاله تلاش کرد تصویری جامع، عمیق و چندوجهی از فلسفهٔ اخلاق ارائه دهد
— از بنیادی‌ترین پرسش‌های فرااخلاقی دربارهٔ وجود واقعیت‌های اخلاقی و
امکان شناخت آنها، تا مکاتب هنجاری رقیب، سنت‌های فکری متنوع غربی و
غیرغربی، جدال‌های زنده و پویا، اجماع‌های عملی، و در نهایت پیامدهای هر
انتخاب اخلاقی در زیست جمعی.

آنچه این مرور آشکار می‌سازد، \textbf{پیچیدگی ذاتی} قلمرو اخلاق است.
هیچ نظریهٔ واحدی تمام ابعاد تجربهٔ اخلاقی را پوشش نمی‌دهد و هر رویکردی
بخشی از حقیقت را می‌بیند. شاید بهترین نتیجه‌ای که از این مرور می‌توان
گرفت، \concept{تواضع اخلاقی} (\lat{Moral Humility}) باشد: پذیرش
اینکه ممکن است در باورهای اخلاقی‌مان اشتباه کنیم، و آمادگی برای
بازنگری و گفت‌وگوی صادقانه.

\begin{tcolorbox}[quotebox]
«فلسفه همهٔ پرسش‌ها را حل نمی‌کند، اما بدون فلسفه نمی‌دانیم حتی
چه پرسش‌هایی باید بپرسیم.»\\
\hfill — \thinker{برتراند راسل}، \textit{مسائل فلسفه} (۱۹۱۲)
\end{tcolorbox}

\vfill

\begin{center}
\rule{0.4\linewidth}{0.4pt}\\[6pt]
{\small\color{NeutralDark}%
پایان مقاله}\\[3pt]
{\footnotesize\color{NeutralMid}\today}
\end{center}
```

---

## خلاصهٔ کلّ بخش‌های تکمیلی

| شمارهٔ بخش | عنوان | محتوای کلیدی |
|:---:|-------|-------------|
| الف | سنت‌های غیرغربی | اخلاق اسلامی (فلسفی، عرفانی، کلامی)، کنفوسیوسی، بودایی، آفریقایی + جدول مقایسه + نقشهٔ ذهنی |
| ب | نقشهٔ جامع اندیشمندان | جدول گروه‌بندی بر اساس حوزه × دوره |
| ج | تحلیل عمیق تنش‌ها | ۵ محور تنش بنیادین با نمودار TikZ + تحلیل هر تنش |
| د | روان‌شناسی اخلاقی تجربی | هایت (بنیادهای اخلاقی)، گرین (فرایند دوگانه)، نوب (اثر کنوب) |
| هـ | نمودار ترکیبی جامع | نقشهٔ معماری کلّ فلسفهٔ اخلاق |
| و | جدول جامع مقایسه‌ای | ۶ مکتب × ۷ مؤلفه |
| ز | پرسش‌های باز | ۱۰ پرسش باز + نقشهٔ راه پژوهشی |
| ح | جنبش‌های معاصر | نوع‌دوستی مؤثر، حقوق حیوانات، الهیات آزادی‌بخش، آلتروئیسم طولانی‌مدت |
| ط | نمودار درختی جامع | فلسفهٔ اخلاق → فرااخلاق + هنجاری + کاربردی با تمام شاخه‌ها |
| — | پیوست: منابع فارسی | ۱۰ منبع فارسی پیشنهادی |
| — | پیوست: فهرست زمانی | ۳۰ اندیشمند محوری به ترتیب تاریخی |
| — | یادداشت پایانی | جمع‌بندی + مفهوم تواضع اخلاقی |

---

## راهنمای ترکیب بخش‌ها در سند نهایی

برای تولید سند نهایی، بخش‌ها باید به ترتیب زیر چیده شوند:

| ترتیب | بخش | برچسب |
|:---:|-------|-------|
| ۱ | مقدمه | `sec:intro` |
| ۲ | هستی‌شناسی اخلاق | `sec:ontology` |
| ۳ | معرفت‌شناسی اخلاق | `sec:epistemology` |
| ۴ | سیر تاریخی | `sec:history` |
| ۵ | اخلاق هنجاری | `sec:normative` |
| ۶ | فرااخلاق: نقشهٔ جامع | `sec:metaethics` |
| ۷ | **سنت‌های غیرغربی** *(جدید)* | `sec:nonwestern` |
| ۸ | **نقشهٔ اندیشمندان** *(جدید)* | `sec:thinkers-map` |
| ۹ | جدال‌های زنده و پویا | `sec:debates` |
| ۱۰ | **تحلیل عمیق تنش‌ها** *(جدید)* | `sec:tensions` |
| ۱۱ | **روان‌شناسی اخلاقی تجربی** *(جدید)* | `sec:moral-psych-empirical` |
| ۱۲ | اجماع‌ها و نقاط مشترک | `sec:consensus` |
| ۱۳ | موضوعات پژوهشی نوظهور | `sec:emerging` |
| ۱۴ | **جنبش‌های معاصر** *(جدید)* | `sec:movements` |
| ۱۵ | آثار و نتایج در زیست جمعی | `sec:implications` |
| ۱۶ | **پرسش‌های باز** *(جدید)* | `sec:open-questions` |
| ۱۷ | **نمودار ترکیبی جامع** *(جدید)* | `sec:grand-map` |
| ۱۸ | **جدول جامع مقایسه‌ای** *(جدید)* | `sec:grand-table` |
| ۱۹ | **نمودار درختی جامع** *(جدید)* | `sec:tree` |
| ۲۰ | نتیجه‌گیری | `sec:conclusion` |
| — | کتاب‌نامه | `sec:bibliography` |
| — | واژه‌نامه | `sec:glossary` |
| — | منابع فارسی | `sec:persian-refs` |
| — | فهرست اندیشمندان | `sec:chronology` |
| — | یادداشت پایانی | `sec:final-note` |

**مجموع عناصر بصری**: ۹ نمودار TikZ + ۶ جدول مقایسه‌ای + ۷ جعبهٔ محتوایی + بیش از ۸۰ ارجاع آکادمیک + ۳۰+ اندیشمند + واژه‌نامهٔ دوزبانه.

### Overlap Report

*1 overlap(s) detected:*

- **Overlap 1:** 78 chars, similarity 85%, Flagged

---

```
