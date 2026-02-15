---
source: "output\formatForge_20260215_164352\01_converted.json"
total_conversations: 4
total_segments_merged: 10
manual_review_needed: 2
models: [claude-opus-4-6]
generated_by: chat-merger
---

# Chat Merger Report

| Metric | Value |
|--------|-------|
| Conversations | 4 |
| Total segments merged | 10 |
| Overlaps detected | 2 |
| Blocks needing review | 2 |

---

## Conversation 1
*(3 segments merged)*
*Model: claude-opus-4-6*

<!-- 🔧 MANUAL INTERVENTION NEEDED -->
> **Review needed:** Overlap detection flagged some areas

### Request

## Request
ر را در صورت نیاز در چند بخش به شکلی جامع تهیه کن تا بتوانم از آن در تست کردن نرم افزار تبدیل مقالات و کتاب های بیانیه‌ها و اثبات‌های منطقی ریاضی‌ام از نوع فرمت‌های مختلفی نظیر لاتکس، html, md, docs, pdf, به mdx برای وب سایت خودم استفاده کنم.
محتواها عممحتواهای ز
یدتا فارسی با وجود متون انگلیسی در آنها یا انگلیسی هستند. 
هر نوع شکل و قالب و فوریت مورد نیاز را در نمونه‌ها بگنجان تا تست دقیقی صورت بگیرد. 
در صورت امکان از دستور powershell برای ساختن فایل‌های نمونه استفاده کن، اگر متن در چت زمانی که به من ارائه می‌کنی خراب نمی‌شود. والا خودم کپی بیست خواهم کرد. 

## Latex
`````Markdown

بک فایل لایتکس نمونه به من بده که دو زبانه بوده، فارسی و انگلیسی، همه‌ی انواع نمودار و عکس و چارت و جدول و معادله و اثبات منطقی و جدول آفقی و تصویر و لینک و ارجاع و بیبلوگرافی و پانوشت و پی نوشت و چندرسانه‌ای و خلاصه  همه‌ی انواع و اقسام مختلف کامپوننت‌های یک کتاب حرفه‌ای را 
داشته باشد از هر کدوم یکی یا دو مورد (اگر ترکیبی باشند) 
تمامی افتضائات و نیازمندی‌های فارسی و wrapper ها برای نمایش نوشته‌هت به درستی مورد توجه باشد. 

پکیج‌ها با هم بکر تعرضی نداشته باشد. 
راهنمای تهیه‌ی لاتکس درست فارسی را ارئه کن به لحاظ فنی در انتهای سند.. یعنی یکی از موضوعات سند این باشد! راهنمای لاتکس کامل و درست

طرح و رنگ‌بندی و سواره بصیر کامل و شیک و مدرن و رنگی (بایتی) داشته باشد سند
`````

## Markdown
`````markdown
یک فایل مارک داون فارسی با تمامی انواع نمودارها از جنس mermaid با نظایر آن درست کن به شکلی در نرم افزار تبدیلم بتوانم عملکرد صحیح و کامل انرا تست کنم
دقت کن نیازمندی‌های mermaid برای نمایش درست فونت فارسی چیست و
 یا محدودیت‌هایش که برخی نمودارها را نمی‌تواند از فارسی رندر کند. 

راهنمای تهیه‌ی مارک داون درست فارسی را که به خوبی برای وب رندر شود ارئه کن به لحاظ فنی در انتهای سند و این را یکی از موضوعات این نمونه فرار بده
`````

### Follow-up additions

**Follow-up 1:** د ادامه بده

**Follow-up 2:** اگر تمام نشده ادامه بده

### Response

محتوای اصلی (LaTeX و Markdown+Mermaid) کامل شده بود. اما شما در درخواست اولیه از فرمت‌های **HTML** و **DOCX** و **PDF** هم نام بردید. بنابراین فایل‌های تکمیلی زیر را اضافه می‌کنم:

---

## ۵. فایل HTML نمونه (جامع — فارسی/انگلیسی)

```html
<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>مبانی منطق ریاضی — نمونه تست تبدیل HTML به MDX</title>

  <!-- ===== فونت ===== -->
  <link rel="preconnect" href="https://cdn.jsdelivr.net">
  <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/gh/rastikerdar/vazirmatn@v33.003/Vazirmatn-font-face.css"
  >

  <!-- ===== KaTeX (ریاضی) ===== -->
  <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/npm/katex@0.16.11/dist/katex.min.css"
  >
  <script
    defer
    src="https://cdn.jsdelivr.net/npm/katex@0.16.11/dist/katex.min.js"
  ></script>
  <script
    defer
    src="https://cdn.jsdelivr.net/npm/katex@0.16.11/dist/contrib/auto-render.min.js"
    onload="renderMathInElement(document.body, {
      delimiters: [
        {left: '$$', right: '$$', display: true},
        {left: '$', right: '$', display: false},
        {left: '\\[', right: '\\]', display: true},
        {left: '\\(', right: '\\)', display: false}
      ]
    });"
  ></script>

  <!-- ===== Mermaid ===== -->
  <script src="https://cdn.jsdelivr.net/npm/mermaid@10/dist/mermaid.min.js"></script>
  <script>
    mermaid.initialize({
      startOnLoad: true,
      theme: 'base',
      themeVariables: {
        fontFamily: '"Vazirmatn", "Tahoma", sans-serif',
        fontSize: '14px',
        primaryColor: '#E3F2FD',
        primaryTextColor: '#0D47A1',
        primaryBorderColor: '#1565C0',
        lineColor: '#1A73E8',
      },
      flowchart: { htmlLabels: true, curve: 'basis' },
      securityLevel: 'loose',
    });
  </script>

  <!-- ===== Highlight.js (کد) ===== -->
  <link
    rel="stylesheet"
    href="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.9.0/build/styles/github.min.css"
  >
  <script src="https://cdn.jsdelivr.net/gh/highlightjs/cdn-release@11.9.0/build/highlight.min.js"></script>
  <script>hljs.highlightAll();</script>

  <style>
    /* ========== متغیرهای رنگ ========== */
    :root {
      --primary: #1A73E8;
      --primary-light: #E3F2FD;
      --accent-teal: #00897B;
      --accent-teal-light: #E0F2F1;
      --accent-orange: #FB8C00;
      --accent-orange-light: #FFF3E0;
      --text-dark: #212121;
      --text-gray: #616161;
      --bg-light: #F5F7FA;
      --bg-white: #FFFFFF;
      --border-light: #E0E0E0;
      --theorem-bg: #E3F2FD;
      --definition-bg: #E8F5E9;
      --proof-bg: #FFFDE7;
      --warning-bg: #FFF3E0;
      --note-bg: #ECEFF1;
      --sidebar-gray: #ECEFF1;
    }

    /* ========== پایه ========== */
    * { box-sizing: border-box; margin: 0; padding: 0; }

    body {
      font-family: 'Vazirmatn', 'Tahoma', sans-serif;
      font-size: 16px;
      line-height: 1.9;
      color: var(--text-dark);
      background: var(--bg-light);
      direction: rtl;
    }

    /* ========== لِی‌اوت ========== */
    .container {
      max-width: 900px;
      margin: 0 auto;
      padding: 2rem;
      background: var(--bg-white);
      box-shadow: 0 1px 3px rgba(0,0,0,0.08);
    }

    /* ========== تیتر‌ها ========== */
    h1, h2, h3, h4, h5, h6 {
      color: var(--primary);
      margin: 1.5em 0 0.5em;
      line-height: 1.4;
    }
    h1 {
      font-size: 2rem;
      border-bottom: 3px solid var(--primary);
      padding-bottom: 0.5rem;
    }
    h2 {
      font-size: 1.5rem;
      border-bottom: 2px solid var(--primary-light);
      padding-bottom: 0.3rem;
    }
    h3 { font-size: 1.25rem; }
    h4 { font-size: 1.1rem; color: var(--accent-teal); }

    /* ========== پاراگراف ========== */
    p { margin: 0.8em 0; }

    /* ========== لینک ========== */
    a { color: var(--primary); text-decoration: none; }
    a:hover { text-decoration: underline; }

    /* ========== Bold / Italic ========== */
    strong { font-weight: 700; }
    em { font-style: italic; }

    /* ========== کد ========== */
    code {
      font-family: 'Fira Code', 'JetBrains Mono', 'Consolas', monospace;
      background: var(--bg-light);
      padding: 0.15em 0.4em;
      border-radius: 4px;
      font-size: 0.9em;
      direction: ltr;
      unicode-bidi: isolate;
    }

    pre {
      direction: ltr;
      text-align: left;
      background: var(--bg-light);
      border: 1px solid var(--border-light);
      border-radius: 8px;
      padding: 1rem;
      overflow-x: auto;
      margin: 1rem 0;
    }
    pre code {
      background: none;
      padding: 0;
      font-size: 0.88em;
    }

    /* ========== نقل‌قول ========== */
    blockquote {
      border-right: 4px solid var(--primary);
      background: var(--primary-light);
      padding: 1rem 1.5rem;
      margin: 1rem 0;
      border-radius: 0 8px 8px 0;
    }
    blockquote blockquote {
      border-right-color: var(--accent-teal);
      background: var(--accent-teal-light);
      margin-top: 0.5rem;
    }

    /* ========== جدول ========== */
    table {
      width: 100%;
      border-collapse: collapse;
      margin: 1.5rem 0;
      direction: rtl;
    }
    th, td {
      border: 1px solid var(--border-light);
      padding: 0.6rem 0.8rem;
      text-align: right;
    }
    th {
      background: var(--primary-light);
      color: var(--primary);
      font-weight: 700;
    }
    tr:nth-child(even) { background: var(--bg-light); }
    tr:hover { background: #E8EAF6; }

    /* ========== لیست ========== */
    ul, ol {
      padding-right: 2em;
      margin: 0.5em 0;
    }
    li { margin: 0.3em 0; }

    /* ========== خط افقی ========== */
    hr {
      border: none;
      height: 2px;
      background: linear-gradient(to left, var(--primary), var(--accent-teal));
      margin: 2rem 0;
      border-radius: 1px;
    }

    /* ========== تصویر ========== */
    figure {
      margin: 1.5rem 0;
      text-align: center;
    }
    figure img {
      max-width: 100%;
      border-radius: 8px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }
    figcaption {
      color: var(--text-gray);
      font-size: 0.9em;
      margin-top: 0.5rem;
    }

    /* ========== تصویر کنار متن ========== */
    .float-start {
      float: right;
      margin: 0 0 1rem 1.5rem;
      max-width: 40%;
    }
    .float-end {
      float: left;
      margin: 0 1.5rem 1rem 0;
      max-width: 40%;
    }

    /* ========== جعبه‌ها ========== */
    .box {
      border-radius: 8px;
      padding: 1rem 1.5rem;
      margin: 1.5rem 0;
      border-right: 5px solid;
    }
    .box-title {
      font-weight: 700;
      margin-bottom: 0.5rem;
      font-size: 1.05em;
    }
    .theorem { background: var(--theorem-bg); border-color: var(--primary); }
    .definition { background: var(--definition-bg); border-color: var(--accent-teal); }
    .proof { background: var(--proof-bg); border-color: var(--accent-orange); }
    .warning { background: var(--warning-bg); border-color: var(--accent-orange); }
    .note { background: var(--note-bg); border-color: #546E7A; }
    .example { background: #F3E5F5; border-color: #7B1FA2; }

    /* ========== پانوشت ========== */
    .footnotes {
      margin-top: 3rem;
      padding-top: 1rem;
      border-top: 1px solid var(--border-light);
      font-size: 0.9em;
      color: var(--text-gray);
    }
    .footnote-ref { vertical-align: super; font-size: 0.8em; }

    /* ========== فهرست مطالب ========== */
    .toc {
      background: var(--sidebar-gray);
      border-radius: 8px;
      padding: 1.5rem;
      margin: 1.5rem 0;
    }
    .toc h2 { margin-top: 0; border: none; font-size: 1.2rem; }
    .toc ul { list-style: none; padding-right: 0; }
    .toc > ul > li { margin: 0.5em 0; }
    .toc ul ul { padding-right: 1.5em; }
    .toc a { color: var(--text-dark); }
    .toc a:hover { color: var(--primary); }

    /* ========== بلوک LTR ========== */
    .ltr-block {
      direction: ltr;
      text-align: left;
      unicode-bidi: isolate;
    }

    /* ========== Mermaid ========== */
    .mermaid {
      direction: ltr;
      text-align: center;
      margin: 1.5rem 0;
    }

    /* ========== Badge / Tag ========== */
    .badge {
      display: inline-block;
      padding: 0.15em 0.6em;
      border-radius: 12px;
      font-size: 0.8em;
      font-weight: 700;
      color: white;
    }
    .badge-blue { background: var(--primary); }
    .badge-teal { background: var(--accent-teal); }
    .badge-orange { background: var(--accent-orange); }

    /* ========== Details / Summary ========== */
    details {
      background: var(--bg-light);
      border: 1px solid var(--border-light);
      border-radius: 8px;
      padding: 1rem;
      margin: 1rem 0;
    }
    summary {
      cursor: pointer;
      font-weight: 700;
      color: var(--primary);
    }
    details[open] summary { margin-bottom: 0.5rem; }

    /* ========== Keyboard ========== */
    kbd {
      background: var(--bg-light);
      border: 1px solid var(--border-light);
      border-radius: 4px;
      padding: 0.1em 0.4em;
      font-size: 0.85em;
      font-family: inherit;
      box-shadow: 0 1px 0 rgba(0,0,0,0.1);
    }

    /* ========== Mark (هایلایت) ========== */
    mark {
      background: #FFF176;
      padding: 0.1em 0.3em;
      border-radius: 3px;
    }

    /* ========== Abbreviation ========== */
    abbr {
      text-decoration: underline dotted;
      cursor: help;
    }

    /* ========== پاصفحه ========== */
    footer {
      text-align: center;
      padding: 2rem;
      color: var(--text-gray);
      font-size: 0.85em;
      border-top: 1px solid var(--border-light);
      margin-top: 3rem;
    }

    /* ========== واکنش‌گرا ========== */
    @media (max-width: 768px) {
      .container { padding: 1rem; }
      .float-start, .float-end {
        float: none;
        max-width: 100%;
        margin: 1rem 0;
      }
      table { font-size: 0.85em; }
    }

    /* ========== پرینت ========== */
    @media print {
      body { background: white; }
      .container { box-shadow: none; max-width: 100%; }
      a { color: var(--text-dark); }
      a[href]::after { content: " (" attr(href) ")"; font-size: 0.8em; }
      .mermaid { break-inside: avoid; }
    }
  </style>
</head>

<body>
  <div class="container">

    <!-- ==========================================
         هدر و عنوان
    ========================================== -->
    <header style="text-align:center; margin-bottom:2rem;">
      <h1 style="border:none; font-size:2.2rem;">
        مبانی منطق ریاضی و اثبات‌های صوری
      </h1>
      <p style="color:var(--text-gray); font-size:1.1em;">
        Foundations of Mathematical Logic and Formal Proofs
      </p>
      <p>
        <span class="badge badge-blue">منطق</span>
        <span class="badge badge-teal">ریاضی</span>
        <span class="badge badge-orange">اثبات</span>
      </p>
      <p style="color:var(--text-gray);">
        نویسنده: <strong>مهدی سالم</strong> — تابستان ۱۴۰۴
      </p>
    </header>

    <hr>

    <!-- ==========================================
         فهرست مطالب
    ========================================== -->
    <nav class="toc" aria-label="فهرست مطالب">
      <h2>📑 فهرست مطالب</h2>
      <ul>
        <li><a href="#chap1">۱. مقدمه و مفاهیم پایه</a>
          <ul>
            <li><a href="#sec-def">۱.۱ تعاریف</a></li>
            <li><a href="#sec-theorem">۱.۲ قضایا و اثبات</a></li>
          </ul>
        </li>
        <li><a href="#chap2">۲. جدول ارزش و عملگرها</a></li>
        <li><a href="#chap3">۳. نمودارها</a></li>
        <li><a href="#chap4">۴. تصاویر و چندرسانه‌ای</a></li>
        <li><a href="#chap5">۵. کد و الگوریتم</a></li>
        <li><a href="#chap6">۶. عناصر HTML خاص</a></li>
        <li><a href="#chap7">۷. محتوای دوزبانه</a></li>
        <li><a href="#chap8">۸. فرمول‌های پیشرفته</a></li>
        <li><a href="#chap-footnotes">پانوشت‌ها</a></li>
        <li><a href="#chap-bib">کتاب‌نامه</a></li>
      </ul>
    </nav>

    <hr>

    <!-- ==========================================
         فصل ۱: مقدمه
    ========================================== -->
    <section id="chap1">
      <h2>۱. مقدمه و مفاهیم پایه</h2>

      <p>
        این سند به‌عنوان یک <strong>نمونه جامع تست</strong> طراحی شده
        و شامل تمامی اجزای یک صفحه وب حرفه‌ای فارسی است.
        هدف آن تست تبدیل <abbr title="HyperText Markup Language">HTML</abbr>
        به <abbr title="Markdown + JSX">MDX</abbr> می‌باشد.
      </p>

      <div class="note box">
        <div class="box-title">📌 نکته</div>
        تمامی ارجاعات، پانوشت‌ها و کتاب‌نامه این سند
        صرفاً جهت تست هستند.
      </div>

      <!-- === تعاریف === -->
      <h3 id="sec-def">۱.۱ تعاریف</h3>

      <div class="definition box">
        <div class="box-title">تعریف ۱.۱ — گزاره (Proposition)</div>
        <p>
          <strong>گزاره</strong> جمله‌ای خبری است که دقیقاً یکی از
          دو ارزش «درست» (<span dir="ltr">True, $\top$</span>)
          یا «نادرست» (<span dir="ltr">False, $\bot$</span>) را دارد.
        </p>
      </div>

      <div class="definition box">
        <div class="box-title">تعریف ۱.۲ — تاتولوژی (Tautology)</div>
        <p>
          گزاره مرکب $\varphi$ یک <strong>تاتولوژی</strong> است
          اگر و تنها اگر تحت هر تخصیص ارزش، مقدار آن درست باشد:
        </p>
        $$\models \varphi \iff \forall\, v : v(\varphi) = \top$$
      </div>

      <!-- === قضیه و اثبات === -->
      <h3 id="sec-theorem">۱.۲ قضایا و اثبات</h3>

      <div class="theorem box" id="thm-demorgan">
        <div class="box-title">قضیه ۱.۱ — قانون دمورگان (De Morgan's Laws)</div>
        <p>برای هر دو گزاره $p$ و $q$:</p>
        $$\neg(p \land q) \equiv (\neg p) \lor (\neg q)$$
        $$\neg(p \lor q) \equiv (\neg p) \land (\neg q)$$
      </div>

      <div class="proof box">
        <div class="box-title">اثبات قضیه ۱.۱</div>
        <p>
          اثبات را با جدول ارزش انجام می‌دهیم. جدول کامل در
          <a href="#tab-demorgan">جدول ۱</a> آمده است.
          با بررسی تمامی حالات، ستون‌های مربوطه برابرند. ∎
        </p>
      </div>

      <div class="example box">
        <div class="box-title">مثال ۱.۱ — کاربرد دمورگان</div>
        <p>
          فرض کنید $p$: «هوا بارانی است» و $q$: «هوا سرد است».
          آنگاه:
        </p>
        $$\neg(p \land q) \equiv \text{«هوا بارانی نیست \textbf{یا} سرد نیست»}$$
      </div>

      <div class="theorem box" id="thm-lem">
        <div class="box-title">قضیه ۱.۲ — اصل طرد شق ثالث</div>
        <p>
          برای هر گزاره $p$:
          $\models p \lor \neg p$
          <sup><a href="#fn1" class="footnote-ref" id="fnref1">[۱]</a></sup>
        </p>
      </div>

      <div class="proof box">
        <div class="box-title">اثبات قضیه ۱.۲</div>
        <ul>
          <li>اگر $p = \top$: $p \lor \neg p = \top \lor \bot = \top$ ✅</li>
          <li>اگر $p = \bot$: $p \lor \neg p = \bot \lor \top = \top$ ✅</li>
        </ul>
        <p>پس در هر دو حالت مقدار درست است. ∎</p>
      </div>
    </section>

    <hr>

    <!-- ==========================================
         فصل ۲: جدول ارزش
    ========================================== -->
    <section id="chap2">
      <h2>۲. جدول ارزش و عملگرها</h2>

      <h3>جدول ارزش دمورگان</h3>
      <table id="tab-demorgan">
        <caption>جدول ۱ — جدول ارزش قوانین دمورگان</caption>
        <thead>
          <tr>
            <th>$p$</th>
            <th>$q$</th>
            <th>$p \land q$</th>
            <th>$\neg(p \land q)$</th>
            <th>$\neg p$</th>
            <th>$\neg q$</th>
            <th>$(\neg p)\lor(\neg q)$</th>
            <th>برابر؟</th>
          </tr>
        </thead>
        <tbody>
          <tr><td>T</td><td>T</td><td>T</td><td><strong>F</strong></td><td>F</td><td>F</td><td><strong>F</strong></td><td>✅</td></tr>
          <tr><td>T</td><td>F</td><td>F</td><td><strong>T</strong></td><td>F</td><td>T</td><td><strong>T</strong></td><td>✅</td></tr>
          <tr><td>F</td><td>T</td><td>F</td><td><strong>T</strong></td><td>T</td><td>F</td><td><strong>T</strong></td><td>✅</td></tr>
          <tr><td>F</td><td>F</td><td>F</td><td><strong>T</strong></td><td>T</td><td>T</td><td><strong>T</strong></td><td>✅</td></tr>
        </tbody>
      </table>

      <h3>جدول عملگرهای منطقی</h3>
      <table>
        <caption>جدول ۲ — عملگرهای منطقی پایه</caption>
        <thead>
          <tr>
            <th>عملگر</th><th>نماد</th><th>نام انگلیسی</th><th>مثال</th>
          </tr>
        </thead>
        <tbody>
          <tr><td>نقیض</td><td>$\neg$</td><td>Negation</td><td>$\neg p$</td></tr>
          <tr><td>عطف</td><td>$\land$</td><td>Conjunction</td><td>$p \land q$</td></tr>
          <tr><td>فصل</td><td>$\lor$</td><td>Disjunction</td><td>$p \lor q$</td></tr>
          <tr><td>شرطی</td><td>$\to$</td><td>Implication</td><td>$p \to q$</td></tr>
          <tr><td>دوشرطی</td><td>$\leftrightarrow$</td><td>Biconditional</td><td>$p \leftrightarrow q$</td></tr>
        </tbody>
      </table>

      <!-- جدول colSpan و rowSpan -->
      <h3>جدول با ادغام سلول (colspan / rowspan)</h3>
      <table>
        <caption>جدول ۳ — مقایسه سیستم‌های اثبات</caption>
        <thead>
          <tr>
            <th rowspan="2">سیستم</th>
            <th colspan="2">ویژگی‌ها</th>
            <th rowspan="2">کاربرد</th>
          </tr>
          <tr>
            <th>تمامیت</th>
            <th>سازگاری</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>هیلبرت</td><td>✅</td><td>✅</td><td>مبانی نظری</td>
          </tr>
          <tr>
            <td>استنتاج طبیعی</td><td>✅</td><td>✅</td><td>آموزش</td>
          </tr>
          <tr>
            <td>تابلو</td><td>✅</td><td>✅</td><td>اثبات خودکار</td>
          </tr>
          <tr>
            <td>رزولوشن</td><td>✅*</td><td>✅</td><td>SAT Solvers</td>
          </tr>
        </tbody>
        <tfoot>
          <tr>
            <td colspan="4" style="text-align:center; font-size:0.85em;">
              *فقط برای فرم نرمال عطفی (CNF)
            </td>
          </tr>
        </tfoot>
      </table>

      <!-- Definition List -->
      <h3>واژه‌نامه (Definition List)</h3>
      <dl>
        <dt><strong>تاتولوژی</strong> (Tautology)</dt>
        <dd>گزاره‌ای مرکب که تحت هر تخصیص ارزش، درست است.</dd>

        <dt><strong>تناقض</strong> (Contradiction)</dt>
        <dd>گزاره‌ای مرکب که تحت هر تخصیص ارزش، نادرست است.</dd>

        <dt><strong>اقناع‌پذیر</strong> (Satisfiable)</dt>
        <dd>گزاره‌ای مرکب که حداقل یک تخصیص ارزش وجود دارد که آن را درست کند.</dd>
      </dl>
    </section>

    <hr>

    <!-- ==========================================
         فصل ۳: نمودارها (Mermaid)
    ========================================== -->
    <section id="chap3">
      <h2>۳. نمودارها</h2>

      <h3>۳.۱ فلوچارت فارسی</h3>
      <div class="mermaid">
        %%{init: {"theme": "base", "themeVariables": {"fontSize": "14px"}, "flowchart": {"htmlLabels": true}}}%%
        flowchart TD
          A["🟢 شروع"] --> B["ورودی: فرمول φ"]
          B --> C{"آیا تاتولوژی است؟"}
          C -->|"بله ✅"| D["چاپ: تاتولوژی"]
          C -->|"خیر ❌"| E["چاپ: غیر تاتولوژی"]
          D --> F["🔴 پایان"]
          E --> F

          style A fill:#E8F5E9,stroke:#2E7D32,color:#1B5E20
          style F fill:#FFEBEE,stroke:#C62828,color:#B71C1C
          style C fill:#FFF3E0,stroke:#EF6C00,color:#E65100
      </div>

      <h3>۳.۲ نمودار ترتیبی</h3>
      <div class="mermaid">
        sequenceDiagram
          participant U as 👤 کاربر
          participant P as ⚙️ تجزیه‌گر
          participant E as 🧮 ارزیاب

          U->>P: ارسال فرمول
          activate P
          P->>E: درخت نحوی
          deactivate P
          activate E
          alt تاتولوژی
            E->>U: ✅ بله
          else غیر تاتولوژی
            E->>U: ❌ خیر
          end
          deactivate E
      </div>

      <h3>۳.۳ نمودار کلاسی</h3>
      <div class="mermaid">
        classDiagram
          class Formula {
            &lt;&lt;abstract&gt;&gt;
            +evaluate(env) bool
            +toString() string
          }
          class Atom {
            -name: string
            +evaluate(env) bool
          }
          class Negation {
            -operand: Formula
            +evaluate(env) bool
          }
          class Conjunction {
            +evaluate(env) bool
          }
          Formula &lt;|-- Atom
          Formula &lt;|-- Negation
          Formula &lt;|-- Conjunction
      </div>

      <h3>۳.۴ نمودار وضعیت</h3>
      <div class="mermaid">
        stateDiagram-v2
          [*] --> Parsing
          Parsing --> Error: Invalid
          Error --> Parsing: Retry
          Parsing --> Evaluating: Valid
          Evaluating --> Tautology: All TRUE
          Evaluating --> Contradiction: All FALSE
          Evaluating --> Satisfiable: Mixed
          Tautology --> [*]
          Contradiction --> [*]
          Satisfiable --> [*]
      </div>

      <h3>۳.۵ نمودار گانت</h3>
      <div class="mermaid">
        gantt
          title برنامه زمانی پروژه
          dateFormat YYYY-MM-DD
          axisFormat %m/%d

          section تحلیل
          تحلیل نیازمندی‌ها :done, a1, 2025-01-01, 15d
          طراحی            :done, a2, 2025-01-10, 15d

          section توسعه
          تجزیه‌گر          :active, b1, 2025-01-20, 25d
          ارزیاب            :b2, 2025-02-10, 20d

          section تست
          تست نهایی         :crit, c1, 2025-03-01, 15d
      </div>

      <h3>۳.۶ نمودار دایره‌ای</h3>
      <div class="mermaid">
        pie title Distribution of Logic Articles
          "Classical" : 35
          "Intuitionistic" : 25
          "Modal" : 20
          "Fuzzy" : 12
          "Other" : 8
      </div>

      <h3>۳.۷ نمودار Git</h3>
      <div class="mermaid">
        gitGraph
          commit id: "init"
          commit id: "parser"
          branch feature/eval
          checkout feature/eval
          commit id: "eval-v1"
          commit id: "eval-v2"
          checkout main
          merge feature/eval tag: "v1.0"
          commit id: "docs"
      </div>

      <h3>۳.۸ نمودار ER</h3>
      <div class="mermaid">
        erDiagram
          FORMULA ||--o{ VARIABLE : contains
          FORMULA ||--|| TRUTH_TABLE : generates
          FORMULA {
            int id PK
            string expression
            boolean is_tautology
          }
          VARIABLE {
            int id PK
            string name
          }
          TRUTH_TABLE {
            int id PK
            int row_count
          }
      </div>
    </section>

    <hr>

    <!-- ==========================================
         فصل ۴: تصاویر و چندرسانه‌ای
    ========================================== -->
    <section id="chap4">
      <h2>۴. تصاویر و چندرسانه‌ای</h2>

      <h3>۴.۱ تصویر ساده</h3>
      <figure>
        <img
          src="https://via.placeholder.com/700x300/1A73E8/FFFFFF?text=Mathematical+Logic+Diagram"
          alt="نمودار منطق ریاضی"
          loading="lazy"
          width="700"
          height="300"
        >
        <figcaption>شکل ۱ — نمودار مفهومی منطق ریاضی</figcaption>
      </figure>

      <h3>۴.۲ تصویر کنار متن (Float)</h3>
      <figure class="float-start">
        <img
          src="https://via.placeholder.com/250x250/00897B/FFFFFF?text=Mind+Map"
          alt="نقشه ذهنی"
          loading="lazy"
          width="250"
          height="250"
        >
        <figcaption>شکل ۲ — نقشه ذهنی</figcaption>
      </figure>
      <p>
        این متن در کنار تصویر قرار گرفته تا نحوه عملکرد
        تصاویر شناور (<code>float</code>) را نشان دهد.
        در تبدیل به MDX این نوع چیدمان باید حفظ یا
        به شکل مناسبی بازنمایی شود.
        لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم
        از صنعت چاپ و با استفاده از طراحان گرافیک است.
        چاپگرها

ادامه فایل HTML (از بخش تصاویر شناور):

```html
        و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که
        لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و
        کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می‌باشد.
        کتاب‌های زیادی در شصت و سه درصد گذشته، حال و آینده
        شناخت فراوان جامعه و متخصصان را می‌طلبد.
      </p>
      <div style="clear:both;"></div>

      <h3>۴.۳ تصویر با لینک</h3>
      <figure>
        <a href="https://en.wikipedia.org/wiki/Mathematical_logic" target="_blank" rel="noopener">
          <img
            src="https://via.placeholder.com/500x200/FB8C00/FFFFFF?text=Click+to+visit+Wikipedia"
            alt="لینک به ویکی‌پدیا — منطق ریاضی"
            loading="lazy"
            width="500"
            height="200"
          >
        </a>
        <figcaption>شکل ۳ — کلیک کنید تا به ویکی‌پدیا بروید</figcaption>
      </figure>

      <h3>۴.۴ تصاویر کنار هم (Gallery)</h3>
      <div style="display:flex; gap:1rem; flex-wrap:wrap; justify-content:center; margin:1.5rem 0;">
        <figure style="flex:1; min-width:200px; max-width:45%;">
          <img
            src="https://via.placeholder.com/300x200/1A73E8/FFFFFF?text=Subfig+1"
            alt="زیرشکل ۱"
            loading="lazy"
            style="width:100%; border-radius:8px;"
          >
          <figcaption>(الف) تابع میرا</figcaption>
        </figure>
        <figure style="flex:1; min-width:200px; max-width:45%;">
          <img
            src="https://via.placeholder.com/300x200/00897B/FFFFFF?text=Subfig+2"
            alt="زیرشکل ۲"
            loading="lazy"
            style="width:100%; border-radius:8px;"
          >
          <figcaption>(ب) تابع سیگموید</figcaption>
        </figure>
      </div>

      <h3>۴.۵ ویدئو (Embed)</h3>
      <figure>
        <div style="position:relative; padding-bottom:56.25%; height:0; overflow:hidden; border-radius:8px;">
          <iframe
            src="https://www.youtube-nocookie.com/embed/dQw4w9WgXcQ"
            title="ویدئوی نمونه"
            style="position:absolute; top:0; right:0; width:100%; height:100%; border:none;"
            loading="lazy"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen
          ></iframe>
        </div>
        <figcaption>ویدئو ۱ — ویدئوی نمونه (YouTube Embed)</figcaption>
      </figure>

      <h3>۴.۶ صوت (Audio)</h3>
      <figure>
        <audio controls preload="none" style="width:100%;">
          <source src="https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3" type="audio/mpeg">
          مرورگر شما از عنصر audio پشتیبانی نمی‌کند.
        </audio>
        <figcaption>صوت ۱ — فایل صوتی نمونه</figcaption>
      </figure>

      <h3>۴.۷ SVG درون‌خطی</h3>
      <figure>
        <svg width="400" height="150" viewBox="0 0 400 150"
             xmlns="http://www.w3.org/2000/svg"
             style="display:block; margin:0 auto;">
          <!-- پس‌زمینه -->
          <rect width="400" height="150" rx="10" fill="#E3F2FD"/>

          <!-- دایره‌ها — نمودار ون -->
          <circle cx="150" cy="75" r="55" fill="#1A73E8" fill-opacity="0.4"
                  stroke="#1A73E8" stroke-width="2"/>
          <circle cx="230" cy="75" r="55" fill="#00897B" fill-opacity="0.4"
                  stroke="#00897B" stroke-width="2"/>

          <!-- برچسب‌ها -->
          <text x="120" y="78" text-anchor="middle"
                font-family="Vazirmatn, sans-serif"
                font-size="14" fill="#0D47A1" font-weight="bold">P</text>
          <text x="260" y="78" text-anchor="middle"
                font-family="Vazirmatn, sans-serif"
                font-size="14" fill="#004D40" font-weight="bold">Q</text>
          <text x="190" y="78" text-anchor="middle"
                font-family="Vazirmatn, sans-serif"
                font-size="12" fill="#333">P∧Q</text>

          <!-- عنوان -->
          <text x="200" y="20" text-anchor="middle"
                font-family="Vazirmatn, sans-serif"
                font-size="13" fill="#616161">نمودار ون — اشتراک دو مجموعه</text>
        </svg>
        <figcaption>شکل ۴ — نمودار ون SVG درون‌خطی</figcaption>
      </figure>
    </section>

    <hr>

    <!-- ==========================================
         فصل ۵: کد و الگوریتم
    ========================================== -->
    <section id="chap5">
      <h2>۵. کد و الگوریتم</h2>

      <h3>۵.۱ بلوک کد Python</h3>
      <pre><code class="language-python">from itertools import product

def is_tautology(formula, variables):
    """Check if a propositional formula is a tautology."""
    for values in product([True, False], repeat=len(variables)):
        env = dict(zip(variables, values))
        if not formula(env):
            return False
    return True

# Example: p ∨ ¬p (Law of Excluded Middle)
result = is_tautology(
    lambda e: e['p'] or (not e['p']),
    ['p']
)
print(f"p ∨ ¬p is tautology: {result}")  # True</code></pre>

      <h3>۵.۲ بلوک کد JavaScript</h3>
      <pre><code class="language-javascript">// De Morgan's Law verification
function verifyDeMorgan(p, q) {
  const left  = !(p && q);
  const right = (!p) || (!q);
  return left === right;
}

// Test all cases
for (const p of [true, false]) {
  for (const q of [true, false]) {
    console.log(`p=${p}, q=${q}: ${verifyDeMorgan(p, q)}`);
  }
}</code></pre>

      <h3>۵.۳ بلوک کد LaTeX</h3>
      <pre><code class="language-latex">\begin{theorem}{قانون دمورگان}{demorgan}
  برای هر دو گزاره $p$ و $q$:
  \begin{align}
    \neg(p \land q) &amp;\equiv (\neg p) \lor (\neg q) \\
    \neg(p \lor q)  &amp;\equiv (\neg p) \land (\neg q)
  \end{align}
\end{theorem}</code></pre>

      <h3>۵.۴ بلوک کد Bash</h3>
      <pre><code class="language-bash"># Compile LaTeX document
xelatex -interaction=nonstopmode document.tex
biber document
xelatex -interaction=nonstopmode document.tex
xelatex -interaction=nonstopmode document.tex

# Or with latexmk (recommended)
latexmk -xelatex document.tex</code></pre>

      <h3>۵.۵ بلوک کد CSS</h3>
      <pre><code class="language-css">/* RTL Support for Persian Content */
html[dir="rtl"] {
  font-family: 'Vazirmatn', 'Tahoma', sans-serif;
  line-height: 1.8;
  text-align: right;
}

html[dir="rtl"] blockquote {
  border-right: 4px solid #1A73E8;
  border-left: none;
  padding-right: 16px;
}

/* Mermaid diagrams always LTR */
.mermaid {
  direction: ltr;
  text-align: center;
}</code></pre>

      <h3>۵.۶ کد درون‌خطی</h3>
      <p>
        از تابع <code>is_tautology()</code> برای بررسی تاتولوژی
        استفاده کنید. خروجی آن <code>True</code> یا
        <code>False</code> است.
        فایل اصلی در مسیر <code dir="ltr">src/logic/evaluator.py</code>
        قرار دارد.
      </p>

      <h3>۵.۷ شبه‌کد الگوریتم</h3>
      <div class="note box">
        <div class="box-title">الگوریتم ۱ — بررسی تاتولوژی با شمارش کامل</div>
        <pre style="background:transparent; border:none; padding:0; font-family:'Vazirmatn',sans-serif; direction:rtl; text-align:right;">
<strong>ورودی:</strong> فرمول گزاره‌ای φ با n متغیر
<strong>خروجی:</strong> آیا φ تاتولوژی است؟

<strong>برای</strong> i از ۰ <strong>تا</strong> 2ⁿ − 1 <strong>انجام بده:</strong>
    v ← تخصیص ارزش متناظر با i
    <strong>اگر</strong> Eval(φ, v) = ⊥ <strong>آنگاه:</strong>
        <strong>برگردان</strong> «خیر»
<strong>برگردان</strong> «بله»</pre>
      </div>
    </section>

    <hr>

    <!-- ==========================================
         فصل ۶: عناصر HTML خاص
    ========================================== -->
    <section id="chap6">
      <h2>۶. عناصر HTML خاص</h2>

      <h3>۶.۱ بلوک تاشو (Details / Summary)</h3>
      <details>
        <summary><strong>جزئیات اثبات قانون دمورگان (کلیک کنید)</strong></summary>
        <p>
          اثبات از طریق جدول ارزش: هر چهار حالت ممکن را بررسی می‌کنیم.
        </p>
        $$\neg(p \land q) \equiv (\neg p) \lor (\neg q)$$
        <table>
          <tr><th>$p$</th><th>$q$</th><th>چپ</th><th>راست</th><th>برابر؟</th></tr>
          <tr><td>T</td><td>T</td><td>F</td><td>F</td><td>✅</td></tr>
          <tr><td>T</td><td>F</td><td>T</td><td>T</td><td>✅</td></tr>
          <tr><td>F</td><td>T</td><td>T</td><td>T</td><td>✅</td></tr>
          <tr><td>F</td><td>F</td><td>T</td><td>T</td><td>✅</td></tr>
        </table>
        <p>تمامی ستون‌ها برابرند. ∎</p>
      </details>

      <details>
        <summary><strong>📚 منابع بیشتر</strong></summary>
        <ul>
          <li><a href="https://en.wikipedia.org/wiki/De_Morgan%27s_laws" target="_blank">ویکی‌پدیا — قوانین دمورگان</a></li>
          <li><a href="https://plato.stanford.edu/entries/logic-classical/" target="_blank">Stanford Encyclopedia — Classical Logic</a></li>
        </ul>
      </details>

      <h3>۶.۲ هایلایت و علامت‌گذاری</h3>
      <p>
        این یک <mark>متن هایلایت‌شده</mark> است.
        این یک متن <ins>اضافه‌شده (inserted)</ins> و
        این یک متن <del>حذف‌شده (deleted)</del> است.
        این یک <small>متن کوچک</small> و
        این <sup>بالانوشت</sup> و این <sub>زیرنوشت</sub> است.
      </p>

      <h3>۶.۳ کیبورد و متغیر</h3>
      <p>
        برای نیم‌فاصله در ویندوز: <kbd>Shift</kbd> + <kbd>Space</kbd>
        <br>
        برای کامپایل: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd>
        <br>
        متغیر ریاضی: <var>x</var> = <var>y</var> + <var>z</var>
      </p>

      <h3>۶.۴ آدرس و زمان</h3>
      <address>
        نویسنده: <a href="mailto:ali@example.com">مهدی سالم</a><br>
        دانشگاه تهران، دانشکده ریاضی<br>
        تهران، ایران
      </address>
      <p>
        تاریخ انتشار:
        <time datetime="2025-07-13">۲۲ تیر ۱۴۰۴</time>
        — آخرین ویرایش:
        <time datetime="2025-07-13T15:30:00+03:30">ساعت ۱۵:۳۰</time>
      </p>

      <h3>۶.۵ نوار پیشرفت (Progress)</h3>
      <p>
        پیشرفت پروژه:
        <progress value="72" max="100" style="width:200px;">72%</progress>
        ۷۲٪
      </p>
      <p>
        تکمیل تست‌ها:
        <meter value="0.85" min="0" max="1" low="0.3" high="0.7" optimum="0.9"
               style="width:200px;">85%</meter>
        ۸۵٪
      </p>

      <h3>۶.۶ جعبه‌های هشدار (Admonitions)</h3>

      <div class="note box">
        <div class="box-title">📌 نکته</div>
        <p>در MDX معمولاً از کامپوننت‌های سفارشی برای Admonition استفاده می‌شود.</p>
      </div>

      <div class="warning box">
        <div class="box-title">⚠ هشدار</div>
        <p>
          فونت فارسی در نمودارهای Mermaid ممکن است در برخی
          مرورگرها به‌درستی نمایش داده نشود.
        </p>
      </div>

      <div class="box" style="background:#FCE4EC; border-color:#C62828;">
        <div class="box-title" style="color:#C62828;">🚫 احتیاط</div>
        <p>
          قبل از تبدیل، مطمئن شوید که encoding فایل
          <code>UTF-8 with BOM</code> است.
        </p>
      </div>

      <div class="box" style="background:#E8F5E9; border-color:#2E7D32;">
        <div class="box-title" style="color:#2E7D32;">💡 راهنمایی</div>
        <p>برای رندر ریاضیات در MDX، از KaTeX یا MathJax استفاده کنید.</p>
      </div>

      <h3>۶.۷ لیست وظایف</h3>
      <ul style="list-style:none; padding-right:0.5em;">
        <li>☑️ نوشتن تعاریف پایه</li>
        <li>☑️ اثبات قضیه دمورگان</li>
        <li>⬜ اثبات قضیه تمامیت گودل</li>
        <li>⬜ بازبینی نهایی</li>
      </ul>

      <h3>۶.۸ نقل‌قول تو در تو</h3>
      <blockquote>
        <p>«منطق آغاز خرد است، نه پایان آن.» — اسپاک</p>
        <blockquote>
          <p>
            <strong>قضیه ناتمامیت گودل:</strong>
            در هر سیستم صوری سازگار که به‌اندازه کافی قوی باشد،
            گزاره‌هایی وجود دارند که نه اثبات‌پذیرند و نه ابطال‌پذیر.
          </p>
          <blockquote>
            <p>
              این قضیه در سال ۱۹۳۱ توسط <strong>کورت گودل</strong>
              منتشر شد.
              <sup><a href="#fn2" class="footnote-ref" id="fnref2">[۲]</a></sup>
            </p>
          </blockquote>
        </blockquote>
      </blockquote>

      <h3>۶.۹ Ordered List با انواع مختلف</h3>

      <h4>عددی</h4>
      <ol>
        <li>تعریف مسئله</li>
        <li>فرموله‌سازی</li>
        <li>اثبات</li>
      </ol>

      <h4>حروف لاتین</h4>
      <ol type="a">
        <li>روش مستقیم</li>
        <li>روش برهان خلف</li>
        <li>روش استقراء</li>
      </ol>

      <h4>رومی</h4>
      <ol type="i">
        <li>مقدمه</li>
        <li>بدنه اصلی</li>
        <li>نتیجه‌گیری</li>
      </ol>

      <h3>۶.۱۰ فرم (برای تست تبدیل عنصر)</h3>
      <form onsubmit="return false;" style="background:var(--bg-light); padding:1rem; border-radius:8px; margin:1rem 0;">
        <fieldset style="border:1px solid var(--border-light); border-radius:8px; padding:1rem;">
          <legend style="font-weight:700; color:var(--primary); padding:0 0.5em;">
            بررسی فرمول منطقی
          </legend>

          <label for="formula-input" style="display:block; margin-bottom:0.3em; font-weight:600;">
            فرمول:
          </label>
          <input
            type="text"
            id="formula-input"
            placeholder="مثال: p ∧ q → p"
            dir="ltr"
            style="width:100%; padding:0.5rem; border:1px solid var(--border-light); border-radius:4px; font-family:monospace; margin-bottom:1rem;"
          >

          <label for="method-select" style="display:block; margin-bottom:0.3em; font-weight:600;">
            روش اثبات:
          </label>
          <select id="method-select"
                  style="width:100%; padding:0.5rem; border:1px solid var(--border-light); border-radius:4px; margin-bottom:1rem;">
            <option value="truth-table">جدول ارزش</option>
            <option value="natural-deduction">استنتاج طبیعی</option>
            <option value="tableau">تابلو</option>
            <option value="resolution">رزولوشن</option>
          </select>

          <div style="margin-bottom:1rem;">
            <label style="font-weight:600;">گزینه‌ها:</label><br>
            <label><input type="checkbox" checked> نمایش جدول ارزش</label><br>
            <label><input type="checkbox"> نمایش درخت اثبات</label><br>
            <label><input type="checkbox"> خروجی LaTeX</label>
          </div>

          <div style="margin-bottom:1rem;">
            <label style="font-weight:600;">خروجی:</label><br>
            <label><input type="radio" name="output" value="html" checked> HTML</label>
            <label><input type="radio" name="output" value="pdf"> PDF</label>
            <label><input type="radio" name="output" value="mdx"> MDX</label>
          </div>

          <button type="submit"
                  style="background:var(--primary); color:white; border:none; padding:0.6rem 1.5rem; border-radius:6px; font-size:1em; cursor:pointer; font-family:inherit;">
            🧮 بررسی کن
          </button>
        </fieldset>
      </form>
    </section>

    <hr>

    <!-- ==========================================
         فصل ۷: محتوای دوزبانه
    ========================================== -->
    <section id="chap7">
      <h2>۷. محتوای دوزبانه</h2>

      <h3>۷.۱ پاراگراف ترکیبی فارسی-انگلیسی</h3>
      <p>
        در منطق ریاضی (<span dir="ltr" lang="en">Mathematical Logic</span>)،
        یک <strong>گزاره</strong>
        (<span dir="ltr" lang="en">Proposition</span>)
        جمله‌ای خبری است که دقیقاً یکی از دو ارزش
        <strong>درست</strong>
        (<span dir="ltr" lang="en">True, $\top$</span>)
        یا <strong>نادرست</strong>
        (<span dir="ltr" lang="en">False, $\bot$</span>)
        را دارد. این مفهوم پایه‌ای‌ترین واحد در
        <strong>منطق گزاره‌ای</strong>
        (<span dir="ltr" lang="en">Propositional Logic</span>) است.
      </p>

      <h3>۷.۲ بلوک کامل انگلیسی درون سند فارسی</h3>
      <div dir="ltr" lang="en" class="ltr-block"
           style="background:#F5F5F5; padding:1.5rem; border-radius:8px; border-left:4px solid var(--primary); margin:1.5rem 0;">
        <h4 style="color:var(--primary); margin-top:0;">
          Definition (Tautology)
        </h4>
        <p>
          A compound proposition $\varphi$ is a <strong>tautology</strong>
          if and only if it evaluates to <strong>true</strong> under
          every possible truth assignment:
        </p>
        $$\models \varphi \iff \forall\, v : v(\varphi) = \top$$
        <p>
          <strong>Example:</strong> $p \lor \neg p$ is a tautology
          (Law of Excluded Middle).
        </p>
      </div>

      <h3>۷.۳ بلوک کامل انگلیسی — اثبات</h3>
      <div dir="ltr" lang="en" class="ltr-block"
           style="background:#FFFDE7; padding:1.5rem; border-radius:8px; border-left:4px solid var(--accent-orange); margin:1.5rem 0;">
        <h4 style="color:var(--accent-orange); margin-top:0;">
          Proof (De Morgan's First Law)
        </h4>
        <p>We need to show: $\neg(p \land q) \equiv (\neg p) \lor (\neg q)$</p>
        <p><strong>Forward direction ($\Rightarrow$):</strong></p>
        <p>
          Assume $\neg(p \land q)$. For contradiction, suppose
          $\neg[(\neg p) \lor (\neg q)]$, i.e., $p \land q$.
          This contradicts our assumption.
        </p>
        <p><strong>Backward direction ($\Leftarrow$):</strong></p>
        <p>
          Assume $(\neg p) \lor (\neg q)$. If $p \land q$, then both
          $p$ and $q$ hold, contradicting $\neg p$ or $\neg q$. ∎
        </p>
      </div>

      <h3>۷.۴ جدول دوزبانه</h3>
      <table>
        <caption>جدول ۴ — واژه‌نامه فارسی-انگلیسی</caption>
        <thead>
          <tr>
            <th>فارسی</th>
            <th dir="ltr">English</th>
            <th>نماد</th>
            <th>توضیح</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>گزاره</td>
            <td dir="ltr">Proposition</td>
            <td>$p, q, r$</td>
            <td>جمله خبری با ارزش درست/نادرست</td>
          </tr>
          <tr>
            <td>تاتولوژی</td>
            <td dir="ltr">Tautology</td>
            <td>$\top$</td>
            <td>همیشه درست</td>
          </tr>
          <tr>
            <td>تناقض</td>
            <td dir="ltr">Contradiction</td>
            <td>$\bot$</td>
            <td>همیشه نادرست</td>
          </tr>
          <tr>
            <td>سور عمومی</td>
            <td dir="ltr">Universal Quantifier</td>
            <td>$\forall$</td>
            <td>برای همه</td>
          </tr>
          <tr>
            <td>سور وجودی</td>
            <td dir="ltr">Existential Quantifier</td>
            <td>$\exists$</td>
            <td>وجود دارد</td>
          </tr>
        </tbody>
      </table>
    </section>

    <hr>

    <!-- ==========================================
         فصل ۸: فرمول‌های پیشرفته
    ========================================== -->
    <section id="chap8">
      <h2>۸. فرمول‌های پیشرفته ریاضی</h2>

      <h3>۸.۱ ماتریس</h3>
      $$
      A = \begin{pmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        a_{21} & a_{22} & \cdots & a_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn}
      \end{pmatrix}
      ,\qquad
      \vec{x} = \begin{pmatrix} x_1 \\ x_2 \\ \vdots \\ x_n \end{pmatrix}
      $$

      <h3>۸.۲ مجموع و انتگرال</h3>
      $$
      \sum_{k=0}^{\infty} \frac{x^k}{k!} = e^x
      ,\qquad
      \int_{-\infty}^{+\infty} e^{-x^2}\,dx = \sqrt{\pi}
      $$

      <h3>۸.۳ فرمول‌های فیزیک (معادلات ماکسول)</h3>
      $$
      \begin{aligned}
        \nabla \cdot \mathbf{E} &= \frac{\rho}{\epsilon_0}
          &\quad& \text{(قانون گاوس)} \\
        \nabla \cdot \mathbf{B} &= 0
          &\quad& \text{(نبود تک‌قطبی مغناطیسی)} \\
        \nabla \times \mathbf{E} &= -\frac{\partial \mathbf{B}}{\partial t}
          &\quad& \text{(قانون فاراده)} \\
        \nabla \times \mathbf{B} &= \mu_0 \mathbf{J}
          + \mu_0 \epsilon_0 \frac{\partial \mathbf{E}}{\partial t}
          &\quad& \text{(قانون آمپر-ماکسول)}
      \end{aligned}
      $$

      <h3>۸.۴ حالت‌ها (Cases)</h3>
      $$
      |x| = \begin{cases}
        x  & \text{اگر } x \geq 0 \\
        -x & \text{اگر } x < 0
      \end{cases}
      $$

      <h3>۸.۵ استقراء ریاضی</h3>
      <p><strong>قضیه:</strong> $\displaystyle\sum_{k=1}^{n} k = \frac{n(n+1)}{2}$</p>

      <p><strong>پایه:</strong></p>
      $$\sum_{k=1}^{1} k = 1 = \frac{1 \cdot 2}{2} \;\checkmark$$

      <p><strong>گام استقراء:</strong></p>
      $$
      \begin{aligned}
        \sum_{k=1}^{m+1} k
        &= \left(\sum_{k=1}^{m} k\right) + (m+1) \\
        &= \frac{m(m+1)}{2} + (m+1) \\
        &= \frac{(m+1)(m+2)}{2} \quad\blacksquare
      \end{aligned}
      $$

      <h3>۸.۶ زنجیره استدلال</h3>
      <div class="proof box">
        <div class="box-title">اثبات: $\{p \to q,\; q \to r\} \vdash p \to r$</div>
        <table style="width:auto; margin:0;">
          <thead>
            <tr><th>خط</th><th>فرمول</th><th>توجیه</th></tr>
          </thead>
          <tbody>
            <tr><td>۱</td><td>$p \to q$</td><td>فرض</td></tr>
            <tr><td>۲</td><td>$q \to r$</td><td>فرض</td></tr>
            <tr><td>۳</td><td>$p$</td><td>فرض (برای معرفی شرطی)</td></tr>
            <tr><td>۴</td><td>$q$</td><td>حذف شرطی: ۱، ۳</td></tr>
            <tr><td>۵</td><td>$r$</td><td>حذف شرطی: ۲، ۴</td></tr>
            <tr><td>۶</td><td>$p \to r$</td><td>معرفی شرطی: ۳–۵ ∎</td></tr>
          </tbody>
        </table>
      </div>

      <h3>۸.۷ فرمول‌های نظریه مجموعه‌ها</h3>
      $$
      \begin{aligned}
        A \cup B &= \{x \mid x \in A \lor x \in B\} \\
        A \cap B &= \{x \mid x \in A \land x \in B\} \\
        \mathcal{P}(A) &= \{S \mid S \subseteq A\} \\
        |A \cup B| &= |A| + |B| - |A \cap B|
      \end{aligned}
      $$

      <h3>۸.۸ تابع زتای ریمان</h3>
      $$
      \zeta(s) = \sum_{n=1}^{\infty} \frac{1}{n^s}
               = \prod_{p \text{ prime}} \frac{1}{1 - p^{-s}}
      \qquad (\operatorname{Re}(s) > 1)
      $$

      <h3>۸.۹ تعریف اپسیلون-دلتای حد</h3>
      $$
      \lim_{x \to a} f(x) = L
      \;\;\Longleftrightarrow\;\;
      \forall \epsilon > 0\;\;
      \exists \delta > 0\;\;
      \forall x\;\;
      \Big(0 < |x - a| < \delta \implies |f(x) - L| < \epsilon\Big)
      $$

      <h3>۸.۱۰ فرمول درون‌خطی فارسی-انگلیسی</h3>
      <p>
        مطابق <a href="#thm-demorgan">قضیه ۱.۱</a>،
        اگر $p$ بیانگر «هوا بارانی است» و $q$ بیانگر
        «هوا سرد است» باشد، آنگاه
        $\neg(p \land q)$ یعنی «<em>هوا بارانی و سرد نیست</em>»
        معادل است با
        $(\neg p) \lor (\neg q)$ یعنی
        «<em>هوا بارانی نیست <strong>یا</strong> سرد نیست</em>».
      </p>
    </section>

    <hr>

    <!-- ==========================================
         پانوشت‌ها
    ========================================== -->
    <section id="chap-footnotes" class="footnotes">
      <h2>پانوشت‌ها</h2>
      <ol>
        <li id="fn1">
          اصل طرد شق ثالث
          (<span dir="ltr" lang="en">Law of Excluded Middle</span>)
          در منطق شهودی
          (<span dir="ltr" lang="en">Intuitionistic Logic</span>)
          پذیرفته نیست. برای جزئیات بیشتر به مقاله گودل (۱۹۳۱) مراجعه کنید.
          <a href="#fnref1" title="بازگشت">↩</a>
        </li>
        <li id="fn2">
          Kurt Gödel,
          <cite>"Über formal unentscheidbare Sätze der Principia
          Mathematica und verwandter Systeme I"</cite>,
          <span dir="ltr" lang="en">Monatshefte für Mathematik und Physik</span>,
          38: 173–198, 1931.
          <a href="#fnref2" title="بازگشت">↩</a>
        </li>
        <li id="fn3">
          نیم‌فاصله
          (<span dir="ltr" lang="en">Zero-Width Non-Joiner, U+200C</span>)
          کاراکتری نامرئی است که در فارسی بین پیشوند/پسوند و ریشه
          قرار می‌گیرد: «می‌روم»، «کتاب‌ها».
          <a href="#fnref3" title="بازگشت">↩</a>
        </li>
      </ol>
    </section>

    <hr>

    <!-- ==========================================
         کتاب‌نامه
    ========================================== -->
    <section id="chap-bib">
      <h2>📚 کتاب‌نامه</h2>
      <ol style="font-size:0.95em;">
        <li id="ref-knuth">
          <span dir="ltr" lang="en">
            Knuth, D. E. (1997).
            <cite>The Art of Computer Programming</cite>,
            Vol. 1, 3rd ed. Addison-Wesley.
          </span>
        </li>
        <li id="ref-godel">
          <span dir="ltr" lang="en">
            Gödel, K. (1931).
            <cite>"Über formal unentscheidbare Sätze der Principia
            Mathematica und verwandter Systeme I"</cite>.
            Monatshefte für Mathematik und Physik, 38, 173–198.
          </span>
        </li>
        <li id="ref-ebrahimi">
          ابراهیمی، محمد (۱۳۹۹).
          <cite>مبانی منطق ریاضی</cite>.
          انتشارات دانشگاه تهران.
        </li>
        <li id="ref-mdn">
          <span dir="ltr" lang="en">
            MDN Web Docs (2024).
            <cite>"MathML"</cite>.
            <a href="https://developer.mozilla.org/en-US/docs/Web/MathML"
               target="_blank" rel="noopener">
              developer.mozilla.org
            </a>.
            Accessed: 2024-12-01.
          </span>
        </li>
        <li id="ref-vazirmatn">
          <span dir="ltr" lang="en">
            Rastikerdar, S. (2024).
            <cite>"Vazirmatn Font"</cite>.
            <a href="https://github.com/rastikerdar/vazirmatn"
               target="_blank" rel="noopener">
              github.com/rastikerdar/vazirmatn
            </a>.
          </span>
        </li>
      </ol>
    </section>

    <hr>

    <!-- ==========================================
         پاصفحه
    ========================================== -->
    <footer>
      <p>
        ✍️ نویسنده: مهدی سالم
        &nbsp;|&nbsp;
        📅 تابستان ۱۴۰۴ — Summer 2025
        &nbsp;|&nbsp;
        📜 مجوز:
        <a href="https://opensource.org/licenses/MIT" target="_blank" rel="noopener">MIT</a>
      </p>
      <p>
        🔗 مخزن:
        <a href="https://github.com/example/format-converter"
           target="_blank" rel="noopener" dir="ltr">
          github.com/example/format-converter
        </a>
      </p>
      <p style="margin-top:1rem; font-size:0.8em; color:#999;">
        این سند صرفاً جهت تست تبدیل فرمت HTML → MDX تهیه شده است.
      </p>
    </footer>

  </div><!-- /.container -->
</body>
</html>
```

---

## ۶. فایل DOCX — راهنمای ساخت با PowerShell

چون فایل DOCX باینری است و نمی‌توان آن را مستقیماً در متن ارائه داد، اسکریپت زیر یک فایل DOCX نمونه با استفاده از **COM Object** ورد (یا جایگزین: `pandoc`) می‌سازد:

### روش ۱: با Pandoc (پیشنهادی)

```powershell
# ============================================================
#  create-docx.ps1
#  ساخت فایل DOCX نمونه از Markdown با pandoc
# ============================================================

$OutputDir = ".\test-files"
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

$mdFile  = Join-Path $OutputDir "sample-mermaid.md"
$docxOut = Join-Path $OutputDir "sample-book.docx"

# بررسی وجود pandoc
if (-not (Get-Command "pandoc" -ErrorAction SilentlyContinue)) {
    Write-Host @"
❌ pandoc یافت نشد!
نصب کنید:
  winget install JohnMacFarlane.Pandoc
  # یا
  choco install pandoc

یا از https://pandoc.org/installing.html دانلود کنید.
"@ -ForegroundColor Red
    exit 1
}

# بررسی وجود فایل MD
if (-not (Test-Path $mdFile)) {
    Write-Host "❌ فایل $mdFile یافت نشد." -ForegroundColor Red
    Write-Host "ابتدا محتوای Markdown را در $mdFile ذخیره کنید." -ForegroundColor Yellow
    exit 1
}

Write-Host "🔄 تبدیل MD → DOCX با pandoc..." -ForegroundColor Cyan

pandoc $mdFile `
    -o $docxOut `
    --from=markdown+tex_math_dollars+pipe_tables+task_lists+definition_lists+footnotes `
    --to=docx `
    --toc `
    --toc-depth=3 `
    --number-sections `
    --highlight-style=tango `
    --metadata title="نمونه جامع مارک‌داون فارسی" `
    --metadata author="تیم تست" `
    --metadata date="تابستان ۱۴۰۴" `
    --metadata lang="fa" `
    --metadata dir="rtl"

if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ فایل DOCX ساخته شد: $docxOut" -ForegroundColor Green

    # نمایش حجم
    $size = (Get-Item $docxOut).Length
    Write-Host "   📦 حجم: $([math]::Round($size/1KB, 1)) KB" -ForegroundColor Gray
} else {
    Write-Host "❌ خطا در تبدیل." -ForegroundColor Red
}
```

### روش ۲: با COM Object ورد (بدون نیاز به pandoc)

```powershell
# ============================================================
#  create-docx-com.ps1
#  ساخت فایل DOCX با COM Object مایکروسافت ورد
#  نیاز: Microsoft Word نصب‌شده
# ============================================================

$OutputDir = ".\test-files"
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null
$docxPath = (Resolve-Path $OutputDir).Path + "\sample-book-com.docx"

try {
    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    $doc = $word.Documents.Add()

    # --- تنظیمات RTL ---
    $doc.Content.ParagraphFormat.ReadingOrder = 0  # wdReadingOrderRtl
    $doc.Content.Font.Name = "B Nazanin"
    $doc.Content.Font.Size = 14

    # --- عنوان ---
    $range = $doc.Content
    $range.InsertAfter("مبانی منطق ریاضی و اثبات‌های صوری`n")
    $range.Paragraphs.Item(1).Style = "Heading 1"
    $range.InsertParagraphAfter()

    # --- زیرعنوان ---
    $range = $doc.Content
    $range.InsertAfter("Foundations of Mathematical Logic and Formal Proofs`n")
    $range.InsertParagraphAfter()

    # --- پاراگراف ---
    $range = $doc.Content
    $range.InsertAfter(
        "این سند به‌عنوان یک نمونه جامع تست طراحی شده " +
        "و شامل تمامی اجزای یک کتاب حرفه‌ای ریاضی–منطقی است.`n"
    )
    $range.InsertParagraphAfter()

    # --- تعریف ---
    $range = $doc.Content
    $range.InsertAfter("تعریف (گزاره):`n")
    $range.Paragraphs.Item($doc.Paragraphs.Count).Style = "Heading 2"
    $range.InsertParagraphAfter()

    $range = $doc.Content
    $range.InsertAfter(
        "گزاره جمله‌ای خبری است که دقیقاً یکی از دو " +
        "ارزش «درست» (True) یا «نادرست» (False) را دارد.`n"
    )
    $range.InsertParagraphAfter()

    # --- قضیه ---
    $range = $doc.Content
    $range.InsertAfter("قضیه (دمورگان):`n")
    $range.Paragraphs.Item($doc.Paragraphs.Count).Style = "Heading 2"
    $range.InsertParagraphAfter()

    $range = $doc.Content
    $range.InsertAfter("¬(p ∧ q) ≡ (¬p) ∨ (¬q)`n")
    $range.InsertParagraphAfter()

    # --- جدول ---
    $range = $doc.Content
    $range.InsertAfter("جدول ارزش:`n")
    $range.Paragraphs.Item($doc.Paragraphs.Count).Style = "Heading 3"
    $range.InsertParagraphAfter()

    $tableRange = $doc.Content
    $tableRange.Collapse(0) # wdCollapseEnd
    $table = $doc.Tables.Add($tableRange, 5, 4) # 5 rows x 4 cols
    $table.Borders.Enable = $true
    $table.Style = "Table Grid"

    # هدر
    $table.Cell(1,1).Range.Text = "p"
    $table.Cell(1,2).Range.Text = "q"
    $table.Cell(1,3).Range.Text = "¬(p∧q)"
    $table.Cell(1,4).Range.Text = "(¬p)∨(¬q)"

    # داده‌ها
    $data = @(
        @("T","T","F","F"),
        @("T","F","T","T"),
        @("F","T","T","T"),
        @("F","F","T","T")
    )
    for ($i = 0; $i -lt 4; $i++) {
        for ($j = 0; $j -lt 4; $j++) {
            $table.Cell($i+2, $j+1).Range.Text = $data[$i][$j]
        }
    }

    # --- ذخیره ---
    $doc.SaveAs2($docxPath, 16) # wdFormatXMLDocument = 16
    Write-Host "✅ فایل DOCX ساخته شد: $docxPath" -ForegroundColor Green

} catch {
    Write-Host "❌ خطا: $_" -ForegroundColor Red
} finally {
    if ($doc)  { $doc.Close($false) }
    if ($word) { $word.Quit() }
    [System.Runtime.InteropServices.Marshal]::ReleaseComObject($word) | Out-Null
}
```

---

## ۷. فایل PDF — راهنمای ساخت

### روش ۱: از LaTeX (بهترین کیفیت)

```powershell
# ============================================================
#  create-pdf-from-latex.ps1
# ============================================================

$texFile = ".\test-files\sample-book.tex"
$outDir  = ".\test-files"

if (-not (Get-Command "xelatex" -ErrorAction SilentlyContinue)) {
    Write-Host "❌ XeLaTeX یافت نشد! TeX Live یا MiKTeX نصب کنید." -ForegroundColor Red
    exit 1
}

Write-Host "🔄 کامپایل LaTeX → PDF..." -ForegroundColor Cyan

Push-Location $outDir
xelatex -interaction=nonstopmode (Resolve-Path $texFile)

# اگر biber نصب است
if (Get-Command "biber" -ErrorAction SilentlyContinue) {
    biber "sample-book"
    xelatex -interaction=nonstopmode (Resolve-Path $texFile)
}

xelatex -interaction=nonstopmode (Resolve-Path $texFile)
Pop-Location

$pdfPath = Join-Path $outDir "sample-book.pdf"
if (Test-Path $pdfPath) {
    $size = (Get-Item $pdfPath).Length
    Write-Host "✅ فایل PDF ساخته شد: $pdfPath" -ForegroundColor Green
    Write-Host "   📦 حجم: $([math]::Round($size/1KB, 1)) KB" -ForegroundColor Gray
} else {
    Write-Host "❌ فایل PDF ساخته نشد. لاگ را بررسی کنید." -ForegroundColor Red
}
```

### روش ۲: از HTML با pandoc/wkhtmltopdf

```powershell
# ============================================================
#  create-pdf-from-html.ps1
# ============================================================

$htmlFile = ".\test-files\sample-page.html"
$pdfOut   = ".\test-files\sample-page.pdf"

# روش الف: pandoc
pandoc $htmlFile -o $pdfOut `
    --pdf-engine=xelatex `
    --variable mainfont="Vazirmatn" `
    --variable mainfontoptions="Script=Arabic" `
    --variable geometry:margin=2.5cm

# روش ب: wkhtmltopdf (اگر نصب باشد)
# wkhtmltopdf --encoding utf-8 --enable-local-file-access $htmlFile $pdfOut
```

---

## ۸. اسکریپت اصلی — ساخت تمامی فایل‌ها

```powershell
# ============================================================
#  create-all-test-files.ps1
#  اسکریپت اصلی: ساخت تمامی فایل‌های تست
# ============================================================

param(
    [string]$OutputDir = ".\test-files",
    [switch]$SkipDocx,
    [switch]$SkipPdf
)

$ErrorActionPreference = "Stop"

Write-Host @"
╔══════════════════════════════════════════════════╗
║   🧪 ساخت فایل‌های تست تبدیل فرمت به MDX      ║
╠══════════════════════════════════════════════════╣
║   فرمت‌ها: LaTeX, HTML, Markdown, DOCX, PDF     ║
║   زبان: فارسی + انگلیسی                        ║
╚══════════════════════════════════════════════════╝
"@ -ForegroundColor Cyan

# --- ساخت پوشه ---
New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null
Write-Host "📁 پوشه: $OutputDir" -ForegroundColor Gray

# --- تابع ذخیره UTF-8 BOM ---
function Save-Utf8Bom {
    param([string]$Path, [string]$Content)
    $utf8Bom = [System.Text.UTF8Encoding]::new($true)
    [System.IO.File]::WriteAllText(
        (Join-Path (Get-Location) $Path),
        $Content,
        $utf8Bom
    )
    $size = (Get-Item $Path).Length
    Write-Host "  ✅ $Path ($([math]::Round($size/1KB,1)) KB)" -ForegroundColor Green
}

# --- بررسی ابزارها ---
Write-Host "`n🔍 بررسی ابزارهای نصب‌شده:" -ForegroundColor Yellow
$tools = @{
    "xelatex" = "XeLaTeX (TeX Live / MiKTeX)"
    "biber"   = "Biber (bibliography)"
    "pandoc"  = "Pandoc (document converter)"
}
foreach ($tool in $tools.GetEnumerator()) {
    $found = Get-Command $tool.Key -ErrorAction SilentlyContinue
    $status = if ($found) { "✅" } else { "❌ (اختیاری)" }
    Write-Host "  $status $($tool.Value)" -ForegroundColor (
        if ($found) { "Green" } else { "Yellow" }
    )
}

# --- راهنما ---
Write-Host @"

📋 مراحل:
  1. محتوای LaTeX را از چت کپی کنید → $OutputDir\sample-book.tex
  2. محتوای Markdown را کپی کنید    → $OutputDir\sample-mermaid.md
  3. محتوای HTML را کپی کنید        → $OutputDir\sample-page.html
  4. این اسکریپت را اجرا کنید برای ساخت DOCX و PDF

"@ -ForegroundColor White

# --- فایل‌های placeholder با BOM ---
Write-Host "📝 ساخت فایل‌های placeholder:" -ForegroundColor Yellow

$files = @{
    "$OutputDir\sample-book.tex" = @"
% محتوای LaTeX را از چت کپی کنید
% Compiler: XeLaTeX | Encoding: UTF-8 BOM
\documentclass{book}
\usepackage{fontspec}
\usepackage{xepersian}
\settextfont{IRLotus}
\begin{document}
محتوا را جایگزین کنید.
\end{document}
"@
    "$OutputDir\sample-mermaid.md" = @"
---
title: "نمونه تست"
lang: "fa"
dir: "rtl"
---
# محتوا را از چت کپی کنید
"@
    "$OutputDir\sample-page.html" = @"
<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head><meta charset="UTF-8"><title>نمونه</title></head>
<body><h1>محتوا را از چت کپی کنید</h1></body>
</html>
"@
}

foreach ($file in $files.GetEnumerator()) {
    Save-Utf8Bom -Path $file.Key -Content $file.Value
}

# --- بررسی encoding ---
Write-Host "`n🔍 بررسی encoding:" -ForegroundColor Yellow
Get-ChildItem $OutputDir -File | ForEach-Object {
    $bytes = [System.IO.File]::ReadAllBytes($_.FullName)
    $hasBom = ($bytes.Length -ge 3 -and
               $bytes[0] -eq 0xEF -and
               $bytes[1] -eq 0xBB -and
               $bytes[2] -eq 0xBF)
    $icon = if ($hasBom) { "✅" } else { "⚠️" }
    $enc  = if ($hasBom) { "UTF-8 BOM" } else { "No BOM" }
    Write-Host "  $icon $($_.Name): $enc" -ForegroundColor (
        if ($hasBom) { "Green" } else { "Yellow" }
    )
}

# --- DOCX (اختیاری) ---
if (-not $SkipDocx) {
    Write-Host "`n📄 ساخت DOCX:" -ForegroundColor Yellow
    $mdFile = "$OutputDir\sample-mermaid.md"
    $docxOut = "$OutputDir\sample-book.docx"

    if (Get-Command "pandoc" -ErrorAction SilentlyContinue) {
        pandoc $mdFile -o $docxOut `
            --from=markdown+tex_math_dollars+pipe_tables+task_lists+footnotes `
            --to=docx --toc --number-sections `
            --metadata title="نمونه جامع" `
            --metadata lang="fa" 2>$null

        if (Test-Path $docxOut) {
            $size = (Get-Item $docxOut).Length
            Write-Host "  ✅ $docxOut ($([math]::Round($size/1KB,1)) KB)" -ForegroundColor Green
        }
    } else {
        Write-Host "  ⏭ pandoc نصب نیست — DOCX ساخته نشد" -ForegroundColor Yellow
    }
}

# --- PDF (اختیاری) ---
if (-not $SkipPdf) {
    Write-Host "`n📕 ساخت PDF:" -ForegroundColor Yellow
    $texFile = "$OutputDir\sample-book.tex"
    $pdfOut  = "$OutputDir\sample-book.pdf"

    if (Get-Command "xelatex" -ErrorAction SilentlyContinue) {
        Push-Location $OutputDir
        xelatex -interaction=nonstopmode "sample-book.tex" 2>$null | Out-Null
        if (Get-Command "biber" -ErrorAction SilentlyContinue) {
            biber "sample-book" 2>$null | Out-Null
            xelatex -interaction=nonstopmode "sample-book.tex" 2>$null | Out-Null
        }
        xelatex -interaction=nonstopmode "sample-book.tex" 2>$null | Out-Null
        Pop-Location

        if (Test-Path $pdfOut) {
            $size = (Get-Item $pdfOut).Length
            Write-Host "  ✅ $pdfOut ($([math]::Round($size/1KB,1)) KB)" -ForegroundColor Green
        }
    } else {
        Write-Host "  ⏭ XeLaTeX نصب نیست — PDF ساخته نشد" -ForegroundColor Yellow
    }
}

# --- خلاصه نهایی ---
Write-Host @"

╔══════════════════════════════════════════════════╗
║   ✅ تمام شد!                                   ║
╠══════════════════════════════════════════════════╣
║   فایل‌ها:                                      ║
║     📄

<!-- POSSIBLE OVERLAP DETECTED (similarity: 85%) - REVIEW BELOW -->

ادامه اسکریپت اصلی و سپس فایل‌های تکمیلی:

```powershell
# --- خلاصه نهایی (ادامه) ---
Write-Host @"

╔══════════════════════════════════════════════════╗
║   ✅ تمام شد!                                   ║
╠══════════════════════════════════════════════════╣
║   فایل‌ها:                                      ║
║     📄 sample-book.tex      (LaTeX)             ║
║     📝 sample-mermaid.md    (Markdown+Mermaid)  ║
║     🌐 sample-page.html    (HTML)              ║
║     📋 sample-book.docx    (DOCX)              ║
║     📕 sample-book.pdf     (PDF)               ║
╠══════════════════════════════════════════════════╣
║   مراحل بعدی:                                   ║
║   1. محتوای هر فایل را از چت کپی کنید          ║
║   2. فایل‌ها را به تبدیل‌گر MDX بدهید           ║
║   3. خروجی را با چک‌لیست مقایسه کنید            ║
╚══════════════════════════════════════════════════╝
"@ -ForegroundColor Cyan

# --- لیست فایل‌ها ---
Write-Host "`n📂 فایل‌های موجود در $OutputDir`:" -ForegroundColor Yellow
Get-ChildItem $OutputDir -File | ForEach-Object {
    $size = [math]::Round($_.Length / 1KB, 1)
    $ext = $_.Extension.ToUpper().TrimStart('.')
    $icon = switch ($ext) {
        "TEX"  { "📄" }
        "MD"   { "📝" }
        "HTML" { "🌐" }
        "DOCX" { "📋" }
        "PDF"  { "📕" }
        default { "📎" }
    }
    Write-Host "  $icon $($_.Name) — $size KB" -ForegroundColor Gray
}

Write-Host "`n🏁 اسکریپت با موفقیت به پایان رسید.`n" -ForegroundColor Green
```

---

## ۹. فایل RST (reStructuredText) نمونه — فارسی

برای پوشش کامل‌تر فرمت‌ها، یک فایل RST نیز اضافه می‌کنم:

```rst
.. meta::
   :description: نمونه جامع reStructuredText فارسی برای تست تبدیل به MDX
   :author: تیم تست
   :language: fa
   :dir: rtl

.. role:: fa
   :class: persian

.. role:: en
   :class: english

========================================
مبانی منطق ریاضی و اثبات‌های صوری
========================================

:نویسنده: مهدی سالم (Mahdi Salem)
:تاریخ: تابستان ۱۴۰۴
:نسخه: 1.0
:واژه‌های کلیدی: منطق، ریاضی، اثبات، دمورگان

.. contents:: فهرست مطالب
   :depth: 3
   :local:

----

مقدمه و مفاهیم پایه
====================

این سند به‌عنوان یک **نمونه جامع تست** طراحی شده و شامل تمامی
اجزای یک سند حرفه‌ای ریاضی-منطقی در فرمت
reStructuredText (:en:`RST`) است.

.. note::

   تمامی ارجاعات، پانوشت‌ها و کتاب‌نامه این سند صرفاً جهت تست هستند.
   برای مطالعه بیشتر به [Knuth1997]_ و [Ebrahimi1399]_ مراجعه کنید.

.. warning::

   این فایل باید با encoding **UTF-8** ذخیره شود.
   حتماً از ویرایشگری استفاده کنید که نیم‌فاصله (ZWNJ) را حفظ کند.

تعاریف
------

.. admonition:: تعریف ۱.۱ — گزاره (Proposition)

   **گزاره** جمله‌ای خبری است که دقیقاً یکی از دو ارزش
   «درست» (True, ⊤) یا «نادرست» (False, ⊥) را دارد.

   .. pull-quote::

      A *proposition* is a declarative sentence that is either
      **true** or **false**, but not both.

.. admonition:: تعریف ۱.۲ — تاتولوژی (Tautology)

   گزاره مرکب φ یک **تاتولوژی** است اگر و تنها اگر
   تحت *هر* تخصیص ارزش، مقدار آن درست (⊤) باشد.

   .. math::

      \models \varphi \iff \forall\, v : v(\varphi) = \top

قضایا و اثبات
--------------

.. admonition:: قضیه ۱.۱ — قانون دمورگان (De Morgan's Laws)
   :class: theorem

   برای هر دو گزاره :math:`p` و :math:`q`:

   .. math::

      \neg(p \land q) &\equiv (\neg p) \lor (\neg q) \\
      \neg(p \lor q)  &\equiv (\neg p) \land (\neg q)

.. admonition:: اثبات
   :class: proof

   اثبات را با جدول ارزش انجام می‌دهیم.
   جدول کامل در `جدول ارزش دمورگان`_ آمده است.
   با بررسی تمامی حالات، ستون‌های مربوطه برابرند. ∎

.. admonition:: مثال ۱.۱
   :class: example

   فرض کنید :math:`p`: «هوا بارانی است» و :math:`q`: «هوا سرد است».
   آنگاه:

   .. math::

      \neg(p \land q) \equiv \text{«هوا بارانی نیست \textbf{یا} سرد نیست»}

قضیه اصل طرد شق ثالث
~~~~~~~~~~~~~~~~~~~~~

.. admonition:: قضیه ۱.۲
   :class: theorem

   برای هر گزاره :math:`p`:

   .. math::

      \models\; p \lor \neg p

   این قضیه به **اصل طرد شق ثالث** (Law of Excluded Middle) معروف است. [#f1]_

.. admonition:: اثبات
   :class: proof

   دو حالت وجود دارد:

   - اگر :math:`p = \top`: آنگاه :math:`p \lor \neg p = \top \lor \bot = \top` ✅
   - اگر :math:`p = \bot`: آنگاه :math:`p \lor \neg p = \bot \lor \top = \top` ✅

   پس در هر دو حالت مقدار درست است. ∎

----

جدول ارزش و عملگرها
====================

.. _جدول ارزش دمورگان:

جدول ارزش دمورگان
------------------

.. table:: جدول ۱ — جدول ارزش قوانین دمورگان
   :widths: 10 10 20 25 10

   ===  ===  ================  =======================  ======
    p    q    ¬(p ∧ q)          (¬p) ∨ (¬q)             برابر؟
   ===  ===  ================  =======================  ======
    T    T    F                  F                        ✅
    T    F    T                  T                        ✅
    F    T    T                  T                        ✅
    F    F    T                  T                        ✅
   ===  ===  ================  =======================  ======

جدول عملگرهای منطقی
--------------------

.. csv-table:: جدول ۲ — عملگرهای منطقی پایه
   :header: "عملگر", "نماد", "نام انگلیسی", "مثال"
   :widths: 15, 10, 25, 15

   "نقیض", "¬", "Negation", "¬p"
   "عطف", "∧", "Conjunction", "p ∧ q"
   "فصل", "∨", "Disjunction", "p ∨ q"
   "شرطی", "→", "Implication", "p → q"
   "دوشرطی", "↔", "Biconditional", "p ↔ q"

جدول مقایسه سیستم‌های اثبات
----------------------------

.. list-table:: جدول ۳ — مقایسه سیستم‌های اثبات
   :header-rows: 1
   :widths: 20 15 10 10 20

   * - سیستم
     - نوع
     - تمامیت
     - سازگاری
     - کاربرد
   * - هیلبرت
     - اصل‌موضوعی
     - ✅
     - ✅
     - مبانی نظری
   * - استنتاج طبیعی
     - قاعده‌محور
     - ✅
     - ✅
     - آموزش
   * - تابلو
     - درختی
     - ✅
     - ✅
     - اثبات خودکار
   * - رزولوشن
     - مکانیزه
     - ✅ [#f2]_
     - ✅
     - SAT Solvers

----

فرمول‌های ریاضی
===============

فرمول درون‌خطی
--------------

قانون دمورگان: :math:`\neg(p \land q) \equiv (\neg p) \lor (\neg q)`

ماتریس
-------

.. math::

   A = \begin{pmatrix}
     a_{11} & a_{12} & \cdots & a_{1n} \\
     a_{21} & a_{22} & \cdots & a_{2n} \\
     \vdots & \vdots & \ddots & \vdots \\
     a_{m1} & a_{m2} & \cdots & a_{mn}
   \end{pmatrix}

مجموع و انتگرال
----------------

.. math::

   \sum_{k=0}^{\infty} \frac{x^k}{k!} = e^x
   ,\qquad
   \int_{-\infty}^{+\infty} e^{-x^2}\,dx = \sqrt{\pi}

فرمول‌های فیزیک (ماکسول)
-------------------------

.. math::

   \begin{aligned}
     \nabla \cdot \mathbf{E} &= \frac{\rho}{\epsilon_0}
       &\quad& \text{(قانون گاوس)} \\
     \nabla \cdot \mathbf{B} &= 0
       &\quad& \text{(نبود تک‌قطبی)} \\
     \nabla \times \mathbf{E} &= -\frac{\partial \mathbf{B}}{\partial t}
       &\quad& \text{(فاراده)} \\
     \nabla \times \mathbf{B} &= \mu_0 \mathbf{J}
       + \mu_0 \epsilon_0 \frac{\partial \mathbf{E}}{\partial t}
       &\quad& \text{(آمپر-ماکسول)}
   \end{aligned}

حالت‌ها (Cases)
---------------

.. math::

   |x| = \begin{cases}
     x  & \text{اگر } x \geq 0 \\
     -x & \text{اگر } x < 0
   \end{cases}

استقراء ریاضی
--------------

**قضیه:** برای هر :math:`n \in \mathbb{N}`:

.. math::

   \sum_{k=1}^{n} k = \frac{n(n+1)}{2}

**پایه:** :math:`n = 1`:

.. math::

   \sum_{k=1}^{1} k = 1 = \frac{1 \cdot 2}{2} \;\checkmark

**گام استقراء:**

.. math::

   \sum_{k=1}^{m+1} k = \frac{m(m+1)}{2} + (m+1) = \frac{(m+1)(m+2)}{2} \quad\blacksquare

----

کد و الگوریتم
=============

کد Python
---------

.. code-block:: python
   :linenos:
   :caption: بررسی تاتولوژی
   :name: lst-tautology

   from itertools import product

   def is_tautology(formula, variables):
       """Check if a propositional formula is a tautology."""
       for values in product([True, False], repeat=len(variables)):
           env = dict(zip(variables, values))
           if not formula(env):
               return False
       return True

   # Example: p ∨ ¬p
   result = is_tautology(
       lambda e: e['p'] or (not e['p']),
       ['p']
   )
   print(f"p ∨ ¬p is tautology: {result}")  # True

کد JavaScript
--------------

.. code-block:: javascript
   :linenos:
   :caption: بررسی قانون دمورگان

   function verifyDeMorgan(p, q) {
     const left  = !(p && q);
     const right = (!p) || (!q);
     return left === right;
   }

   for (const p of [true, false]) {
     for (const q of [true, false]) {
       console.log(`p=${p}, q=${q}: ${verifyDeMorgan(p, q)}`);
     }
   }

کد LaTeX
--------

.. code-block:: latex
   :caption: نمونه قضیه در LaTeX

   \begin{theorem}{قانون دمورگان}{demorgan}
     برای هر دو گزاره $p$ و $q$:
     \begin{align}
       \neg(p \land q) &\equiv (\neg p) \lor (\neg q) \\
       \neg(p \lor q)  &\equiv (\neg p) \land (\neg q)
     \end{align}
   \end{theorem}

کد Bash
-------

.. code-block:: bash
   :caption: کامپایل LaTeX

   # Compile with XeLaTeX
   xelatex -interaction=nonstopmode document.tex
   biber document
   xelatex -interaction=nonstopmode document.tex
   xelatex -interaction=nonstopmode document.tex

کد درون‌خطی
-----------

از تابع ``is_tautology()`` برای بررسی تاتولوژی استفاده کنید.
فایل اصلی در مسیر ``src/logic/evaluator.py`` قرار دارد.

----

تصاویر و رسانه
===============

تصویر ساده
-----------

.. figure:: https://via.placeholder.com/600x300/1A73E8/FFFFFF?text=Mathematical+Logic
   :alt: نمودار منطق ریاضی
   :width: 600px
   :align: center

   شکل ۱ — نمودار مفهومی منطق ریاضی

تصویر با لینک
--------------

.. figure:: https://via.placeholder.com/400x200/00897B/FFFFFF?text=Click+for+Wikipedia
   :alt: ویکی‌پدیا
   :target: https://en.wikipedia.org/wiki/Mathematical_logic
   :width: 400px
   :align: center

   شکل ۲ — کلیک کنید تا به ویکی‌پدیا بروید

----

لینک‌ها و ارجاعات
==================

لینک‌های خارجی
--------------

- `ویکی‌پدیا — منطق ریاضی <https://en.wikipedia.org/wiki/Mathematical_logic>`_
- `Stanford Encyclopedia — Classical Logic <https://plato.stanford.edu/entries/logic-classical/>`_
- `Mermaid Documentation <https://mermaid.js.org/>`_

ارجاعات متقاطع
---------------

- ارجاع به قضیه: `قضایا و اثبات`_
- ارجاع به جدول: `جدول ارزش دمورگان`_
- ارجاع به کد: :ref:`lst-tautology <lst-tautology>`

----

محتوای دوزبانه
===============

پاراگراف ترکیبی
-----------------

در منطق ریاضی (Mathematical Logic)، یک **گزاره** (Proposition)
جمله‌ای خبری است که دقیقاً یکی از دو ارزش **درست** (True, ⊤)
یا **نادرست** (False, ⊥) را دارد.

بلوک انگلیسی
-------------

.. container:: ltr-block

   **Definition (Tautology)**

   A compound proposition φ is a **tautology** if and only if it
   evaluates to **true** under every possible truth assignment:

   .. math::

      \models \varphi \iff \forall\, v : v(\varphi) = \top

   **Example:** :math:`p \lor \neg p` is a tautology
   (Law of Excluded Middle).

----

عناصر خاص RST
==============

نقل‌قول
-------

   «منطق آغاز خرد است، نه پایان آن.» — اسپاک

.. epigraph::

   In mathematics, you don't understand things.
   You just get used to them.

   -- John von Neumann

.. pull-quote::

   قضیه ناتمامیت گودل نشان می‌دهد که در هر سیستم صوری
   سازگار و به‌اندازه کافی قوی، گزاره‌های اثبات‌ناپذیر وجود دارند.

حاشیه‌نویسی (Sidebar)
-----------------------

.. sidebar:: واژه‌نامه سریع

   :تاتولوژی: همیشه درست
   :تناقض: همیشه نادرست
   :اقناع‌پذیر: گاهی درست

این متن در کنار حاشیه‌نویسی قرار می‌گیرد و نشان‌دهنده
عملکرد sidebar در reStructuredText است.

لیست تعاریف
-----------

تاتولوژی (Tautology)
   گزاره‌ای مرکب که تحت هر تخصیص ارزش، درست است.

تناقض (Contradiction)
   گزاره‌ای مرکب که تحت هر تخصیص ارزش، نادرست است.

اقناع‌پذیر (Satisfiable)
   گزاره‌ای مرکب که حداقل یک تخصیص ارزش آن را درست می‌کند.

لیست فیلدی
----------

:نام: مهدی سالم
:ایمیل: ali@example.com
:دانشگاه: دانشگاه تهران
:رشته: منطق ریاضی
:سال: ۱۴۰۴

.. topic:: نکته مهم

   در RST، عناصر ``topic``، ``sidebar``، ``admonition``
   و ``container`` همگی می‌توانند به کامپوننت‌های MDX
   تبدیل شوند.

.. tip::

   برای رندر صحیح ریاضیات در MDX، از KaTeX یا MathJax استفاده کنید.

.. danger::

   فونت فارسی در برخی محیط‌ها ممکن است به‌درستی نمایش داده نشود.
   حتماً encoding را بررسی کنید.

.. deprecated:: 2.0
   از ``old_function()`` استفاده نکنید. به‌جای آن از
   ``new_function()`` استفاده کنید.

.. versionadded:: 1.5
   پشتیبانی از منطق محمولات مرتبه اول اضافه شد.

.. versionchanged:: 2.0
   الگوریتم بررسی تاتولوژی بهینه شد.

جایگزینی متن
-------------

.. |date| date::
.. |time| date:: %H:%M

این سند در تاریخ |date| و ساعت |time| تولید شده است.

.. |logo| image:: https://via.placeholder.com/24x24/1A73E8/FFFFFF?text=L
   :alt: لوگو

این |logo| نشان‌دهنده لوگوی پروژه است.

----

پانوشت‌ها
=========

.. [#f1] اصل طرد شق ثالث (Law of Excluded Middle)
   در منطق شهودی (Intuitionistic Logic) پذیرفته نیست.

.. [#f2] فقط برای فرم نرمال عطفی (CNF).

.. [#f3] نیم‌فاصله (Zero-Width Non-Joiner, U+200C) کاراکتری نامرئی
   است که در فارسی بین پیشوند/پسوند و ریشه قرار می‌گیرد.

----

کتاب‌نامه
=========

.. [Knuth1997] Knuth, D. E. (1997). *The Art of Computer Programming*,
   Vol. 1, 3rd ed. Addison-Wesley.

.. [Godel1931] Gödel, K. (1931). "Über formal unentscheidbare Sätze
   der Principia Mathematica und verwandter Systeme I".
   *Monatshefte für Mathematik und Physik*, 38, 173–198.

.. [Ebrahimi1399] ابراهیمی، محمد (۱۳۹۹). *مبانی منطق ریاضی*.
   انتشارات دانشگاه تهران.

.. [MDN2024] MDN Web Docs (2024). "MathML".
   https://developer.mozilla.org/en-US/docs/Web/MathML

----

.. footer::

   ✍️ نویسنده: مهدی سالم |
   📅 تابستان ۱۴۰۴ |
   📜 مجوز: MIT
```

---

## ۱۰. فایل AsciiDoc نمونه — فارسی

```asciidoc
= مبانی منطق ریاضی و اثبات‌های صوری
مهدی سالم <ali@example.com>
v1.0, تابستان ۱۴۰۴
:doctype: book
:lang: fa
:toc: right
:toc-title: فهرست مطالب
:toclevels: 3
:sectnums:
:sectnumlevels: 3
:icons: font
:source-highlighter: highlight.js
:stem: latexmath
:imagesdir: ./images
:experimental:
:xrefstyle: full
:chapter-label: فصل
:appendix-caption: پیوست
:caution-caption: احتیاط
:example-caption: مثال
:figure-caption: شکل
:important-caption: مهم
:note-caption: نکته
:table-caption: جدول
:tip-caption: راهنمایی
:warning-caption: هشدار

[abstract]
== چکیده

این سند یک *نمونه جامع* AsciiDoc فارسی-انگلیسی است که برای تست
تبدیل فرمت به **MDX** طراحی شده. تمامی عناصر مهم یک کتاب
حرفه‌ای ریاضی-منطقی در آن پوشش داده شده‌اند.

---

== مقدمه و مفاهیم پایه

این سند به‌عنوان یک **نمونه جامع تست** طراحی شده و شامل تمامی
اجزای یک سند حرفه‌ای ریاضی-منطقی است.

NOTE: تمامی ارجاعات، پانوشت‌ها و کتاب‌نامه صرفاً جهت تست هستند.

WARNING: این فایل باید با encoding *UTF-8* ذخیره شود.

=== تعاریف

[NOTE]
====
*تعریف ۱.۱ — گزاره (Proposition)*

**گزاره** جمله‌ای خبری است که دقیقاً یکی از دو ارزش «درست»
(True, ⊤) یا «نادرست» (False, ⊥) را دارد.
====

[NOTE]
====
*تعریف ۱.۲ — تاتولوژی (Tautology)*

گزاره مرکب φ یک **تاتولوژی** است اگر و تنها اگر:

[stem]
++++
\models \varphi \iff \forall\, v : v(\varphi) = \top
++++
====

=== قضایا و اثبات

[[thm-demorgan]]
.قضیه ۱.۱ — قانون دمورگان
****
برای هر دو گزاره stem:[p] و stem:[q]:

[stem]
++++
\neg(p \land q) \equiv (\neg p) \lor (\neg q)
++++

[stem]
++++
\neg(p \lor q) \equiv (\neg p) \land (\neg q)
++++
****

.اثبات
[%collapsible]
====
اثبات را با جدول ارزش انجام می‌دهیم.
جدول کامل در <<tab-demorgan>> آمده است.
با بررسی تمامی حالات، ستون‌های مربوطه برابرند. ∎
====

.مثال ۱.۱
====
فرض کنید stem:[p]: «هوا بارانی است» و stem:[q]: «هوا سرد است». آنگاه:

[stem]
++++
\neg(p \land q) \equiv \text{«هوا بارانی نیست یا سرد نیست»}
++++
====

---

== جدول ارزش و عملگرها

[[tab-demorgan]]
.جدول ۱ — جدول ارزش قوانین دمورگان
[cols="^1,^1,^2,^3,^1",options="header"]
|===
| p | q | ¬(p ∧ q) | (¬p) ∨ (¬q) | برابر؟

| T | T | F | F | ✅
| T | F | T | T | ✅
| F | T | T | T | ✅
| F | F | T | T | ✅
|===

.جدول ۲ — عملگرهای منطقی
[cols="15,10,25,15",options="header"]
|===
| عملگر | نماد | نام انگلیسی | مثال

| نقیض | ¬ | Negation | ¬p
| عطف | ∧ | Conjunction | p ∧ q
| فصل | ∨ | Disjunction | p ∨ q
| شرطی | → | Implication | p → q
| دوشرطی | ↔ | Biconditional | p ↔ q
|===

.جدول ۳ — سیستم‌های اثبات (با ادغام سلول)
[cols="20,15,^10,^10,20",options="header"]
|===
| سیستم | نوع | تمامیت | سازگاری | کاربرد

| هیلبرت | اصل‌موضوعی | ✅ | ✅ | مبانی نظری
| استنتاج طبیعی | قاعده‌محور | ✅ | ✅ | آموزش
| تابلو | درختی | ✅ | ✅ | اثبات خودکار
| رزولوشن | مکانیزه | ✅footnote:[فقط برای CNF] | ✅ | SAT Solvers
|===

---

== فرمول‌های ریاضی

=== فرمول درون‌خطی

قانون دمورگان: stem:[\neg(p \land q) \equiv (\neg p) \lor (\neg q)]

=== ماتریس

[stem]
++++
A = \begin{pmatrix}
  a_{11} & a_{12} & \cdots & a_{1n} \\
  a_{21} & a_{22} & \cdots & a_{2n} \\
  \vdots & \vdots & \ddots & \vdots \\
  a_{m1} & a_{m2} & \cdots & a_{mn}
\end{pmatrix}
++++

=== مجموع و انتگرال

[stem]
++++
\sum_{k=0}^{\infty} \frac{x^k}{k!} = e^x
\qquad
\int_{-\infty}^{+\infty} e^{-x^2}\,dx = \sqrt{\pi}
++++

=== حالت‌ها

[stem]
++++
|x| = \begin{cases}
  x  & \text{اگر } x \geq 0 \\
  -x & \text{اگر } x < 0
\end{cases}
++++

---

== کد و الگوریتم

=== Python

[source,python,linenums]
----
from itertools import product

def is_tautology(formula, variables):
    """Check if a propositional formula is a tautology."""
    for values in product([True, False], repeat=len(variables)):
        env = dict(zip(variables, values))
        if not formula(env):
            return False
    return True

result = is_tautology(
    lambda e: e['p'] or (not e['p']),
    ['p']
)
print(f"p ∨ ¬p is tautology: {result}")
----

=== JavaScript

[source,javascript,linenums]
----
function verifyDeMorgan(p, q) {
  const left  = !(p && q);
  const right = (!p) || (!q);
  return left === right;
}

for (const p of [true, false]) {
  for (const q of [true, false]) {
    console.log(`p=${p}, q=${q}: ${verifyDeMorgan(p, q)}`);
  }
}
----

=== کد درون‌خطی

از تابع `is_tautology()` استفاده کنید.
فایل در مسیر `src/logic/evaluator.py` قرار دارد.

---

== تصاویر

.شکل ۱ — نمودار منطق ریاضی
image::https://via.placeholder.com/600x300/1A73E8/FFFFFF?text=Logic+Diagram[نمودار منطق,600,300]

.شکل ۲ — نقشه ذهنی
image::https://via.placeholder.com/400x400/00897B/FFFFFF?text=Mind+Map[نقشه ذهنی,400,400]

---

== لینک‌ها و ارجاعات

=== لینک‌های خارجی

* https://en.wikipedia.org/wiki/Mathematical_logic[ویکی‌پدیا — منطق ریاضی]
* https://plato.stanford.edu/entries/logic-classical/[Stanford Encyclopedia]
* https://mermaid.js.org/[Mermaid Documentation]

=== ارجاعات متقاطع

* ارجاع به قضیه: <<thm-demorgan>>
* ارجاع به جدول: <<tab-demorgan>>

---

== محتوای دوزبانه

=== پاراگراف ترکیبی

در منطق ریاضی (Mathematical Logic)، یک **گزاره** (Proposition)
جمله‌ای خبری است.

=== بلوک انگلیسی

[.text-left]
--
*Definition (Tautology)*

A compound proposition φ is a *tautology* if and only if:

[stem]
++++
\models \varphi \iff \forall\, v : v(\varphi) = \top
++++
--

---

== عناصر خاص AsciiDoc

=== نقل‌قول

[quote, اسپاک, Star Trek]
____
منطق آغاز خرد است، نه پایان آن.
____

[quote, John von Neumann]
____
In mathematics, you don't understand things. You just get used to them.
____

=== جعبه‌ها

TIP: برای رندر ریاضیات در MDX، از KaTeX یا MathJax استفاده کنید.

IMPORTANT: بسته `xepersian` باید **آخرین** بسته بارگذاری‌شده باشد.

CAUTION: encoding فایل حتماً UTF-8 باشد.

=== لیست‌ها

.لیست غیرمرتب
* منطق گزاره‌ای
** جدول ارزش
** تاتولوژی
* منطق محمولات
** سور عمومی
** سور وجودی

.لیست مرتب
. تعریف مسئله
. فرموله‌سازی
. اثبات
.. روش مستقیم
.. برهان خلف
.. استقراء
. نتیجه‌گیری

.لیست وظایف
* [x] نوشتن تعاریف
* [x] اثبات دمورگان
* [ ] اثبات تمامیت گودل
* [ ] بازبینی نهایی

.واژه‌نامه
تاتولوژی:: گزاره‌ای که همیشه درست است.
تناقض:: گزاره‌ای که همیشه نادرست است.
اقناع‌پذیر:: گزاره‌ای که حداقل یک‌بار درست می‌شود.

=== میانبرهای کیبورد

برای نیم‌فاصله: kbd:[Shift+Space]

برای کامپایل: kbd:[Ctrl+Shift+B]

=== دکمه و منو

btn:[بررسی کن]

menu:File[Export > MDX]

---

== پانوشت‌ها

اصل طرد شق ثالثfootnote:[Law of Excluded Middle — در منطق شهودی پذیرفته نیست.]
در منطق کلاسیک اصلی بنیادین است.

نیم‌فاصلهfootnote:[Zero-Width Non-Joiner, U+200C] در تایپ فارسی
اهمیت زیادی دارد.

---

[bibliography]
== کتاب‌نامه

* [[[knuth97]]] Knuth, D. E. (1997). _The Art of Computer Programming_,
  Vol. 1, 3rd ed. Addison-Wesley.

* [[[godel31]]] Gödel, K. (1931). "Über formal unentscheidbare Sätze
  der Principia Mathematica und verwandter Systeme I".
  _Monatshefte für Mathematik und Physik_, 38, 173–198.

* [[[ebrahimi99]]] ابراهیمی، محمد (۱۳۹۹). _مبانی منطق ریاضی_.
  انتشارات دانشگاه تهران.

---

[colophon]
== درباره سند

✍️ نویسنده: مهدی سالم |
📅 تابستان ۱۴۰۴ |
📜 مجوز: MIT |
🔗 مخزن: https://github.com/example/format-converter
```

---

## ۱۱. جدول نهایی پوشش تست — تمامی فرمت‌ها

| عنصر | LaTeX | Markdown | HTML | RST | AsciiDoc |
|:-----|:-----:|:--------:|:----:|:---:|:--------:|
| **عناوین / سرفصل** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **Bold / Italic / Strike** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **لیست مرتب/نامرتب** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **Task List** | — | ✅ | ✅ | — | ✅ |
| **Definition List** | — | ✅ | ✅ | ✅ | ✅ |
| **جدول ساده** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **جدول ادغامی (colspan/rowspan)** | ✅ | — | ✅ | — | — |
| **جدول رنگی** | ✅ | — | ✅ | — | — |
| **جدول طولانی** | ✅ | ✅ | — | — | — |
| **جدول افقی (landscape)** | ✅ | — | — | — | — |
| **تصویر ساده** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **تصویر کنار متن** | ✅ | — | ✅ | ✅ | — |
| **زیرشکل** | ✅ | — | ✅ | — | — |
| **تصویر با لینک** | — | ✅ | ✅ | ✅ | ✅ |
| **SVG درون‌خطی** | — | — | ✅ | — | — |
| **ویدئو (embed)** | — | — | ✅ | — | — |
| **صوت (audio)** | — | — | ✅ | — | — |
| **نمودار Mermaid** | — | ✅ (۱۸ نوع) | ✅ (۸ نوع) | — | — |
| **نمودار TikZ/pgfplots** | ✅ (۶ نوع) | — | — | — | — |
| **فرمول درون‌خطی** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **فرمول بلوکی** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **ماتریس** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **Cases** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **فرمول چندخطی** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **قضیه/تعریف/اثبات** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **الگوریتم** | ✅ | ✅ | ✅ | — | — |
| **کد (چند زبان)** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **کد درون‌خطی** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **پانوشت** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **پی‌نوشت** | ✅ | — | — | — | — |
| **لینک خارجی** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **ارجاع متقاطع** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **کتاب‌نامه** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **نقل‌قول** | — | ✅ | ✅ | ✅ | ✅ |
| **نقل‌قول تو در تو** | — | ✅ | ✅ | — | — |
| **Admonition / Callout** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **بلوک تاشو (details)** | — | ✅ | ✅ | — | ✅ |
| **HTML درون سند** | — | ✅ | ✅ | ✅ | ✅ |
| **Emoji** | — | ✅ | ✅ | — | — |
| **هایلایت (mark)** | — | — | ✅ | — | — |
| **کیبورد (kbd)** | — | — | ✅ | — | ✅ |
| **Abbreviation (abbr)** | — | — | ✅ | — | — |
| **Progress / Meter** | — | — | ✅ | — | — |
| **فرم** | — | — | ✅ | — | — |
| **Address / Time** | — | — | ✅ | — | — |
| **Ins / Del / Sup / Sub** | — | — | ✅ | — | — |
| **محتوای دوزبانه** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **RTL** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **نیم‌فاصله** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **فهرست مطالب** | ✅ | — | ✅ | ✅ | ✅ |
| **فهرست اشکال/جداول** | ✅ | — | — | — | — |
| **Front Matter / Metadata** | ✅ | ✅ | ✅ | ✅ | ✅ |
| **رنگ‌بندی مدرن** | ✅ | — | ✅ | — | — |
| **سرصفحه/پاصفحه** | ✅ | — | ✅ | ✅ | — |
| **Field List** | — | — | — | ✅ | — |
| **Sidebar** | — | — | — | ✅ | ✅ |
| **Topic** | — | — | — | ✅ | — |
| **Epigraph** | — | — | — | ✅ | — |
| **Text Substitution** | — | — | — | ✅ | — |
| **Version Directives** | — | — | — | ✅ | — |
| **Button / Menu** | — | — | — | — | ✅ |

**مجموع عناصر منحصربه‌فرد: ۶۰+**

---

## ۱۲. چک‌لیست نهایی تبدیل (همه فرمت‌ها → MDX)

```markdown
## چک‌لیست تست تبدیل‌گر فرمت → MDX

### ۱. پایه
- [ ] Encoding خروجی UTF-8 است
- [ ] Front Matter صحیح تولید شده
- [ ] `lang="fa"` و `dir="rtl"` تنظیم شده

### ۲. متن
- [ ] عناوین H1–H6 صحیح‌اند
- [ ] Bold / Italic / Strikethrough حفظ شده
- [ ] نیم‌فاصله (ZWNJ) حذف نشده
- [ ] گیومه فارسی «» حفظ شده
- [ ] اعداد فارسی صحیح‌اند

### ۳. ساختار
- [ ] لیست مرتب/نامرتب صحیح
- [ ] Task List صحیح
- [ ] Definition List صحیح
- [ ] جداول با ستون‌بندی صحیح
- [ ] جداول ادغامی (colspan/rowspan) صحیح
- [ ] پاورقی‌ها صحیح

### ۴. ریاضی
- [ ] فرمول درون‌خطی $...$ رندر می‌شود
- [ ] فرمول بلوکی $$...$$ رندر می‌شود
- [ ] ماتریس صحیح
- [ ] Cases صحیح
- [ ] Aligned صحیح
- [ ] نمادهای خاص (∀, ∃, ∈, ⊤, ⊥, etc.) صحیح

### ۵. کد
- [ ] بلوک کد با syntax highlighting
- [ ] کد درون‌خطی صحیح
- [ ] شماره خطوط (اختیاری)
- [ ] زبان کد مشخص شده

### ۶. رسانه
- [ ] تصاویر با alt text
- [ ] تصاویر کنار متن (float/wrap)
- [ ] زیرشکل‌ها
- [ ] SVG درون‌خطی
- [ ] ویدئو embed
- [ ] صوت

### ۷. نمودار
- [ ] Mermaid Flowchart
- [ ] Mermaid Sequence
- [ ] Mermaid Class
- [ ] Mermaid State
- [ ] Mermaid ER
- [ ] Mermaid Gantt
- [ ] Mermaid Pie
- [ ] Mermaid Git
- [ ] Mermaid Mindmap
- [ ] Mermaid Timeline
- [ ] TikZ → تصویر

### ۸. جعبه‌ها
- [ ] قضیه → کامپوننت Theorem
- [ ] تعریف → کامپوننت Definition
- [ ] اثبات → کامپوننت Proof
- [ ] نکته/هشدار → Admonition
- [ ] بلوک تاشو → details

### ۹. لینک و ارجاع
- [ ] لینک خارجی صحیح
- [ ] ارجاع متقاطع (cross-ref) صحیح
- [ ] کتاب‌نامه صحیح
- [ ] فهرست مطالب (TOC) تولید شده

### ۱۰. دوزبانه
- [ ] بلوک LTR درون RTL صحیح
- [ ] پاراگراف ترکیبی فارسی-انگلیسی صحیح
- [ ] فونت فارسی/انگلیسی جداگانه

### ۱۱. HTML خاص
- [ ] kbd, mark, abbr, ins, del
- [ ] sup, sub
- [ ] progress, meter
- [ ] address, time
- [ ] form elements (اختیاری)

### ۱۲. فرمت‌های ورودی
- [ ] LaTeX (.tex) → MDX ✅
- [ ] Markdown (.md) → MDX ✅
- [ ] HTML (.html) → MDX ✅
- [ ] RST (.rst) → MDX ✅
- [ ] AsciiDoc (.adoc) → MDX ✅
- [ ] DOCX (.docx) → MDX ✅
- [ ] PDF (.pdf) → MDX ✅
```

---

این مجموعه اکنون **کاملاً تمام** شده و شامل:

| فرمت | فایل | وضعیت |
|:-----|:-----|:-----:|
| **LaTeX** | `sample-book.tex` | ✅ کامل |
| **Markdown + Mermaid** | `sample-mermaid.md` | ✅ کامل |
| **HTML** | `sample-page.html` | ✅ کامل |
| **RST** | `sample-page.rst` | ✅ کامل |
| **AsciiDoc** | `sample-page.adoc` | ✅ کامل |
| **DOCX** | اسکریپت ساخت (pandoc / COM) | ✅ کامل |
| **PDF** | اسکریپت ساخت (xelatex / pandoc) | ✅ کامل |
| **PowerShell** | `create-all-test-files.ps1` | ✅ کامل |
| **چک‌لیست تست** | ۶۰+ عنصر | ✅ کامل |

### Overlap Report

*1 overlap(s) detected:*

- **Overlap 1:** 51 chars, similarity 85%, Flagged

---

## Conversation 2
*(3 segments merged)*
*Model: claude-opus-4-6*

### Request

حال به من یک پرامپت خوب و کامل و همراه با جزءیات بده که بتوانم ابزاری طراحی کنم در ویندوز این نمونه‌ها و سایر فایل‌هایی از این دست را به درستی در یکی از قالب‌های فایل تکی، تعدادی فایل تکی در یک پوشه، فایل های پراکنده ی مرتبط با یک کتاب داخل یک پوشه، تعدادی فایل زیپ حاوی تک فایل و یا پوشه‌های به هم مرتبط، تک فایل زیپ (سند تک فایلی یا سند چند فایلی داخل یک پوشه) و نظایر آن دریافت کرده و پردازش و تست و خروجی دهی کند. 
پس ۱- ورودی را اسکن کرده و شناسایی کند. (تایید بگیرد)
۲- اطلاعات frontmatter و Metadata   مورد نیاز را بگیرد ویا با  AI   تکمیل کند. به خصوص برای slug و فایل‌هایی که دارای فایل‌های مرتبط و یا نیازمند رسانه‌های مرتبط (عکس و png , svg و ...) هستند. 
۲.۵- تست سریع تبدیل را انجام داده و اگر فایل مشکل دارد پیشنهاد اصلاح بدهد. 
۳- به درستی همه‌ ی انواع ورودی را با در اختیار قرار دادن انتخاب هایی برای تبدیل درست و کامل (همراه نمایش پیشرفت کار و خطاهای احتمالی و توصیه‌های تصحیح و تبدیل درست) به خروجی مناسب برای وب سایت من MDX تبدیل کرده و همه ی فایل‌ها و سندهای مرتبط را با ارتباط و پیوند دادن صحیح نهایی کند.
۴- تست خروجی و درتس بودن تبدیل‌ها و کامل بودن فایل را انجام دهد. 
۵- خروجی را در محلی که تعیین کرده‌ام یا انتخاب کنم منتقل کند. (با تمامی اجزا و ابعاد مورد نیاز) 
۶- گزارش موفقیت را در یک فایل مرکزی حفظ و نگهداری کند. 

یا اگر پیشنهاد بهتری داری بده. امیدوارم ایده را به خوبی بگیری. 
این پرامپت باید همه‌ی اجزا و نیازمندی‌های تبدیل درست و جامع را داشته باشد و نکته‌های فنی به خصوص در خصوص ملاحظات زبان فارسی و متون دو زبانه را در انواع فرمت‌های ورودی در نظر بگیرد. 
ممنون

### Response

# پرامپت جامع طراحی ابزار تبدیل فرمت به MDX

---

## پرامپت اصلی (Master Prompt)

```markdown
# 🔄 FormatForge: ابزار جامع تبدیل اسناد چندفرمتی به MDX

## ۱. شناسنامه پروژه

**نام پروژه:** FormatForge (یا نام دلخواه)
**پلتفرم هدف:** Windows 10/11 (x64)
**زبان(های) توسعه:** Python 3.11+ به‌عنوان هسته اصلی، PowerShell 7+ برای اسکریپت‌های سیستمی، و اختیاراً Rust/Go برای ماژول‌های عملکرد-بحرانی
**رابط کاربری:** 
  - CLI اصلی (اولویت اول — کامل و قابل اسکریپت)
  - TUI با Rich/Textual (اولویت دوم — تجربه بهتر در ترمینال)
  - GUI با Tauri یا Electron (اولویت سوم — اختیاری)
**زبان محتوا:** فارسی (RTL) به‌عنوان زبان اصلی، با پشتیبانی کامل از محتوای دوزبانه فارسی-انگلیسی و متون تمام‌انگلیسی
**خروجی نهایی:** فایل(های) MDX سازگار با Next.js / Astro / Gatsby / Docusaurus یا هر فریم‌ورک مبتنی بر MDX

---

## ۲. بیان مسئله و هدف

من یک مجموعه بزرگ از مقالات، کتاب‌ها، بیانیه‌ها و اثبات‌های منطقی ریاضی دارم که در فرمت‌های مختلف (LaTeX, HTML, Markdown, DOCX, PDF, RST, AsciiDoc, EPUB, Jupyter Notebook) نوشته شده‌اند. می‌خواهم ابزاری طراحی کنم که:

1. **ورودی‌های متنوع** را با هر ساختاری (تک‌فایل، پوشه، ZIP، ترکیبی) دریافت و شناسایی کند
2. **متادیتا و frontmatter** را استخراج، تکمیل و اعتبارسنجی کند (با کمک AI در صورت نیاز)
3. **تبدیل دقیق و کامل** به MDX انجام دهد با حفظ تمام عناصر (ریاضی، نمودار، کد، تصویر، جدول، ارجاعات، RTL، نیم‌فاصله و...)
4. **تست کیفیت** خروجی را به‌صورت خودکار انجام دهد
5. **خروجی نهایی** را در ساختار مناسب وب‌سایت من مستقر کند
6. **گزارش مرکزی** از تمام تبدیل‌ها نگهداری کند

### ویژگی‌های کلیدی محتوای من:
- اکثراً **فارسی با اصطلاحات انگلیسی** درون متن
- شامل **فرمول‌های ریاضی پیچیده** (ماتریس، aligned، cases، اثبات‌های چندمرحله‌ای)
- شامل **نمودارهای متنوع** (TikZ، pgfplots، Mermaid، SVG)
- شامل **کد برنامه‌نویسی** با syntax highlighting
- شامل **جداول پیچیده** (ادغامی، رنگی، طولانی، افقی)
- شامل **ارجاعات متقاطع** و کتاب‌نامه
- نیاز به **حفظ نیم‌فاصله** (ZWNJ, U+200C) در تمام مراحل
- نیاز به **جهت‌دهی دوگانه** (RTL برای فارسی، LTR برای کد/ریاضی/انگلیسی)

---

## ۳. معماری کلی سیستم

### ۳.۱ خط لوله پردازش (Processing Pipeline)

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌──────────────┐
│  STAGE 1    │───▶│  STAGE 2    │───▶│  STAGE 2.5  │───▶│  STAGE 3     │
│  اسکن و    │    │  متادیتا و  │    │  تست سریع   │    │  تبدیل اصلی │
│  شناسایی    │    │ frontmatter │    │  و پیش‌بررسی │    │  به MDX      │
└─────────────┘    └─────────────┘    └─────────────┘    └──────┬───────┘
                                                                │
┌─────────────┐    ┌─────────────┐    ┌──────────────┐          │
│  STAGE 6    │◀───│  STAGE 5    │◀───│  STAGE 4     │◀─────────┘
│  گزارش     │    │  استقرار    │    │  تست کیفیت   │
│  مرکزی     │    │  خروجی      │    │  خروجی       │
└─────────────┘    └─────────────┘    └──────────────┘
```

### ۳.۲ ساختار ماژولار

```
formatforge/
├── cli/                      # رابط خط فرمان
│   ├── __main__.py
│   ├── commands/
│   │   ├── scan.py           # دستور اسکن
│   │   ├── convert.py        # دستور تبدیل
│   │   ├── test.py           # دستور تست
│   │   ├── deploy.py         # دستور استقرار
│   │   └── report.py         # دستور گزارش
│   └── interactive.py        # حالت تعاملی
│
├── core/                     # هسته اصلی
│   ├── scanner/              # اسکنر ورودی
│   │   ├── file_detector.py  # تشخیص نوع فایل
│   │   ├── structure_analyzer.py  # تحلیل ساختار
│   │   ├── archive_handler.py     # مدیریت ZIP/RAR
│   │   └── encoding_detector.py   # تشخیص encoding
│   │
│   ├── metadata/             # مدیریت متادیتا
│   │   ├── extractor.py      # استخراج متادیتا
│   │   ├── schema.py         # شِمای متادیتا
│   │   ├── slug_generator.py # تولید slug
│   │   ├── ai_completer.py   # تکمیل با AI
│   │   └── validator.py      # اعتبارسنجی
│   │
│   ├── converters/           # تبدیل‌گرها
│   │   ├── base.py           # کلاس پایه
│   │   ├── latex_to_mdx.py
│   │   ├── html_to_mdx.py
│   │   ├── md_to_mdx.py
│   │   ├── docx_to_mdx.py
│   │   ├── pdf_to_mdx.py
│   │   ├── rst_to_mdx.py
│   │   ├── asciidoc_to_mdx.py
│   │   ├── epub_to_mdx.py
│   │   └── notebook_to_mdx.py
│   │
│   ├── processors/           # پردازشگرهای تخصصی
│   │   ├── math_processor.py       # فرمول‌های ریاضی
│   │   ├── mermaid_processor.py    # نمودارهای Mermaid
│   │   ├── tikz_processor.py      # تبدیل TikZ به SVG/تصویر
│   │   ├── code_processor.py      # بلوک‌های کد
│   │   ├── table_processor.py     # جداول پیچیده
│   │   ├── image_processor.py     # تصاویر و رسانه
│   │   ├── link_processor.py      # لینک‌ها و ارجاعات
│   │   ├── bibliography_processor.py  # کتاب‌نامه
│   │   ├── footnote_processor.py  # پانوشت
│   │   └── rtl_processor.py       # پردازش RTL/فارسی
│   │
│   ├── persian/              # ماژول تخصصی فارسی
│   │   ├── zwnj_handler.py   # مدیریت نیم‌فاصله
│   │   ├── bidi_handler.py   # مدیریت دوجهتی
│   │   ├── numeral_handler.py # تبدیل اعداد فا↔en
│   │   ├── font_handler.py   # مدیریت فونت
│   │   └── typography.py     # قواعد تایپوگرافی فارسی
│   │
│   ├── quality/              # تست کیفیت
│   │   ├── structural_test.py    # تست ساختاری
│   │   ├── math_test.py          # تست ریاضی
│   │   ├── visual_test.py        # تست بصری
│   │   ├── link_test.py          # تست لینک‌ها
│   │   ├── encoding_test.py      # تست encoding
│   │   ├── rtl_test.py           # تست RTL
│   │   ├── completeness_test.py  # تست کامل بودن
│   │   └── render_test.py        # تست رندر (headless browser)
│   │
│   └── deployer/             # استقرار خروجی
│       ├── file_organizer.py # سازماندهی فایل‌ها
│       ├── asset_manager.py  # مدیریت asset ها
│       └── deployer.py       # انتقال نهایی
│
├── ai/                       # ماژول هوش مصنوعی
│   ├── provider.py           # رابط با API های AI
│   ├── metadata_ai.py        # تکمیل متادیتا
│   ├── content_ai.py         # اصلاح محتوا
│   └── suggestion_ai.py      # پیشنهادات
│
├── reports/                  # گزارش‌دهی
│   ├── report_engine.py
│   ├── templates/
│   └── central_log.py
│
├── config/                   # تنظیمات
│   ├── default_config.yaml
│   ├── user_config.yaml
│   └── website_config.yaml
│
├── templates/                # قالب‌های MDX
│   ├── article.mdx.j2
│   ├── book_chapter.mdx.j2
│   ├── proof.mdx.j2
│   └── components/
│       ├── Theorem.jsx
│       ├── Definition.jsx
│       ├── Proof.jsx
│       ├── Admonition.jsx
│       └── MermaidDiagram.jsx
│
└── tests/                    # تست‌های واحد
    ├── test_files/           # فایل‌های نمونه تست
    └── ...
```

---

## ۴. مشخصات دقیق هر مرحله (Stage)

### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
### STAGE 1: اسکن و شناسایی ورودی
### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

#### ۴.۱.۱ انواع ورودی‌های پشتیبانی‌شده

ابزار باید **تمامی** سناریوهای ورودی زیر را پشتیبانی کند:

| سناریو | مثال | توضیح |
|:--------|:------|:------|
| **تک‌فایل** | `article.tex` | یک فایل منفرد |
| **چند فایل تکی در یک پوشه** | `articles/*.tex` | مجموعه مقالات مستقل |
| **فایل‌های مرتبط در یک پوشه** | `book/ch01.tex, ch02.tex, main.tex, refs.bib, images/` | یک کتاب چندفصلی |
| **پوشه‌ی پروژه LaTeX** | `project/` شامل `.tex`, `.bib`, `.sty`, `figures/` | پروژه LaTeX کامل |
| **تک فایل ZIP (سند تکی)** | `article.zip` → `article.tex` | فایل فشرده حاوی یک سند |
| **تک فایل ZIP (سند چندبخشی)** | `book.zip` → `book/ch01.tex, ch02.tex, ...` | فایل فشرده حاوی پروژه |
| **چند فایل ZIP** | `pack1.zip, pack2.zip` | چند آرشیو مرتبط |
| **ترکیبی** | پوشه شامل `.tex`, `.md`, `.html`, `.zip` | ترکیب انواع مختلف |
| **URL** | `https://arxiv.org/abs/...` | دانلود و تبدیل (اختیاری) |
| **Clipboard** | محتوای کپی‌شده | تبدیل مستقیم از clipboard |

#### ۴.۱.۲ الگوریتم شناسایی

```
برای هر ورودی (مسیر، فایل، URL):
│
├─ اگر ZIP/RAR/7Z/TAR.GZ است:
│   ├─ استخراج به پوشه موقت
│   ├─ تحلیل محتوای استخراج‌شده (بازگشتی)
│   └─ تشخیص: «تک‌سند» یا «چندسند» یا «پروژه»
│
├─ اگر پوشه است:
│   ├─ اسکن بازگشتی تمام فایل‌ها
│   ├─ دسته‌بندی بر اساس نوع:
│   │   ├─ اسناد اصلی (.tex, .md, .html, .docx, .pdf, .rst, .adoc, .ipynb, .epub)
│   │   ├─ رسانه‌ها (.png, .jpg, .svg, .gif, .mp4, .mp3, .webp)
│   │   ├─ سبک‌ها (.css, .sty, .cls)
│   │   ├─ متادیتا (.bib, .json, .yaml, .toml)
│   │   └─ سایر
│   ├─ تشخیص ارتباط بین فایل‌ها:
│   │   ├─ تحلیل \input, \include, \bibliography در LaTeX
│   │   ├─ تحلیل لینک‌ها و import ها در MD/HTML
│   │   ├─ تحلیل ارجاعات تصویر (src, \includegraphics, ![])
│   │   └─ ساخت گراف وابستگی
│   └─ تعیین ساختار: «مقالات مستقل» یا «کتاب چندفصلی» یا «مجموعه مرتبط»
│
├─ اگر تک‌فایل است:
│   ├─ تشخیص فرمت (بر اساس پسوند + تحلیل محتوا + magic bytes)
│   ├─ تشخیص encoding (UTF-8/UTF-8 BOM/UTF-16/Windows-1256/ISO-8859-6)
│   ├─ تشخیص زبان (فارسی/انگلیسی/دوزبانه)
│   └─ استخراج متادیتای سریع
│
└─ تولید «گزارش اسکن» (ScanReport)
```

#### ۴.۱.۳ خروجی مرحله ۱: ScanReport

```yaml
# مثال ScanReport
scan_id: "scan_20250713_153042"
timestamp: "2025-07-13T15:30:42+03:30"
input_path: "C:/Users/ali/Documents/logic-book/"
input_type: "directory"     # file | directory | archive | url | clipboard
total_files: 23
structure: "multi_chapter_book"  # single_doc | independent_articles |
                                 # multi_chapter_book | related_collection

documents:
  - id: "doc_001"
    path: "main.tex"
    format: "latex"
    encoding: "utf-8-bom"
    language: "fa+en"        # fa | en | fa+en
    role: "main_entry"       # main_entry | chapter | appendix | standalone
    size_bytes: 45200
    estimated_pages: 12
    dependencies:
      - "chapter01.tex"
      - "chapter02.tex"
      - "references.bib"
    images_referenced:
      - "figures/diagram1.png"
      - "figures/proof-tree.svg"
    has_math: true
    has_code: true
    has_tables: true
    has_bibliography: true
    has_tikz: true

  - id: "doc_002"
    path: "chapter01.tex"
    format: "latex"
    encoding: "utf-8"        # ⚠ بدون BOM
    language: "fa+en"
    role: "chapter"
    parent: "doc_001"
    # ...

assets:
  - path: "figures/diagram1.png"
    type: "image/png"
    size_bytes: 125400
    referenced_by: ["doc_001", "doc_002"]
  - path: "figures/proof-tree.svg"
    type: "image/svg+xml"
    size_bytes: 8900
    referenced_by: ["doc_001"]
  - path: "references.bib"
    type: "bibliography"
    entries_count: 15

warnings:
  - level: "warning"
    file: "chapter01.tex"
    message: "فایل بدون BOM است. ممکن است نیم‌فاصله‌ها از دست بروند."
    suggestion: "تبدیل به UTF-8 with BOM"
  - level: "info"
    file: "figures/old-diagram.png"
    message: "این تصویر در هیچ سندی ارجاع داده نشده."
    suggestion: "حذف یا بررسی"

confirmation_required: true
confirmation_prompt: |
  📂 ساختار شناسایی‌شده:
  ━━━━━━━━━━━━━━━━━━━━
  نوع: کتاب چندفصلی (۲ فصل + مقدمه + کتاب‌نامه)
  فرمت اصلی: LaTeX
  زبان: فارسی-انگلیسی
  ۲ تصویر، ۱ فایل کتاب‌نامه
  ⚠ ۱ هشدار encoding

  آیا این تشخیص صحیح است؟ [بله/خیر/ویرایش]
```

#### ۴.۱.۴ تعامل با کاربر (تأیید)

```
🔍 اسکن ورودی: C:\Users\ali\Documents\logic-book\

📊 نتیجه اسکن:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  نوع ساختار:    📚 کتاب چندفصلی
  فرمت اصلی:     📄 LaTeX
  زبان:          🌐 فارسی + انگلیسی
  encoding:      ✅ UTF-8 (۱ فایل بدون BOM ⚠)
  فایل‌ها:       ۴ سند + ۲ تصویر + ۱ کتاب‌نامه

  📄 main.tex ────────── نقطه ورود اصلی
    ├── chapter01.tex ── فصل ۱: مقدمه و مفاهیم
    ├── chapter02.tex ── فصل ۲: منطق گزاره‌ای
    ├── references.bib ─ کتاب‌نامه (۱۵ مرجع)
    └── figures/
        ├── diagram1.png  (122 KB)
        └── proof-tree.svg (9 KB)

  ⚠ هشدارها:
    1. chapter01.tex: بدون BOM → پیشنهاد: تبدیل encoding

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  [T] تأیید و ادامه
  [E] ویرایش ساختار
  [F] اصلاح خودکار هشدارها
  [A] تأیید + اصلاح خودکار
  [Q] لغو

  انتخاب شما: █
```

---

### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
### STAGE 2: استخراج و تکمیل متادیتا و Frontmatter
### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

#### ۴.۲.۱ شِمای متادیتا (Metadata Schema)

```typescript
// شِمای کامل متادیتای هر سند
interface DocumentMetadata {
  // --- اجباری ---
  title: string;                    // عنوان فارسی
  titleEn?: string;                 // عنوان انگلیسی (اختیاری)
  slug: string;                     // مسیر URL (فقط حروف لاتین، عدد، خط‌تیره)
  date: string;                     // تاریخ انتشار (ISO 8601)
  lang: "fa" | "en" | "fa-en";     // زبان اصلی
  dir: "rtl" | "ltr";              // جهت اصلی

  // --- نویسنده ---
  author: {
    name: string;
    nameEn?: string;
    email?: string;
    url?: string;
    affiliation?: string;
  };

  // --- دسته‌بندی ---
  type: "article" | "book" | "chapter" | "proof" | "lecture-note" | "tutorial";
  tags: string[];                   // برچسب‌ها (فارسی)
  tagsEn?: string[];                // برچسب‌ها (انگلیسی)
  categories: string[];             // دسته‌بندی‌ها
  series?: {                        // اگر بخشی از یک مجموعه باشد
    name: string;
    order: number;
    total?: number;
  };

  // --- محتوا ---
  description: string;              // خلاصه (فارسی، حداکثر ۳۰۰ کاراکتر)
  descriptionEn?: string;           // خلاصه انگلیسی
  abstract?: string;                // چکیده مفصل
  keywords: string[];               // کلمات کلیدی
  toc: boolean;                     // نمایش فهرست مطالب
  math: boolean;                    // آیا شامل ریاضی است
  mermaid: boolean;                 // آیا شامل نمودار Mermaid است
  codeHighlight: boolean;           // آیا شامل کد است

  // --- فایل‌ها ---
  sourceFormat: string;             // فرمت اصلی (latex, html, md, ...)
  sourceFile: string;               // نام فایل اصلی
  assets: {                         // فایل‌های وابسته
    images: string[];
    files: string[];
  };
  featuredImage?: string;           // تصویر شاخص

  // --- SEO و وب ---
  canonical?: string;               // URL کانونیکال
  noindex?: boolean;                // عدم ایندکس
  ogImage?: string;                 // تصویر Open Graph

  // --- تبدیل ---
  convertedAt: string;              // زمان تبدیل
  converterVersion: string;         // نسخه ابزار تبدیل
  qualityScore: number;             // امتیاز کیفیت (0-100)
  conversionNotes?: string[];       // یادداشت‌های تبدیل
}
```

#### ۴.۲.۲ استخراج متادیتا از فرمت‌های مختلف

```
فرمت         │  منابع استخراج متادیتا
━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
LaTeX        │  \title{}, \author{}, \date{}, \begin{abstract}
             │  پکیج hyperref: \hypersetup{pdftitle=...}
             │  کامنت‌های سرفایل (% Title: ...)
             │  فایل .bib برای کتاب‌نامه
━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
HTML         │  <title>, <meta name="...">, <meta property="og:...">
             │  Open Graph tags, Schema.org, Dublin Core
             │  <h1> اولین عنوان
━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Markdown     │  YAML frontmatter (---)
             │  TOML frontmatter (+++)
             │  اولین H1 (#)
━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
DOCX         │  Core Properties (title, author, subject, keywords)
             │  Custom Properties
             │  اولین پاراگراف با سبک Heading 1
━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
PDF          │  PDF metadata (Title, Author, Subject, Keywords)
             │  XMP metadata
             │  اولین خط بزرگ (عنوان احتمالی)
━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
RST          │  عنوان اصلی (overline + underline)
             │  :field: مقادیر
             │  .. meta:: directives
━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
AsciiDoc     │  = عنوان سطح ۰
             │  :attribute: مقادیر
━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Jupyter NB   │  metadata.kernelspec, metadata.title
             │  اولین سلول Markdown
```

#### ۴.۲.۳ تولید Slug

```python
# قواعد تولید slug:
# 1. اگر عنوان انگلیسی وجود دارد → از آن استفاده کن
# 2. اگر فقط فارسی است → ترجمه AI یا transliterate
# 3. slug فقط شامل: [a-z0-9-]
# 4. حداکثر ۶۰ کاراکتر
# 5. بدون خط‌تیره تکراری یا ابتدایی/انتهایی
# 6. یکتا بودن در سایت (بررسی با گزارش مرکزی)

# مثال‌ها:
# "قانون دمورگان" → "de-morgans-laws"
# "مبانی منطق ریاضی — فصل ۱" → "foundations-mathematical-logic-ch1"
# "Proof of Completeness Theorem" → "proof-completeness-theorem"

# برای کتاب چندفصلی:
# series_slug/chapter_slug
# "logic-foundations/ch01-introduction"
# "logic-foundations/ch02-propositional-logic"
```

#### ۴.۲.۴ تکمیل با AI

```
فیلدهایی که AI می‌تواند تکمیل یا پیشنهاد دهد:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. description / descriptionEn
   → خلاصه‌سازی خودکار محتوا

2. tags / tagsEn / keywords
   → استخراج کلمات کلیدی از محتوا

3. titleEn (اگر عنوان فقط فارسی باشد)
   → ترجمه عنوان

4. slug
   → تولید slug مناسب از عنوان

5. categories
   → دسته‌بندی خودکار بر اساس محتوا

6. featuredImage description / alt text
   → توصیف تصاویر

7. series detection
   → تشخیص اینکه آیا سند بخشی از یک مجموعه است

API‌های پشتیبانی‌شده:
  - OpenAI GPT-4 / GPT-4o
  - Anthropic Claude
  - Google Gemini
  - Local LLM (Ollama / LM Studio)
  - هیچ‌کدام (تکمیل دستی توسط کاربر)
```

#### ۴.۲.۵ تعامل با کاربر

```
📋 متادیتای استخراج‌شده:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  عنوان:     ✅ مبانی منطق ریاضی و اثبات‌های صوری
  عنوان EN:  🤖 Foundations of Mathematical Logic and Formal Proofs
  slug:      🤖 foundations-mathematical-logic-formal-proofs
  نویسنده:  ✅ مهدی سالم
  تاریخ:    ✅ 2025-07-13
  زبان:     ✅ فارسی + انگلیسی (fa-en)
  نوع:      🤖 book (کتاب)
  خلاصه:    🤖 «این کتاب به بررسی مبانی منطق ریاضی...» (۱۴۵ کاراکتر)
  برچسب‌ها:  🤖 [منطق, ریاضی, دمورگان, اثبات, گزاره‌ای]
  ریاضی:    ✅ بله
  Mermaid:   ❌ خیر
  کد:       ✅ بله

  ✅ = استخراج‌شده از سند
  🤖 = پیشنهاد AI
  ❓ = ناشناخته — نیاز به ورود دستی

  [C] تأیید همه
  [E] ویرایش (شماره فیلد)
  [R] بازتولید پیشنهادات AI
  [Q] لغو

  انتخاب شما: █
```

---

### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
### STAGE 2.5: تست سریع و پیش‌بررسی
### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

#### ۴.۲.۵.۱ بررسی‌های پیش از تبدیل

```
بررسی‌های فوری (Fast Checks):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

[الف] بررسی encoding:
  ☐ آیا UTF-8 است؟
  ☐ آیا BOM دارد؟
  ☐ آیا نیم‌فاصله‌ها سالم هستند؟ (شمارش ZWNJ)
  ☐ آیا کاراکترهای عجیب/شکسته وجود دارد؟

[ب] بررسی ساختار فایل:
  ☐ LaTeX: آیا \begin{document} و \end{document} وجود دارد؟
  ☐ LaTeX: آیا پکیج‌ها تعارض ندارند؟ (بررسی لیست تعارضات شناخته‌شده)
  ☐ LaTeX: آیا xepersian آخرین پکیج است؟
  ☐ HTML: آیا well-formed است؟ (تگ‌های بسته‌نشده)
  ☐ Markdown: آیا frontmatter معتبر YAML/TOML است؟
  ☐ DOCX: آیا فایل corrupt نیست؟
  ☐ PDF: آیا قابل خواندن/extractable است؟

[ج] بررسی وابستگی‌ها:
  ☐ آیا تمام تصاویر ارجاع‌شده وجود دارند؟
  ☐ آیا تمام فایل‌های include/input وجود دارند؟
  ☐ آیا فایل .bib وجود دارد (اگر ارجاع شده)؟
  ☐ آیا فونت‌های مورد نیاز نصب هستند؟ (برای LaTeX)

[د] بررسی محتوا:
  ☐ آیا فرمول‌های ریاضی syntax صحیحی دارند؟
    → تست سریع: parse فرمول‌ها با KaTeX/regex
  ☐ آیا بلوک‌های کد syntax صحیحی دارند؟
  ☐ آیا جداول ساختار صحیحی دارند؟
  ☐ آیا لینک‌ها معتبرند؟ (format check, not HTTP check)

[ه] تبدیل آزمایشی:
  ☐ تبدیل ۱۰٪ اول سند (یا اولین فصل)
  ☐ بررسی خروجی آزمایشی
  ☐ تخمین زمان تبدیل کامل
  ☐ شناسایی عناصر پیچیده/مشکل‌ساز
```

#### ۴.۲.۵.۲ گزارش پیش‌بررسی

```
⚡ تست سریع (Pre-flight Check):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  ✅ Encoding: UTF-8 BOM
  ✅ ساختار: معتبر
  ✅ وابستگی‌ها: ۲/۲ تصویر موجود، ۱/۱ bib موجود
  ⚠️ ریاضی: ۴۲ فرمول شناسایی شد — ۱ فرمول مشکوک:
     خط ۱۵۷: \begin{align} بدون \end{align} متناظر
     → پیشنهاد: بررسی خط ۱۵۷ فایل chapter02.tex
  ✅ جداول: ۵ جدول — همه معتبر
  ⚠️ TikZ: ۳ نمودار TikZ شناسایی شد
     → این نمودارها به SVG/PNG تبدیل خواهند شد
     → نیاز به نصب: xelatex + dvisvgm (یافت شد ✅)
  ✅ کد: ۴ بلوک کد — زبان‌ها: Python(2), JS(1), LaTeX(1)
  ❌ لینک شکسته: figures/old-diagram.png در خط ۸۹ ارجاع شده
     اما فایل وجود ندارد.
     → پیشنهاد: حذف ارجاع یا تهیه فایل

  📊 تخمین:
  ━━━━━━━━━
  زمان تبدیل: ~۴۵ ثانیه
  حجم خروجی: ~۱۲۰ KB (MDX) + ~۳۵۰ KB (assets)
  امتیاز آمادگی: ۸۵/۱۰۰

  [P] ادامه با تبدیل کامل
  [F] اصلاح خودکار مشکلات قابل‌حل
  [I] نادیده‌گرفتن هشدارها و ادامه
  [Q] لغو و بازگشت

  انتخاب شما: █
```

---

### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
### STAGE 3: تبدیل اصلی به MDX
### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

#### ۴.۳.۱ قواعد تبدیل عمومی (تمام فرمت‌ها)

##### الف) ریاضیات

```
ورودی                           │  خروجی MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
LaTeX: $...$ / \(...\)          │  $...$  (KaTeX inline)
LaTeX: $$...$$ / \[...\]       │  $$...$$ (KaTeX display)
LaTeX: \begin{equation}        │  $$...$$ با label
LaTeX: \begin{align}           │  $$\begin{aligned}...$$
LaTeX: \begin{cases}           │  $$\begin{cases}...$$
LaTeX: \begin{pmatrix}         │  $$\begin{pmatrix}...$$
HTML: MathML                    │  $...$ (تبدیل MathML→LaTeX)
HTML: MathJax spans             │  $...$
RST: :math:`...`               │  $...$
RST: .. math::                 │  $$...$$
AsciiDoc: stem:[...]           │  $...$
AsciiDoc: [stem]++++           │  $$...$$

⚠ نکات فارسی:
- متن فارسی درون فرمول: \text{اگر} → حفظ شود
- ترتیب RTL: فرمول‌ها همیشه LTR رندر می‌شوند
- \label{} → id برای ارجاع متقاطع
- \ref{} / \cref{} → لینک داخلی MDX
```

##### ب) نمودارها

```
ورودی                           │  خروجی MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
LaTeX TikZ                      │  گزینه ۱: تبدیل به SVG (dvisvgm)
                                │  گزینه ۲: تبدیل به PNG (ImageMagick)
                                │  گزینه ۳: <MermaidDiagram> اگر قابل تبدیل
LaTeX pgfplots                  │  تبدیل به SVG/PNG
Markdown ```mermaid             │  <MermaidDiagram chart={`...`} />
HTML <div class="mermaid">      │  <MermaidDiagram chart={`...`} />
SVG درون‌خطی                     │  فایل .svg جداگانه + <Image>
                                │  یا حفظ inline SVG
```

##### ج) جداول

```
ورودی                           │  خروجی MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ساده (بدون ادغام)               │  Markdown pipe table
ادغامی (colspan/rowspan)        │  <table> HTML درون MDX
رنگی                           │  <table> با className → CSS
طولانی (longtable)              │  <div style="overflow-x:auto"><table>
افقی (sidewaystable)            │  <div className="landscape-table">
tabularx                        │  <table> با عرض ۱۰۰٪
CSV table                       │  Markdown pipe table

⚠ نکات فارسی:
- جهت جدول: direction: rtl
- محتوای ریاضی در سلول: حفظ $...$
- header فارسی: text-align: right
- عنوان جدول (caption): زیر جدول (طبق سنت فارسی)
  یا بالای جدول (طبق سنت انگلیسی) → قابل تنظیم
```

##### د) تصاویر و رسانه

```
ورودی                           │  خروجی MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
\includegraphics{path}          │  <Image src="path" alt="..." />
![alt](path)                    │  <Image src="path" alt="..." />
<img src="path">                │  <Image src="path" alt="..." />
\begin{figure}...\caption       │  <Figure> کامپوننت
\begin{wrapfigure}              │  <Figure float="right"> یا CSS
\begin{subfigure}               │  <FigureGrid> کامپوننت
<video>/<iframe>                │  <Video> / <Embed> کامپوننت
<audio>                         │  <Audio> کامپوننت
SVG inline                      │  فایل مجزا یا inline

مسیردهی:
- تصاویر کپی می‌شوند به: assets/images/{slug}/
- نام‌گذاری: {slug}-fig-{number}.{ext}
- بهینه‌سازی: WebP/AVIF برای تصاویر رستری
- SVG: بهینه‌سازی با SVGO
- alt text: اجباری (از caption یا AI)
```

##### ه) قضیه / تعریف / اثبات

```
ورودی                           │  خروجی MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
LaTeX: \begin{theorem}          │  <Theorem id="..." title="...">
LaTeX: \begin{definition}       │  <Definition id="..." title="...">
LaTeX: \begin{proof}            │  <Proof for="...">
LaTeX: \begin{example}          │  <Example id="..." title="...">
LaTeX: \begin{lemma}            │  <Theorem type="lemma" ...>
LaTeX: \begin{corollary}        │  <Theorem type="corollary" ...>
tcolorbox (custom)              │  کامپوننت متناظر
Admonition (MD/RST/AsciiDoc)   │  <Admonition type="note|warning|...">

MD: > [!NOTE]                   │  <Admonition type="note">
MD: > [!WARNING]                │  <Admonition type="warning">
MD: > [!TIP]                    │  <Admonition type="tip">
```

##### و) کد

```
ورودی                           │  خروجی MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
LaTeX: \begin{lstlisting}       │  ```python {title="...",lines=true}
LaTeX: \begin{minted}           │  ```python {title="..."}
LaTeX: \begin{verbatim}         │  ```text
MD: ```python                   │  ```python
HTML: <pre><code>               │  ```language
MD: `inline`                    │  `inline`
LaTeX: \texttt{...}             │  `...`
LaTeX: \verb|...|               │  `...`

⚠ جهت: بلوک‌های کد همیشه LTR
   direction: ltr; text-align: left; unicode-bidi: isolate;
```

##### ز) لینک‌ها و ارجاعات

```
ورودی                           │  خروجی MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
\href{url}{text}                │  [text](url)
\url{url}                       │  [url](url)
\ref{label}                     │  [شماره](#label) یا <InternalRef>
\cref{label}                    │  <CrossRef id="label" />
\cite{key}                      │  <Citation id="key" /> یا [^cite-key]
\footnote{text}                 │  [^fn-N] ... [^fn-N]: text
\endnote{text}                  │  جمع‌آوری در انتهای سند
[text](url)                     │  [text](url) (حفظ)
<a href="url">                  │  [text](url)

⚠ ارجاعات بین فصل‌ها:
  - \ref{ch2:thm:demorgan} →
    [قضیه ۱.۱](/series-slug/ch02#thm-demorgan)
  - لینک‌های نسبی بین فایل‌های MDX
```

##### ح) پانوشت و کتاب‌نامه

```
پانوشت:
━━━━━━
LaTeX \footnote{text}     → [^fn-1] ... [^fn-1]: text
LaTeX \LTRfootnote{text}  → [^fn-1] ... [^fn-1]: text (LTR)
LaTeX \endnote{text}      → جمع‌آوری در بخش «پی‌نوشت‌ها»
MD [^1]                   → حفظ
HTML <sup><a href="#fn">  → [^fn-N]

کتاب‌نامه:
━━━━━━━━━
LaTeX biblatex/bibtex     → تبدیل .bib به JSON
                          → رندر با <Bibliography> کامپوننت
                          → یا تبدیل به لیست مرتب MD
APA/IEEE/... سبک         → قابل تنظیم
ارجاع \cite{key}         → [نویسنده, سال] با لینک به entry
```

##### ط) مدیریت RTL و فارسی

```
قواعد حیاتی RTL/فارسی:
━━━━━━━━━━━━━━━━━━━━━━━

1. نیم‌فاصله (ZWNJ, U+200C):
   - هرگز حذف نشود
   - در هر مرحله تبدیل بررسی شود
   - شمارش ZWNJ قبل و بعد تبدیل: باید برابر باشد
   - اگر اختلاف > 0: هشدار + گزارش محل حذف

2. جهت‌دهی:
   - بدنه اصلی: dir="rtl"
   - بلوک‌های کد: dir="ltr", unicode-bidi: isolate
   - فرمول‌های ریاضی: LTR (خودکار)
   - نمودارهای Mermaid: LTR container, RTL text labels
   - جداول: dir="rtl"
   - بلوک‌های تمام‌انگلیسی: <div dir="ltr" lang="en">

3. گیومه:
   - فارسی: «...»  (U+00AB, U+00BB)
   - نه "..." یا '...'

4. اعداد:
   - متن فارسی: ۰۱۲۳۴۵۶۷۸۹ (اختیاری — قابل تنظیم)
   - کد/ریاضی: 0123456789 (همیشه لاتین)
   - تاریخ فارسی: ۱۴۰۴/۰۴/۲۲

5. تایپوگرافی:
   - فاصله قبل از «:» و «؛» و «?» و «!» → حذف (طبق سنت فارسی)
   - فاصله بعد از «.» و «,» → حفظ
   - می‌ + فعل → نیم‌فاصله (نه فاصله)
   - «ها» / «ای» / «تر» / «ترین» → نیم‌فاصله

6. LaTeX خاص:
   - \lr{...} → <span dir="ltr">...</span>
   - \rl{...} → <span dir="rtl">...</span>
   - \begin{latin} → <div dir="ltr" lang="en">
   - \begin{persian} → <div dir="rtl" lang="fa">
   - \LTRfootnote → پانوشت با dir="ltr"

7. Frontmatter:
   - lang: "fa"
   - dir: "rtl"
   - همیشه حاضر باشند
```

#### ۴.۳.۲ قواعد تبدیل اختصاصی هر فرمت

##### LaTeX → MDX

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

۱. تحلیل preamble:
   - استخراج پکیج‌ها و تنظیمات
   - شناسایی فونت‌ها
   - شناسایی محیط‌های سفارشی (newtheorem, newtcbtheorem, etc.)
   - شناسایی دستورات سفارشی (\newcommand)

۲. بازگشایی ماکروها:
   - \newcommand → بازنویسی inline
   - \input{file} → ادغام فایل
   - \include{file} → ادغام فایل

۳. تبدیل ساختار:
   - \chapter → # (H1)
   - \section → ## (H2)
   - \subsection → ### (H3)
   - \subsubsection → #### (H4)
   - \paragraph → ##### (H5)

۴. تبدیل قالب‌بندی:
   - \textbf{} → **...**
   - \emph{} / \textit{} → *...*
   - \underline{} → <u>...</u>
   - \sout{} → ~~...~~
   - \texttt{} → `...`
   - \textsc{} → <span style="font-variant:small-caps">
   - \footnotesize / \small → <small>

۵. تبدیل محیط‌ها:
   - itemize → - لیست
   - enumerate → 1. لیست
   - description → Definition List
   - figure → <Figure>
   - table → <table> یا pipe table
   - equation/align/gather → $$...$$
   - theorem/definition/proof → کامپوننت‌ها
   - lstlisting/minted → ```code```
   - algorithm2e → شبه‌کد یا کد
   - tikzpicture → SVG/PNG
   - tcolorbox → <Admonition> یا <Box>

۶. تبدیل ارجاعات:
   - \label{} → id
   - \ref{} / \cref{} → لینک
   - \cite{} → ارجاع
   - \footnote{} → پانوشت
   - \bibliography{} → کتاب‌نامه

۷. حذف دستورات غیرضروری:
   - \usepackage{} → حذف
   - \pagestyle{} → حذف
   - \geometry{} → حذف
   - \fancyhf{} → حذف
   - تنظیمات صفحه‌بندی → حذف
```

##### HTML → MDX

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

۱. تحلیل <head>:
   - استخراج <title>, <meta> → frontmatter
   - شناسایی CSS → تبدیل به className
   - شناسایی <script> → حذف یا تبدیل

۲. تمیزکاری HTML:
   - حذف تگ‌های غیرضروری (<div> تودرتو بدون معنا)
   - تبدیل <br> → newline
   - تبدیل &nbsp; → فاصله
   - تبدیل HTML entities → Unicode
   - حذف inline styles → className

۳. تبدیل ساختاری:
   - <h1>-<h6> → #-######
   - <p> → پاراگراف
   - <strong>/<b> → **...**
   - <em>/<i> → *...*
   - <a href> → [text](url)
   - <img> → <Image>
   - <ul>/<ol> → لیست MD
   - <table> → pipe table یا <table> MDX
   - <blockquote> → > نقل‌قول
   - <pre><code> → ```code```
   - <figure> → <Figure>
   - <details> → <Details> کامپوننت
   - <sup>/<sub> → <sup>/<sub>
   - <mark> → <mark>
   - <kbd> → <kbd>
   - <abbr> → <abbr>
   - <time> → <time>
   - <address> → <address>

۴. تبدیل فرم‌ها:
   - <form>, <input>, <select> → <Form> کامپوننت (یا حذف)

۵. تبدیل رسانه:
   - <video>/<iframe> → <Video>/<Embed>
   - <audio> → <Audio>
   - <svg> → فایل مجزا + <Image>

۶. حفظ dir/lang:
   - <div dir="ltr"> → حفظ
   - <span lang="en"> → حفظ
```

##### Markdown → MDX

```
پردازش ترتیبی:
━━━━━━

ادامه پرامپت جامع:

```markdown
##### Markdown → MDX (ادامه)

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

۱. تحلیل Frontmatter:
   - YAML (---) → حفظ و تکمیل
   - TOML (+++) → تبدیل به YAML
   - اعتبارسنجی و تکمیل فیلدهای ناقص

۲. تبدیل عناصر:
   - اکثر عناصر MD مستقیماً در MDX معتبرند → حفظ
   - GFM extensions → بررسی پشتیبانی در MDX pipeline

۳. تبدیل‌های خاص MDX:
   - ```mermaid → <MermaidDiagram chart={`...`} />
   - ![alt](src) → <Image src={src} alt={alt} />  (اختیاری)
   - > [!NOTE] → <Admonition type="note">
   - > [!WARNING] → <Admonition type="warning">
   - > [!TIP] → <Admonition type="tip">
   - > [!CAUTION] → <Admonition type="caution">
   - > [!IMPORTANT] → <Admonition type="important">
   - <details> → <Details> یا <Collapsible>

۴. اضافه کردن import ها:
   - بررسی کامپوننت‌های استفاده‌شده
   - اضافه کردن import خودکار در بالای فایل:
     import Theorem from '@/components/Theorem';
     import MermaidDiagram from '@/components/MermaidDiagram';
     ...

۵. بررسی سازگاری JSX:
   - class → className
   - for → htmlFor
   - style="..." → style={{...}}
   - <!-- comment --> → {/* comment */}
   - خود-بسته‌شونده: <br> → <br />
   - <img> → <img /> یا <Image />

۶. حفظ HTML درون MD:
   - HTML معتبر → حفظ (MDX از HTML پشتیبانی می‌کند)
   - تبدیل به JSX syntax در صورت نیاز
```

##### DOCX → MDX

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

۱. استخراج محتوا:
   - استفاده از python-docx یا pandoc
   - استخراج Core Properties → frontmatter
   - حفظ ساختار Heading Levels

۲. تبدیل سبک‌ها:
   - Heading 1-6 → # تا ######
   - Normal → پاراگراف
   - List Bullet → - لیست
   - List Number → 1. لیست
   - Quote → > نقل‌قول
   - Code → ```code```
   - Table → pipe table یا <table>

۳. تبدیل قالب‌بندی:
   - Bold → **...**
   - Italic → *...*
   - Underline → <u>...</u>
   - Strikethrough → ~~...~~
   - Superscript → <sup>...</sup>
   - Subscript → <sub>...</sub>
   - Highlight → <mark>...</mark>

۴. استخراج تصاویر:
   - تصاویر embed شده → استخراج به پوشه assets
   - تبدیل WMF/EMF → PNG/SVG
   - حفظ alt text

۵. تبدیل فرمول‌ها:
   - OMML (Office Math) → LaTeX → $...$
   - MathType OLE → LaTeX (در صورت امکان)

۶. تبدیل جداول:
   - Simple table → pipe table
   - Merged cells → <table> HTML
   - Table style → CSS classes

۷. حفظ RTL:
   - بررسی paragraph direction
   - بررسی run-level bidi
   - تنظیم dir attributes

۸. پانوشت‌ها:
   - Footnotes → [^fn-N]
   - Endnotes → بخش پی‌نوشت
```

##### PDF → MDX

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

⚠ PDF پیچیده‌ترین فرمت برای تبدیل است.
   کیفیت خروجی بستگی به نوع PDF دارد.

۱. تشخیص نوع PDF:
   - PDF متنی (text-based): بهترین کیفیت
   - PDF اسکن‌شده (image-based): نیاز به OCR
   - PDF ترکیبی: بخشی متن، بخشی تصویر
   - PDF از LaTeX: بهترین حالت (ساختار حفظ شده)

۲. استخراج متن:
   - ابزار اصلی: PyMuPDF (fitz) یا pdfplumber
   - ابزار جایگزین: pdftotext (poppler)
   - OCR: Tesseract + pytesseract (برای تصاویر)
     → با زبان فارسی: tesseract --oem 3 -l fas+eng

۳. بازسازی ساختار:
   - تشخیص عناوین (بر اساس اندازه فونت و بولد بودن)
   - تشخیص پاراگراف‌ها
   - تشخیص لیست‌ها
   - تشخیص جداول (با camelot یا tabula)
   - تشخیص فرمول‌ها (با Nougat یا Mathpix)
   - تشخیص تصاویر (استخراج embedded images)

۴. بازسازی فرمول‌ها:
   - ابزار ۱: Nougat (Meta) — مدل تخصصی PDF→LaTeX
   - ابزار ۲: Mathpix API — تبدیل تصویر فرمول → LaTeX
   - ابزار ۳: InftyReader
   - ابزار ۴: AI (GPT-4 Vision) — برای موارد پیچیده

۵. استخراج تصاویر:
   - PyMuPDF: page.get_images()
   - ذخیره با کیفیت اصلی
   - تعیین محل در متن

۶. پردازش RTL:
   - تشخیص جهت پاراگراف
   - اصلاح ترتیب کاراکترها (logical order vs visual order)
   - بازسازی نیم‌فاصله‌ها (ممکن است از دست رفته باشند)

۷. بررسی کیفیت:
   - مقایسه تعداد صفحات
   - مقایسه تعداد تصاویر
   - مقایسه تقریبی تعداد کلمات
   - امتیاز اطمینان (confidence score)

⚠ محدودیت‌ها:
   - فرمول‌های پیچیده ممکن است نادرست تبدیل شوند
   - جداول پیچیده ممکن است شکسته شوند
   - نیم‌فاصله‌ها ممکن است از دست رفته باشند
   - توصیه: PDF از LaTeX ← بهتر است فایل .tex اصلی تبدیل شود
```

##### RST → MDX

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

۱. تحلیل ساختار:
   - عنوان‌ها (overline/underline) → #-######
   - .. contents:: → TOC
   - .. meta:: → frontmatter

۲. تبدیل Directives:
   - .. note:: → <Admonition type="note">
   - .. warning:: → <Admonition type="warning">
   - .. tip:: → <Admonition type="tip">
   - .. danger:: → <Admonition type="danger">
   - .. admonition:: Title → <Admonition title="Title">
   - .. code-block:: lang → ```lang
   - .. math:: → $$...$$
   - .. figure:: → <Figure>
   - .. image:: → <Image>
   - .. table:: → <table>
   - .. csv-table:: → pipe table
   - .. list-table:: → pipe table
   - .. topic:: → <Box>
   - .. sidebar:: → <Sidebar>
   - .. epigraph:: → <Blockquote>
   - .. pull-quote:: → <Blockquote>
   - .. container:: class → <div className="class">
   - .. raw:: html → حفظ HTML

۳. تبدیل Roles:
   - :math:`...` → $...$
   - :ref:`label` → [text](#label)
   - :doc:`path` → [text](path)
   - :download:`path` → [text](path)
   - :abbr:`text (explanation)` → <abbr title="explanation">text</abbr>
   - :kbd:`key` → <kbd>key</kbd>

۴. تبدیل پانوشت/ارجاع:
   - [#fn]_ → [^fn]
   - [label]_ → [text](#label) یا [text](url)
   - .. [label] → تعریف ارجاع

۵. Field Lists:
   - :field: value → متادیتا یا definition list
```

##### AsciiDoc → MDX

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

۱. تحلیل Header:
   - = Title → # (H1)
   - :attribute: → frontmatter
   - Author line → author metadata

۲. تبدیل ساختار:
   - == Section → ## (H2)
   - === Subsection → ### (H3)
   - .Title → عنوان بلوک
   - [options] → تنظیمات بلوک

۳. تبدیل بلوک‌ها:
   - [source,lang]---- → ```lang
   - [stem]++++ → $$...$$
   - [NOTE]==== → <Admonition type="note">
   - [WARNING]==== → <Admonition type="warning">
   - [TIP]==== → <Admonition type="tip">
   - [IMPORTANT]==== → <Admonition type="important">
   - [CAUTION]==== → <Admonition type="caution">
   - [quote,author]____ → <Blockquote>
   - [%collapsible]==== → <Details>
   - |=== table → pipe table یا <table>
   - image::path[] → <Image>

۴. تبدیل Inline:
   - *bold* → **bold**
   - _italic_ → *italic*
   - `mono` → `mono`
   - stem:[...] → $...$
   - <<anchor>> → [text](#anchor)
   - footnote:[text] → [^fn]
   - btn:[text] → <Button>
   - kbd:[key] → <kbd>key</kbd>
   - menu:path[] → breadcrumb
```

##### EPUB → MDX

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

۱. استخراج:
   - EPUB = ZIP حاوی XHTML + CSS + تصاویر + metadata
   - استخراج content.opf → متادیتا
   - استخراج toc.ncx یا nav.xhtml → فهرست مطالب

۲. تبدیل فصل‌ها:
   - هر فایل XHTML → یک فایل MDX
   - یا ادغام همه → یک فایل MDX

۳. تبدیل XHTML → MDX:
   - مشابه HTML → MDX

۴. مدیریت تصاویر:
   - استخراج از EPUB archive
   - کپی به پوشه assets
```

##### Jupyter Notebook → MDX

```
پردازش ترتیبی:
━━━━━━━━━━━━━━

۱. تحلیل .ipynb (JSON):
   - metadata → frontmatter
   - cells → بخش‌های محتوا

۲. تبدیل سلول‌ها:
   - markdown cell → محتوای MDX مستقیم
   - code cell → ```python ... ```
   - code output (text) → بلوک خروجی
   - code output (image) → <Image>
   - code output (HTML) → تبدیل HTML

۳. مدیریت خروجی‌ها:
   - stdout → <Output type="stdout">
   - stderr → <Output type="stderr">
   - display_data (image/png) → استخراج + <Image>
   - display_data (text/html) → تبدیل HTML
   - execute_result → <Output>
```

#### ۴.۳.۳ ساختار خروجی MDX

```
خروجی نمونه برای یک مقاله:
━━━━━━━━━━━━━━━━━━━━━━━━━━

de-morgans-laws/
├── index.mdx                  ← فایل اصلی MDX
└── assets/
    ├── diagram1.svg           ← نمودار تبدیل‌شده از TikZ
    ├── proof-tree.svg         ← درخت اثبات
    └── cover.webp             ← تصویر شاخص (بهینه‌شده)


خروجی نمونه برای یک کتاب:
━━━━━━━━━━━━━━━━━━━━━━━━━

logic-foundations/
├── _series.json               ← متادیتای مجموعه
├── 00-introduction/
│   ├── index.mdx
│   └── assets/
├── 01-propositional-logic/
│   ├── index.mdx
│   └── assets/
│       ├── truth-table.svg
│       └── demorgan-proof.svg
├── 02-predicate-logic/
│   ├── index.mdx
│   └── assets/
├── bibliography.json          ← کتاب‌نامه مشترک
└── shared-assets/
    └── cover.webp
```

```mdx
{/* === نمونه خروجی MDX === */}

---
title: "قانون دمورگان و کاربردهای آن"
titleEn: "De Morgan's Laws and Their Applications"
slug: "de-morgans-laws"
date: "2025-07-13"
author:
  name: "مهدی سالم"
  nameEn: "Mahdi Salem"
  email: "ali@example.com"
lang: "fa"
dir: "rtl"
type: "article"
tags: ["منطق", "دمورگان", "اثبات", "گزاره‌ای"]
tagsEn: ["logic", "de-morgan", "proof", "propositional"]
categories: ["منطق ریاضی"]
description: "بررسی و اثبات قوانین دمورگان در منطق گزاره‌ای با جدول ارزش و روش استنتاج طبیعی"
math: true
mermaid: true
codeHighlight: true
toc: true
sourceFormat: "latex"
sourceFile: "demorgan.tex"
convertedAt: "2025-07-13T15:30:42+03:30"
converterVersion: "FormatForge 1.0.0"
qualityScore: 95
---

import Theorem from '@/components/Theorem';
import Definition from '@/components/Definition';
import Proof from '@/components/Proof';
import Example from '@/components/Example';
import Admonition from '@/components/Admonition';
import Figure from '@/components/Figure';
import MermaidDiagram from '@/components/MermaidDiagram';
import CrossRef from '@/components/CrossRef';
import Citation from '@/components/Citation';

# قانون دمورگان و کاربردهای آن

{/* ... محتوای تبدیل‌شده ... */}
```

#### ۴.۳.۴ نمایش پیشرفت و خطاها

```
🔄 تبدیل: logic-book/ → MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 فایل ۱/۴: main.tex
  [████████████████████████████████████████] 100%
  ✅ Frontmatter استخراج شد
  ✅ ۳ فصل شناسایی شد
  ⏭ پردازش فصل‌ها به‌صورت مجزا

📄 فایل ۲/۴: chapter01.tex
  [████████████████████░░░░░░░░░░░░░░░░░░░] 52%
  ✅ عناوین: ۴ بخش تبدیل شد
  ✅ ریاضی: ۱۲ فرمول تبدیل شد
  ⚠ TikZ: نمودار خط ۸۵ → تبدیل به SVG...
  [████████████████████████████████░░░░░░░] 78%
  ✅ TikZ → SVG: assets/ch01-fig-01.svg (12 KB)
  ✅ جداول: ۲ جدول تبدیل شد
  ✅ قضیه‌ها: ۳ قضیه + ۲ تعریف + ۳ اثبات
  ✅ پانوشت: ۴ پانوشت
  ✅ ارجاعات: ۶ ارجاع متقاطع
  [████████████████████████████████████████] 100%
  ✅ chapter01.tex → 01-introduction/index.mdx

📄 فایل ۳/۴: chapter02.tex
  [████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░] 30%
  ⚠ هشدار: فرمول خط ۱۵۷ → \begin{align} بدون \end{align}
    → اصلاح خودکار: اضافه شد \end{aligned} (تأیید؟ [Y/n])
  [████████████████████████████████████████] 100%
  ✅ chapter02.tex → 02-propositional-logic/index.mdx

📄 فایل ۴/۴: references.bib
  ✅ ۱۵ مرجع → bibliography.json

📊 آمار نهایی:
━━━━━━━━━━━━━━
  فایل‌های MDX تولیدشده: ۳
  تصاویر/SVG: ۵ فایل (۱۸۰ KB)
  فرمول‌ها: ۴۲ (همه موفق ✅)
  جداول: ۷ (همه موفق ✅)
  نمودارها: ۳ TikZ→SVG (همه موفق ✅)
  کد: ۴ بلوک (همه موفق ✅)
  ارجاعات: ۱۸ (۱۶ موفق ✅, ۲ هشدار ⚠)
  نیم‌فاصله: ۲۳۴ (قبل) → ۲۳۴ (بعد) ✅ بدون تغییر
  زمان: ۳۸ ثانیه

  ⚠ هشدارها:
    1. ۲ ارجاع به فصل ۳ که هنوز تبدیل نشده
       → پیشنهاد: بعد از تبدیل فصل ۳ لینک‌ها اصلاح شوند
    2. فرمول خط ۱۵۷ اصلاح خودکار شد

  ادامه به مرحله تست؟ [Y/n]: █
```

---

### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
### STAGE 4: تست کیفیت خروجی
### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

#### ۴.۴.۱ سطوح تست

```
سطح ۱: تست ساختاری (Structural Test)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

☐ Frontmatter YAML معتبر است
☐ تمام فیلدهای اجباری حاضرند
☐ تمام import ها وجود دارند و صحیح‌اند
☐ JSX syntax معتبر است (parse بدون خطا)
☐ تمام تگ‌ها بسته شده‌اند
☐ تمام کامپوننت‌ها import شده‌اند
☐ فایل بدون خطای MDX compile می‌شود
☐ encoding خروجی UTF-8 است

سطح ۲: تست محتوایی (Content Test)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

☐ تعداد عناوین ورودی = تعداد عناوین خروجی
☐ تعداد پاراگراف‌ها تقریباً برابر
☐ تعداد فرمول‌ها: ورودی = خروجی
☐ تعداد تصاویر: ورودی = خروجی
☐ تعداد جداول: ورودی = خروجی
☐ تعداد بلوک‌های کد: ورودی = خروجی
☐ تعداد لینک‌ها: ورودی ≈ خروجی
☐ تعداد پانوشت‌ها: ورودی = خروجی
☐ تعداد ارجاعات کتاب‌نامه: ورودی = خروجی
☐ تعداد ZWNJ: ورودی = خروجی
☐ تعداد کلمات: اختلاف < ۵٪

سطح ۳: تست ریاضی (Math Test)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

☐ تمام فرمول‌های inline با KaTeX parse می‌شوند
☐ تمام فرمول‌های display با KaTeX parse می‌شوند
☐ \begin{aligned} / \end{aligned} جفت هستند
☐ \begin{cases} / \end{cases} جفت هستند
☐ \begin{pmatrix} / \end{pmatrix} جفت هستند
☐ تمام ماکروهای LaTeX شناخته‌شده هستند
☐ \label → id تبدیل شده
☐ \ref → لینک تبدیل شده

سطح ۴: تست فارسی/RTL (Persian Test)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

☐ dir="rtl" در frontmatter هست
☐ lang="fa" در frontmatter هست
☐ نیم‌فاصله‌ها حفظ شده‌اند (شمارش ZWNJ)
☐ گیومه‌ها «» هستند (نه "")
☐ بلوک‌های کد dir="ltr" دارند
☐ بلوک‌های انگلیسی dir="ltr" دارند
☐ \lr{} → <span dir="ltr"> تبدیل شده
☐ \begin{latin} → <div dir="ltr"> تبدیل شده
☐ متن فارسی درون فرمول حفظ شده (\text{اگر})

سطح ۵: تست لینک‌ها (Link Test)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

☐ تمام لینک‌های داخلی (anchor) هدف دارند
☐ تمام فایل‌های تصویر ارجاع‌شده وجود دارند
☐ تمام لینک‌های بین فصل‌ها صحیح‌اند
☐ لینک‌های خارجی فرمت صحیح دارند (اختیاری: HTTP check)

سطح ۶: تست بصری (Visual Test) — اختیاری
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

☐ رندر MDX در headless browser (Playwright/Puppeteer)
☐ اسکرین‌شات خودکار
☐ مقایسه بصری با PDF اصلی (اختیاری)
☐ بررسی رندر فرمول‌ها
☐ بررسی رندر نمودارها
☐ بررسی جهت RTL
```

#### ۴.۴.۲ امتیاز کیفیت (Quality Score)

```python
# محاسبه امتیاز کیفیت 0-100

quality_score = 0

# ساختار (25 امتیاز)
structural_tests = [frontmatter_valid, jsx_valid, imports_valid,
                    encoding_valid, compiles_ok]
quality_score += (sum(structural_tests) / len(structural_tests)) * 25

# محتوا (25 امتیاز)
content_ratio = min(
    headings_ratio,    # تعداد عناوین ورودی/خروجی
    formulas_ratio,    # تعداد فرمول‌ها ورودی/خروجی
    images_ratio,      # تعداد تصاویر ورودی/خروجی
    tables_ratio,      # تعداد جداول ورودی/خروجی
    code_ratio,        # تعداد کد ورودی/خروجی
    words_ratio,       # تعداد کلمات (تقریبی)
)
quality_score += content_ratio * 25

# ریاضی (20 امتیاز)
math_parse_rate = formulas_parseable / total_formulas
quality_score += math_parse_rate * 20

# فارسی (20 امتیاز)
persian_tests = [rtl_set, lang_set, zwnj_preserved,
                 quotes_correct, bidi_correct]
quality_score += (sum(persian_tests) / len(persian_tests)) * 20

# لینک‌ها (10 امتیاز)
link_validity = valid_links / total_links
quality_score += link_validity * 10

# درجه‌بندی:
# 90-100: عالی ✅ — آماده انتشار
# 75-89:  خوب 🟡 — بررسی دستی جزئی
# 50-74:  متوسط 🟠 — نیاز به اصلاح
# 0-49:   ضعیف 🔴 — تبدیل مجدد
```

#### ۴.۴.۳ گزارش تست

```
🧪 گزارش تست کیفیت:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📊 امتیاز کلی: ۹۵/۱۰۰ ✅ عالی

سطح ۱ — ساختاری:
  ✅ Frontmatter YAML معتبر
  ✅ JSX syntax معتبر
  ✅ تمام import ها صحیح
  ✅ Encoding: UTF-8
  ✅ MDX compile: موفق

سطح ۲ — محتوایی:
  ✅ عناوین: ۱۲/۱۲ (۱۰۰٪)
  ✅ فرمول‌ها: ۴۲/۴۲ (۱۰۰٪)
  ✅ تصاویر: ۵/۵ (۱۰۰٪)
  ✅ جداول: ۷/۷ (۱۰۰٪)
  ✅ کد: ۴/۴ (۱۰۰٪)
  ✅ پانوشت: ۸/۸ (۱۰۰٪)
  ⚠️ ارجاعات: ۱۶/۱۸ (۸۹٪)
     → ۲ ارجاع به فصل تبدیل‌نشده
  ✅ کلمات: ۳,۲۴۵ ≈ ۳,۲۵۱ (اختلاف ۰.۲٪)

سطح ۳ — ریاضی:
  ✅ KaTeX parse: ۴۲/۴۲ (۱۰۰٪)
  ✅ محیط‌های تودرتو: صحیح
  ✅ ارجاعات label/ref: ۱۲/۱۲

سطح ۴ — فارسی/RTL:
  ✅ dir="rtl" ✓
  ✅ lang="fa" ✓
  ✅ ZWNJ: ۲۳۴/۲۳۴ (۱۰۰٪ حفظ شده)
  ✅ گیومه «»: ۱۸/۱۸
  ✅ بلوک‌های LTR: ۶/۶ صحیح
  ✅ \lr{} تبدیل: ۱۴/۱۴

سطح ۵ — لینک‌ها:
  ✅ لینک‌های داخلی: ۱۴/۱۴
  ⚠️ لینک‌های بین‌فصلی: ۲ معلق
  ✅ تصاویر: ۵/۵ موجود
  ✅ لینک‌های خارجی: ۴/۴ فرمت صحیح

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  [D] ادامه به استقرار (Deploy)
  [V] تست بصری (نیاز به headless browser)
  [R] بازگشت و اصلاح ۲ ارجاع معلق
  [E] باز کردن فایل MDX در ویرایشگر
  [Q] لغو

  انتخاب شما: █
```

---

### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
### STAGE 5: استقرار خروجی
### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

#### ۴.۵.۱ تنظیمات وب‌سایت

```yaml
# config/website_config.yaml

website:
  name: "بلاگ ریاضی من"
  framework: "next"          # next | astro | gatsby | docusaurus | custom
  content_dir: "content/"    # مسیر نسبی محتوا
  assets_dir: "public/assets/"  # مسیر نسبی asset ها
  base_url: "https://mysite.com"

  paths:
    articles: "content/articles/"
    books: "content/books/"
    proofs: "content/proofs/"
    images: "public/assets/images/"
    files: "public/assets/files/"

  naming:
    # الگوی نام‌گذاری پوشه‌ها
    article_dir: "{slug}/"
    book_dir: "{series_slug}/{chapter_slug}/"
    # الگوی نام فایل اصلی
    main_file: "index.mdx"
    # الگوی نام تصاویر
    image_file: "{slug}-{type}-{number}.{ext}"

  components:
    # مسیر کامپوننت‌های MDX
    theorem: "@/components/mdx/Theorem"
    definition: "@/components/mdx/Definition"
    proof: "@/components/mdx/Proof"
    example: "@/components/mdx/Example"
    admonition: "@/components/mdx/Admonition"
    figure: "@/components/mdx/Figure"
    mermaid: "@/components/mdx/MermaidDiagram"
    citation: "@/components/mdx/Citation"
    cross_ref: "@/components/mdx/CrossRef"

  optimization:
    convert_images_to_webp: true
    max_image_width: 1200
    svgo_optimize: true
    minify_html_in_mdx: false

  git:
    auto_commit: false       # commit خودکار بعد از استقرار
    commit_message: "feat(content): add {title}"
    branch: "content/{slug}"
```

#### ۴.۵.۲ فرآیند استقرار

```
🚀 استقرار خروجی:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📁 مقصد: C:\Projects\my-blog\content\books\logic-foundations\

مراحل:
  ✅ ۱. ساخت ساختار پوشه‌ها
       └── logic-foundations/
           ├── 00-introduction/
           ├── 01-propositional-logic/
           └── 02-predicate-logic/

  ✅ ۲. کپی فایل‌های MDX
       ├── 00-introduction/index.mdx (8.2 KB)
       ├── 01-propositional-logic/index.mdx (12.5 KB)
       └── 02-predicate-logic/index.mdx (10.1 KB)

  ✅ ۳. کپی و بهینه‌سازی تصاویر
       ├── 00-introduction/assets/
       │   └── cover.webp (45 KB ← 180 KB PNG, ۷۵٪ کاهش)
       ├── 01-propositional-logic/assets/
       │   ├── truth-table.svg (3 KB ← 5 KB, SVGO)
       │   └── demorgan-proof.svg (8 KB)
       └── shared-assets/
           └── series-cover.webp (62 KB)

  ✅ ۴. تولید فایل‌های جانبی
       ├── _series.json (متادیتای مجموعه)
       └── bibliography.json (۱۵ مرجع)

  ✅ ۵. بروزرسانی لینک‌های نسبی
       → ۱۸ لینک بین‌فصلی اصلاح شد

  ✅ ۶. اعتبارسنجی نهایی
       → تمام فایل‌ها خوانا و سالم هستند
       → تمام تصاویر ارجاع‌شده وجود دارند
       → تمام لینک‌های داخلی معتبرند

📊 خلاصه:
  فایل‌های MDX: ۳
  تصاویر: ۴ (۱۱۸ KB مجموع)
  فایل‌های JSON: ۲
  حجم کل: ۱۴۹ KB

  [O] باز کردن پوشه در Explorer
  [G] Git commit (branch: content/logic-foundations)
  [P] پیش‌نمایش در مرورگر (next dev)
  [C] ادامه به گزارش
  [Q] پایان

  انتخاب شما: █
```

---

### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
### STAGE 6: گزارش مرکزی
### ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

#### ۴.۶.۱ ساختار گزارش مرکزی

```yaml
# reports/central_log.yaml
# این فایل تاریخچه کامل تمام تبدیل‌ها را نگه می‌دارد

version: "1.0"
last_updated: "2025-07-13T16:45:00+03:30"
total_conversions: 42
total_documents: 128
total_failures: 3

conversions:
  - id: "conv_20250713_153042"
    timestamp: "2025-07-13T15:30:42+03:30"
    status: "success"           # success | partial | failed
    
    input:
      path: "C:/Users/ali/Documents/logic-book/"
      type: "directory"
      structure: "multi_chapter_book"
      format: "latex"
      files_count: 7
      total_size_bytes: 245000
    
    output:
      path: "C:/Projects/my-blog/content/books/logic-foundations/"
      mdx_files: 3
      asset_files: 6
      total_size_bytes: 152000
      quality_score: 95
    
    metadata:
      title: "مبانی منطق ریاضی و اثبات‌های صوری"
      slug: "logic-foundations"
      lang: "fa"
      type: "book"
      chapters: 3
    
    stats:
      duration_seconds: 38
      formulas_converted: 42
      images_converted: 5
      tables_converted: 7
      code_blocks: 4
      footnotes: 8
      cross_refs: 18
      zwnj_preserved: "234/234"
    
    warnings:
      - "۲ ارجاع به فصل تبدیل‌نشده"
      - "فرمول خط ۱۵۷ اصلاح خودکار شد"
    
    errors: []

  - id: "conv_20250712_091500"
    timestamp: "2025-07-12T09:15:00+03:30"
    status: "partial"
    # ...

# آمار تجمعی
statistics:
  by_format:
    latex: { count: 25, success: 24, avg_quality: 92 }
    markdown: { count: 10, success: 10, avg_quality: 97 }
    html: { count: 4, success: 4, avg_quality: 88 }
    docx: { count: 2, success: 1, avg_quality: 75 }
    pdf: { count: 1, success: 0, avg_quality: 0 }
  
  by_language:
    fa: 18
    en: 12
    fa_en: 12
  
  by_type:
    article: 30
    book: 3
    chapter: 9
    proof: 0
  
  slugs_used:       # برای جلوگیری از تکرار
    - "de-morgans-laws"
    - "logic-foundations"
    - "logic-foundations/ch01-introduction"
    # ...
```

#### ۴.۶.۲ نمایش گزارش

```
📊 گزارش مرکزی FormatForge:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📈 آمار کلی:
  تبدیل‌ها: ۴۲ (موفق: ۳۹ | ناقص: ۲ | ناموفق: ۱)
  اسناد: ۱۲۸ فایل MDX تولیدشده
  میانگین کیفیت: ۹۱/۱۰۰

📋 آخرین ۵ تبدیل:
  ─────────────────────────────────────────────
  # │ تاریخ       │ عنوان                     │ فرمت │ کیفیت │ وضعیت
  ─────────────────────────────────────────────
  1 │ ۱۴۰۴/۰۴/۲۲ │ مبانی منطق ریاضی          │ LaTeX│  ۹۵  │  ✅
  2 │ ۱۴۰۴/۰۴/۲۱ │ نمونه مارک‌داون            │  MD  │  ۹۸  │  ✅
  3 │ ۱۴۰۴/۰۴/۲۱ │ صفحه HTML تست             │ HTML │  ۸۸  │  ✅
  4 │ ۱۴۰۴/۰۴/۲۰ │ مقاله منطق موجهات          │ DOCX │  ۷۵  │  ⚠️
  5 │ ۱۴۰۴/۰۴/۱۹ │ جزوه آنالیز               │  PDF │  ۴۲  │  ❌

📊 نمودار فرمت‌ها:
  LaTeX    ████████████████████████░ ۶۰٪ (25)
  Markdown ██████████░░░░░░░░░░░░░░ ۲۴٪ (10)
  HTML     ████░░░░░░░░░░░░░░░░░░░░ ۱۰٪ (4)
  DOCX     ██░░░░░░░░░░░░░░░░░░░░░░  ۵٪ (2)
  PDF      █░░░░░░░░░░░░░░░░░░░░░░░  ۲٪ (1)

  [D] جزئیات یک تبدیل
  [E] خروجی CSV/JSON
  [S] جستجو
  [Q] بازگشت

  انتخاب شما: █
```

---

## ۵. وابستگی‌ها و ابزارهای خارجی

### ۵.۱ وابستگی‌های Python

```
# requirements.txt

# === هسته ===
click>=8.1                    # CLI framework
rich>=13.7                    # ترمینال زیبا
textual>=0.70                 # TUI framework (اختیاری)
pyyaml>=6.0                   # YAML parsing
toml>=0.10                    # TOML parsing
pydantic>=2.5                 # اعتبارسنجی داده

# === تشخیص فایل ===
python-magic>=0.4             # تشخیص نوع فایل
chardet>=5.2                  # تشخیص encoding

# === تبدیل‌گرها ===
pypandoc>=1.13                # رابط Python برای Pandoc
beautifulsoup4>=4.12          # تحلیل HTML
lxml>=5.1                     # تحلیل XML/HTML
python-docx>=1.1              # خواندن DOCX
pymupdf>=1.23                 # خواندن PDF (fitz)
pdfplumber>=0.11              # استخراج جدول از PDF
ebooklib>=0.18                # خواندن EPUB
nbformat>=5.10                # خواندن Jupyter Notebooks

# === ریاضی ===
flatlatex>=0.15               # ساده‌سازی LaTeX
# یا
pylatexenc>=2.10              # تبدیل LaTeX ← Unicode

# === تصویر ===
pillow>=10.2                  # پردازش تصویر
cairosvg>=2.7                 # SVG → PNG
svgutils>=0.3                 # ویرایش SVG

# === AI (اختیاری) ===
openai>=1.35                  # OpenAI API
anthropic>=0.30               # Anthropic API
google-generativeai>=0.5      # Google Gemini

# === تست ===
playwright>=1.44              # تست بصری با headless browser

# === گزارش ===
jinja2>=3.1                   # قالب‌سازی گزارش
tabulate>=0.9                 # جداول متنی
```

### ۵.۲ ابزارهای خارجی

```
ابزار              │ استفاده                   │ نصب
━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━
Pandoc             │ تبدیل‌گر عمومی            │ winget install Pandoc
XeLaTeX            │ کامپایل LaTeX + TikZ→SVG  │ TeX Live / MiKTeX
Biber              │ کتاب‌نامه LaTeX            │ همراه TeX Live
dvisvgm            │ تبدیل TikZ → SVG          │ همراه TeX Live
ImageMagick        │ تبدیل/بهینه‌سازی تصویر    │ winget install ImageMagick
SVGO               │ بهینه‌سازی SVG             │ npm install -g svgo
cwebp              │ تبدیل به WebP             │ همراه libwebp
Tesseract OCR      │ OCR برای PDF اسکن‌شده     │ winget install Tesseract
Node.js            │ اجرای Mermaid CLI         │ winget install Node.js
mermaid-cli        │ رندر Mermaid → SVG/PNG    │ npm install -g @mermaid-js/mermaid-cli
Playwright         │ تست بصری                  │ pip install playwright
```

---

## ۶. تنظیمات و سفارشی‌سازی

### ۶.۱ فایل تنظیمات کاربر

```yaml
# config/user_config.yaml

# === عمومی ===
general:
  language: "fa"                    # زبان رابط: fa | en
  verbose: true                     # نمایش جزئیات بیشتر
  color: true                       # خروجی رنگی
  confirm_before_convert: true      # تأیید قبل از تبدیل
  confirm_before_deploy: true       # تأیید قبل از استقرار
  auto_fix_warnings: false          # اصلاح خودکار هشدارها
  temp_dir: "~/.formatforge/temp/"
  log_dir: "~/.formatforge/logs/"
  report_file: "~/.formatforge/central_log.yaml"

# === اسکن ===
scanner:
  max_file_size_mb: 100             # حداکثر اندازه فایل
  supported_formats:
    - latex   # .tex
    - html    # .html, .htm, .xhtml
    - markdown # .md, .mdx, .markdown
    - docx    # .docx
    - pdf     # .pdf
    - rst     # .rst
    - asciidoc # .adoc, .asciidoc
    - epub    # .epub
    - notebook # .ipynb
  ignore_patterns:
    - "*.aux"
    - "*.log"
    - "*.synctex*"
    - "*.fls"
    - "*.fdb_latexmk"
    - ".git/"
    - "node_modules/"
    - "__pycache__/"
    - ".DS_Store"
    - "Thumbs.db"

# === متادیتا ===
metadata:
  default_author:
    name: "مهدی سالم"
    nameEn: "Mahdi Salem"
    email: "ali@example.com"
  default_lang: "fa"
  default_dir: "rtl"
  slug_max_length: 60
  slug_transliterate: true          # transliterate فارسی → لاتین
  ai_provider: "openai"            # openai | anthropic | google | ollama | none
  ai_model: "gpt-4o"
  ai_auto_complete:
    description: true
    tags: true
    title_en: true
    slug: true
  require_fields:
    - title
    - slug
    - date
    - lang
    - dir
    - author

# === تبدیل ===
conversion:
  # --- ریاضی ---
  math:
    engine: "katex"                 # katex | mathjax
    display_mode_delimiters: ["$$", "$$"]
    inline_mode_delimiters: ["$", "$"]
    throw_on_error: false
    macros: {}                      # ماکروهای سفارشی KaTeX

  # --- نمودار ---
  diagrams:
    tikz_to: "svg"                  # svg | png
    tikz_dpi: 300                   # DPI برای PNG
    mermaid_to: "component"         # component | svg | png
    mermaid_theme: "base"

  # --- تصویر ---
  images:
    optimize: true
    convert_to_webp: true
    max_width: 1200
    quality: 85
    svg_optimize: true

  # --- کد ---
  code:
    add_line_numbers: false
    default_language: "text"
    highlight_theme: "github-dark"

  # --- جدول ---
  tables:
    complex_to_html: true           # جداول ادغامی → HTML
    simple_to_markdown: true        # جداول ساده → MD pipe

  # --- فارسی ---
  persian:
    preserve_zwnj: true             # حفظ نیم‌فاصله (غیرقابل تغییر!)
    fix_arabic_yeh: true            # تبدیل ي → ی
    fix_arabic_keh: true            # تبدیل ك → ک
    fix_spacing: true               # اصلاح فاصله‌گذاری فارسی
    numerals: "persian"             # persian | latin | keep
    quotation_marks: "guillemet"    # guillemet «» | standard ""

  # --- MDX ---
  mdx:
    component_style: "import"       # import | inline | global
    jsx_runtime: "react"            # react | preact
    mdx_version: 3                  # 2 | 3

# === تست ===
testing:
  run_structural: true
  run_content: true
  run_math: true
  run_persian: true
  run_links: true
  run_visual: false                 # نیاز به Playwright
  min_quality_score: 80             # حداقل امتیاز قبول
  visual_compare_with_source: false # مقایسه بصری با اصل

# === استقرار ===
deployment:
  target_dir: "C:/Projects/my-blog/"
  create_backup: true
  backup_dir: "~/.formatforge/backups/"
  overwrite_existing: "ask"         # ask | yes | no | rename
  post_deploy:
    open_in_editor: false
    editor_command: "code"          # VS Code
    run_dev_server: false
    dev_command: "npm run dev"
    git_commit: false
    git_push: false

# === گزارش ===
reporting:
  format: "yaml"                    # yaml | json | csv | html
  keep_history: true
  max_history: 1000
  export_on_milestone: true         # خروجی گزارش هر ۱۰ تبدیل
```

---

## ۷. دستورات CLI

```bash
# === نصب ===
pip install formatforge
# یا
pip install -e .  # از مخزن

# === راهنما ===
formatforge --help
formatforge <command> --help

# === اسکن ===
formatforge scan ./path/to/input
formatforge scan ./article.tex
formatforge scan ./archive.zip
formatforge scan --recursive ./folder/

# === تبدیل ===
formatforge convert ./input.tex
formatforge convert ./input.tex --output ./output/
formatforge convert ./input.tex --format latex --quality-min 85
formatforge convert ./folder/ --batch --parallel 4

# === تبدیل تعاملی (wizard) ===
formatforge convert --interactive ./input/

# === تست ===
formatforge test ./output/article/index.mdx
formatforge test ./output/ --recursive --visual
formatforge test ./output/ --report-format html

# === استقرار ===
formatforge deploy ./output/ --target C:/Projects/my-blog/
formatforge deploy ./output/ --git-commit --git-push

# === گزارش ===
formatforge report
formatforge report --last 10
formatforge report --export csv --output report.csv
formatforge report --stats
formatforge report --search "منطق"

# === تنظیمات ===
formatforge config init                # ساخت فایل تنظیمات
formatforge config show                # نمایش تنظیمات فعلی
formatforge config set conversion.math.engine katex
formatforge config website             # تنظیم وب‌سایت (wizard)

# === یکجا (all-in-one) ===
formatforge run ./input/ --output ./blog/content/
# معادل: scan → metadata → precheck → convert → test → deploy

# === بررسی سلامت ===
formatforge doctor
# بررسی نصب بودن تمام وابستگی‌ها و ابزارها
```

---

## ۸. مدیریت خطا و بازیابی

```
استراتژی مدیریت خطا:
━━━━━━━━━━━━━━━━━━━━━

۱. خطاهای قابل‌اصلاح خودکار (Auto-fix):
   - Encoding اشتباه → تبدیل به UTF-8 BOM
   - \begin بدون \end → اضافه کردن \end
   - تگ HTML بسته‌نشده → بستن خودکار
   - ي عربی → ی فارسی
   - ك عربی → ک فارسی
   → همه auto-fix ها ثبت و گزارش می‌شوند

۲. خطاهای نیازمند تأیید کاربر:
   - فرمول مبهم (چند تفسیر ممکن)
   - تصویر گمشده (حذف ارجاع؟ placeholder؟)
   - ساختار مبهم (کتاب یا مقالات مستقل؟)
   → نمایش گزینه‌ها و دریافت انتخاب

۳. خطاهای مسدودکننده:
   - فایل خراب / غیرقابل خواندن
   - encoding کاملاً ناشناخته
   - PDF اسکن‌شده بدون OCR
   → پیام خطای واضح + پیشنهاد راه‌حل

۴. بازیابی (Recovery):
   - هر مرحله checkpoint دارد
   - در صورت خطا: بازگشت به آخرین checkpoint
   - فایل‌های موقت تا تأیید نهایی حفظ می‌شوند
   - امکان از سرگیری تبدیل ناتمام:
     formatforge resume --id conv_20250713_153042
```

---

## ۹. ملاحظات عملکرد

```
بهینه‌سازی عملکرد:
━━━━━━━━━━━━━━━━━━

۱. پردازش موازی:
   - تبدیل فصل‌های مستقل به‌صورت parallel
   - بهینه‌سازی تصاویر به‌صورت parallel
   - تعداد thread قابل تنظیم

۲. کَش (Caching):
   - کَش تبدیل TikZ → SVG (بر اساس hash محتوا)
   - کَش بهینه‌سازی تصویر
   - کَش نتایج AI (تکمیل متادیتا)
   - مسیر کَش: ~/.formatforge/cache/

۳. Lazy Loading:
   - وابستگی‌های سنگین (playwright, AI SDKs) فقط در صورت نیاز import شوند

۴. Memory Management:
   - PDF های بزرگ: پردازش صفحه‌به‌صفحه
   - تصاویر بزرگ: streaming
```

---

## ۱۰. تست‌پذیری و CI/CD

```python
# تست‌های واحد با pytest

# test_scanner.py
def test_detect_latex_file():
    """تشخیص صحیح فایل LaTeX"""

def test_detect_zip_with_book():
    """تشخیص کتاب چندفصلی درون ZIP"""

def test_encoding_detection_utf8_bom():
    """تشخیص صحیح UTF-8 BOM"""

# test_converter_latex.py
def test_demorgan_formula():
    """تبدیل صحیح فرمول دمورگان"""

def test_theorem_environment():
    """تبدیل محیط theorem به کامپوننت"""

def test_zwnj_preservation():
    """حفظ نیم‌فاصله در تبدیل"""

def test_lr_command():
    """تبدیل \\lr{} به <span dir='ltr'>"""

def test_tikz_to_svg():

ادامه پرامپت جامع:

```markdown
# test_converter_latex.py (ادامه)

def test_tikz_to_svg():
    """تبدیل نمودار TikZ به SVG"""

def test_bibliography_conversion():
    """تبدیل کتاب‌نامه biblatex به JSON"""

def test_cross_references():
    """تبدیل ارجاعات متقاطع \\ref و \\cref"""

def test_footnotes_persian():
    """تبدیل پانوشت فارسی و LTRfootnote"""

def test_nested_environments():
    """تبدیل محیط‌های تودرتو (theorem درون section)"""

def test_custom_commands():
    """بازگشایی \\newcommand های سفارشی"""

def test_multi_chapter_book():
    """تبدیل کتاب چندفصلی با \\input"""

def test_table_with_merged_cells():
    """تبدیل جدول با multirow/multicolumn"""

def test_wrapfigure():
    """تبدیل تصویر کنار متن"""

def test_algorithm2e():
    """تبدیل محیط الگوریتم"""

def test_color_boxes():
    """تبدیل tcolorbox به Admonition"""

# test_converter_html.py
def test_html_meta_extraction():
    """استخراج متادیتا از تگ‌های meta"""

def test_html_dir_preservation():
    """حفظ dir=rtl و dir=ltr"""

def test_html_math_katex():
    """تبدیل فرمول‌های KaTeX/MathJax از HTML"""

def test_html_table_colspan():
    """تبدیل جدول با colspan/rowspan"""

def test_html_form_elements():
    """تبدیل عناصر فرم"""

def test_html_media_elements():
    """تبدیل video/audio/iframe"""

def test_html_svg_inline():
    """تبدیل SVG درون‌خطی"""

def test_html_details_summary():
    """تبدیل details/summary"""

# test_converter_md.py
def test_md_frontmatter_yaml():
    """تحلیل frontmatter YAML"""

def test_md_mermaid_to_component():
    """تبدیل بلوک mermaid به MermaidDiagram"""

def test_md_callouts():
    """تبدیل > [!NOTE] به Admonition"""

def test_md_task_list():
    """تبدیل task list"""

def test_md_definition_list():
    """تبدیل definition list"""

def test_md_footnotes():
    """تبدیل پانوشت‌ها"""

def test_md_jsx_compatibility():
    """بررسی سازگاری JSX (class→className, etc.)"""

# test_converter_docx.py
def test_docx_heading_levels():
    """تبدیل سطوح Heading"""

def test_docx_omml_to_latex():
    """تبدیل فرمول OMML به LaTeX"""

def test_docx_embedded_images():
    """استخراج تصاویر embed شده"""

def test_docx_rtl_paragraphs():
    """حفظ جهت RTL پاراگراف‌ها"""

# test_converter_pdf.py
def test_pdf_text_extraction():
    """استخراج متن از PDF متنی"""

def test_pdf_structure_detection():
    """تشخیص عناوین و پاراگراف‌ها"""

def test_pdf_table_extraction():
    """استخراج جداول"""

def test_pdf_image_extraction():
    """استخراج تصاویر embed شده"""

def test_pdf_formula_detection():
    """تشخیص و تبدیل فرمول‌ها"""

# test_persian.py
def test_zwnj_count_preserved():
    """شمارش ZWNJ قبل و بعد باید برابر باشد"""

def test_arabic_yeh_to_persian():
    """تبدیل ي به ی"""

def test_arabic_keh_to_persian():
    """تبدیل ك به ک"""

def test_guillemet_quotes():
    """بررسی استفاده از گیومه «»"""

def test_bidi_blocks():
    """بررسی صحت بلوک‌های LTR درون RTL"""

def test_persian_numerals():
    """تبدیل اعداد لاتین به فارسی (در صورت تنظیم)"""

def test_persian_typography_spacing():
    """بررسی فاصله‌گذاری صحیح فارسی"""

# test_quality.py
def test_quality_score_perfect_document():
    """سند بدون مشکل باید امتیاز >95 بگیرد"""

def test_quality_score_with_issues():
    """سند با مشکلات شناخته‌شده"""

def test_structural_validation():
    """اعتبارسنجی ساختار MDX"""

def test_link_validation():
    """اعتبارسنجی تمام لینک‌ها"""

# test_e2e.py (End-to-End)
def test_full_pipeline_latex_article():
    """تست کامل: مقاله LaTeX → MDX"""

def test_full_pipeline_latex_book():
    """تست کامل: کتاب LaTeX چندفصلی → MDX"""

def test_full_pipeline_html():
    """تست کامل: صفحه HTML → MDX"""

def test_full_pipeline_markdown():
    """تست کامل: فایل MD با Mermaid → MDX"""

def test_full_pipeline_docx():
    """تست کامل: فایل DOCX → MDX"""

def test_full_pipeline_zip():
    """تست کامل: فایل ZIP حاوی پروژه → MDX"""

def test_full_pipeline_mixed_folder():
    """تست کامل: پوشه ترکیبی → MDX"""


# فایل‌های تست (fixtures)
# tests/test_files/ حاوی نمونه‌هایی است که در ابتدای مکالمه ساختیم:
#   - sample-book.tex         (LaTeX جامع)
#   - sample-mermaid.md       (Markdown + Mermaid)
#   - sample-page.html        (HTML جامع)
#   - sample-page.rst         (RST)
#   - sample-page.adoc        (AsciiDoc)
#   - sample-book.docx        (DOCX)
#   - sample-book.pdf         (PDF)
```

```yaml
# .github/workflows/ci.yml  (یا معادل آن برای CI/CD محلی)

name: FormatForge CI

on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: windows-latest
    strategy:
      matrix:
        python-version: ["3.11", "3.12"]

    steps:
      - uses: actions/checkout@v4

      - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: ${{ matrix.python-version }}

      - name: Install TeX Live
        run: |
          choco install texlive --params="'/scheme:full'"

      - name: Install Pandoc
        run: choco install pandoc

      - name: Install Node.js & Mermaid CLI
        uses: actions/setup-node@v4
        with:
          node-version: 20
      - run: npm install -g @mermaid-js/mermaid-cli

      - name: Install Python dependencies
        run: pip install -e ".[dev]"

      - name: Run tests
        run: pytest tests/ -v --cov=formatforge --cov-report=xml

      - name: Test with sample files
        run: |
          formatforge doctor
          formatforge convert tests/test_files/sample-book.tex --output tests/output/
          formatforge test tests/output/ --quality-min 85
```

---

## ۱۱. کامپوننت‌های MDX مورد نیاز در وب‌سایت

برای اینکه خروجی MDX به‌درستی در وب‌سایت رندر شود، کامپوننت‌های زیر باید در پروژه وب موجود باشند. ابزار FormatForge می‌تواند اسکلت این کامپوننت‌ها را تولید کند:

```bash
formatforge init-components --framework next --output ./components/mdx/
```

### ۱۱.۱ Theorem Component

```jsx
// components/mdx/Theorem.jsx
'use client';

const typeConfig = {
  theorem:    { label: 'قضیه',      labelEn: 'Theorem',    color: '#1A73E8', bg: '#E3F2FD' },
  lemma:      { label: 'لم',        labelEn: 'Lemma',      color: '#1565C0', bg: '#E3F2FD' },
  corollary:  { label: 'نتیجه',     labelEn: 'Corollary',  color: '#0D47A1', bg: '#E3F2FD' },
  conjecture: { label: 'حدس',       labelEn: 'Conjecture', color: '#4A148C', bg: '#F3E5F5' },
  axiom:      { label: 'اصل موضوع', labelEn: 'Axiom',      color: '#B71C1C', bg: '#FFEBEE' },
};

export default function Theorem({
  id,
  type = 'theorem',
  title,
  titleEn,
  number,
  children,
}) {
  const config = typeConfig[type] || typeConfig.theorem;

  return (
    <div
      id={id}
      dir="rtl"
      className="theorem-box"
      style={{
        background: config.bg,
        borderRight: `5px solid ${config.color}`,
        borderRadius: '0 8px 8px 0',
        padding: '1rem 1.5rem',
        margin: '1.5rem 0',
      }}
    >
      <div
        className="theorem-title"
        style={{
          fontWeight: 700,
          color: config.color,
          marginBottom: '0.5rem',
          fontSize: '1.05em',
        }}
      >
        {config.label}
        {number && ` ${number}`}
        {title && ` — ${title}`}
        {titleEn && (
          <span dir="ltr" style={{ fontSize: '0.9em', opacity: 0.8, marginRight: '0.5em' }}>
            ({titleEn})
          </span>
        )}
      </div>
      <div className="theorem-content">{children}</div>
    </div>
  );
}
```

### ۱۱.۲ Definition Component

```jsx
// components/mdx/Definition.jsx
export default function Definition({ id, title, titleEn, number, children }) {
  return (
    <div
      id={id}
      dir="rtl"
      className="definition-box"
      style={{
        background: '#E8F5E9',
        borderRight: '5px solid #00897B',
        borderRadius: '0 8px 8px 0',
        padding: '1rem 1.5rem',
        margin: '1.5rem 0',
      }}
    >
      <div style={{ fontWeight: 700, color: '#00897B', marginBottom: '0.5rem' }}>
        تعریف{number && ` ${number}`}
        {title && ` — ${title}`}
        {titleEn && (
          <span dir="ltr" style={{ fontSize: '0.9em', opacity: 0.8, marginRight: '0.5em' }}>
            ({titleEn})
          </span>
        )}
      </div>
      <div>{children}</div>
    </div>
  );
}
```

### ۱۱.۳ Proof Component

```jsx
// components/mdx/Proof.jsx
'use client';
import { useState } from 'react';

export default function Proof({ id, forRef, title = 'اثبات', collapsible = false, children }) {
  const [open, setOpen] = useState(!collapsible);

  const content = (
    <div
      id={id}
      className="proof-box"
      style={{
        background: '#FFFDE7',
        borderRight: '5px solid #FB8C00',
        borderRadius: '0 8px 8px 0',
        padding: '1rem 1.5rem',
        margin: '1.5rem 0',
      }}
    >
      <div style={{ fontWeight: 700, color: '#E65100', marginBottom: '0.5rem' }}>
        {title}
        {forRef && (
          <span style={{ fontSize: '0.9em', opacity: 0.8 }}>
            {' '}
            (برای <a href={`#${forRef}`}>↑</a>)
          </span>
        )}
      </div>
      <div>{children}</div>
      <div style={{ textAlign: 'left', fontSize: '1.2em', marginTop: '0.5rem' }}>∎</div>
    </div>
  );

  if (!collapsible) return content;

  return (
    <details open={open} onToggle={(e) => setOpen(e.target.open)}>
      <summary style={{ cursor: 'pointer', fontWeight: 700, color: '#E65100' }}>
        {open ? '🔽' : '▶️'} {title}
      </summary>
      {content}
    </details>
  );
}
```

### ۱۱.۴ Admonition Component

```jsx
// components/mdx/Admonition.jsx

const types = {
  note:      { icon: '📌', label: 'نکته',    color: '#546E7A', bg: '#ECEFF1' },
  tip:       { icon: '💡', label: 'راهنمایی', color: '#2E7D32', bg: '#E8F5E9' },
  info:      { icon: 'ℹ️', label: 'اطلاعات', color: '#1565C0', bg: '#E3F2FD' },
  warning:   { icon: '⚠️', label: 'هشدار',   color: '#EF6C00', bg: '#FFF3E0' },
  caution:   { icon: '🔶', label: 'احتیاط',  color: '#E65100', bg: '#FBE9E7' },
  danger:    { icon: '🚫', label: 'خطر',     color: '#C62828', bg: '#FFEBEE' },
  important: { icon: '❗', label: 'مهم',     color: '#6A1B9A', bg: '#F3E5F5' },
  example:   { icon: '📝', label: 'مثال',    color: '#7B1FA2', bg: '#F3E5F5' },
};

export default function Admonition({ type = 'note', title, children }) {
  const config = types[type] || types.note;
  const displayTitle = title || `${config.icon} ${config.label}`;

  return (
    <div
      dir="rtl"
      className={`admonition admonition-${type}`}
      style={{
        background: config.bg,
        borderRight: `5px solid ${config.color}`,
        borderRadius: '0 8px 8px 0',
        padding: '1rem 1.5rem',
        margin: '1.5rem 0',
      }}
    >
      <div style={{ fontWeight: 700, color: config.color, marginBottom: '0.5rem' }}>
        {displayTitle}
      </div>
      <div>{children}</div>
    </div>
  );
}
```

### ۱۱.۵ Figure Component

```jsx
// components/mdx/Figure.jsx
import Image from 'next/image';

export default function Figure({
  src,
  alt,
  caption,
  captionEn,
  number,
  width,
  height,
  float,       // "right" | "left" | undefined
  className,
}) {
  const floatStyle = float === 'right'
    ? { float: 'right', margin: '0 0 1rem 1.5rem', maxWidth: '40%' }
    : float === 'left'
    ? { float: 'left', margin: '0 1.5rem 1rem 0', maxWidth: '40%' }
    : {};

  return (
    <figure
      dir="rtl"
      className={`figure-box ${className || ''}`}
      style={{
        margin: '1.5rem 0',
        textAlign: 'center',
        ...floatStyle,
      }}
    >
      {src.endsWith('.svg') ? (
        // SVG: use img tag for better scaling
        // eslint-disable-next-line @next/next/no-img-element
        <img
          src={src}
          alt={alt}
          style={{
            maxWidth: '100%',
            borderRadius: '8px',
            boxShadow: '0 2px 8px rgba(0,0,0,0.1)',
          }}
        />
      ) : (
        <Image
          src={src}
          alt={alt}
          width={width || 700}
          height={height || 400}
          style={{
            maxWidth: '100%',
            height: 'auto',
            borderRadius: '8px',
            boxShadow: '0 2px 8px rgba(0,0,0,0.1)',
          }}
        />
      )}
      {(caption || number) && (
        <figcaption
          style={{
            color: '#616161',
            fontSize: '0.9em',
            marginTop: '0.5rem',
          }}
        >
          {number && <strong>شکل {number}. </strong>}
          {caption}
          {captionEn && (
            <span dir="ltr" style={{ opacity: 0.7, marginRight: '0.5em' }}>
              — {captionEn}
            </span>
          )}
        </figcaption>
      )}
    </figure>
  );
}
```

### ۱۱.۶ MermaidDiagram Component

```jsx
// components/mdx/MermaidDiagram.jsx
'use client';
import { useEffect, useRef, useState, useId } from 'react';

let mermaidModule = null;
const getMermaid = async () => {
  if (!mermaidModule) {
    mermaidModule = (await import('mermaid')).default;
    mermaidModule.initialize({
      startOnLoad: false,
      theme: 'base',
      themeVariables: {
        fontFamily: '"Vazirmatn", "Tahoma", sans-serif',
        fontSize: '14px',
        primaryColor: '#E3F2FD',
        primaryTextColor: '#0D47A1',
        primaryBorderColor: '#1565C0',
        lineColor: '#1A73E8',
      },
      flowchart: { htmlLabels: true, curve: 'basis' },
      sequence: { mirrorActors: false },
      securityLevel: 'loose',
    });
  }
  return mermaidModule;
};

export default function MermaidDiagram({ chart, id: propId, caption, number }) {
  const autoId = useId();
  const id = propId || `mermaid-${autoId.replace(/:/g, '')}`;
  const containerRef = useRef(null);
  const [svg, setSvg] = useState('');
  const [error, setError] = useState(null);

  useEffect(() => {
    let cancelled = false;

    const render = async () => {
      try {
        const mermaid = await getMermaid();
        const { svg: renderedSvg } = await mermaid.render(id, chart.trim());
        if (!cancelled) {
          setSvg(renderedSvg);
          setError(null);
        }
      } catch (err) {
        if (!cancelled) {
          setError(err.message || 'خطا در رندر نمودار');
          console.error('Mermaid render error:', err);
        }
      }
    };

    render();
    return () => { cancelled = true; };
  }, [chart, id]);

  if (error) {
    return (
      <div style={{
        background: '#FFEBEE', border: '1px solid #EF5350',
        borderRadius: 8, padding: '1rem', margin: '1.5rem 0',
        direction: 'ltr', textAlign: 'left',
      }}>
        <strong>⚠ خطا در رندر نمودار:</strong>
        <pre style={{ fontSize: '0.85em', marginTop: '0.5rem' }}>{error}</pre>
        <details>
          <summary>کد Mermaid</summary>
          <pre>{chart}</pre>
        </details>
      </div>
    );
  }

  return (
    <figure style={{ margin: '1.5rem 0', textAlign: 'center' }}>
      <div
        ref={containerRef}
        className="mermaid-container"
        style={{ direction: 'ltr', overflowX: 'auto' }}
        dangerouslySetInnerHTML={{ __html: svg }}
      />
      {(caption || number) && (
        <figcaption style={{ color: '#616161', fontSize: '0.9em', marginTop: '0.5rem' }}>
          {number && <strong>نمودار {number}. </strong>}
          {caption}
        </figcaption>
      )}
    </figure>
  );
}
```

### ۱۱.۷ Citation & Bibliography Components

```jsx
// components/mdx/Citation.jsx
export default function Citation({ id, data }) {
  // data = { author, year, title, ... } از bibliography.json
  return (
    <a
      href={`#ref-${id}`}
      className="citation"
      title={data ? `${data.author} (${data.year})` : id}
      style={{ color: '#00897B', textDecoration: 'none' }}
    >
      [{data ? `${data.author}, ${data.year}` : id}]
    </a>
  );
}

// components/mdx/Bibliography.jsx
export default function Bibliography({ entries }) {
  // entries = [{id, author, year, title, publisher, ...}, ...]
  return (
    <section id="bibliography" dir="rtl">
      <h2>📚 کتاب‌نامه</h2>
      <ol style={{ fontSize: '0.95em' }}>
        {entries.map((entry) => (
          <li key={entry.id} id={`ref-${entry.id}`}>
            {entry.lang === 'fa' ? (
              // مرجع فارسی
              <span>
                {entry.author} ({entry.year}).{' '}
                <cite style={{ fontStyle: 'italic' }}>{entry.title}</cite>.
                {entry.publisher && ` ${entry.publisher}.`}
              </span>
            ) : (
              // مرجع انگلیسی
              <span dir="ltr" lang="en">
                {entry.author} ({entry.year}).{' '}
                <cite style={{ fontStyle: 'italic' }}>{entry.title}</cite>.
                {entry.publisher && ` ${entry.publisher}.`}
                {entry.url && (
                  <>
                    {' '}
                    <a href={entry.url} target="_blank" rel="noopener noreferrer">
                      {new URL(entry.url).hostname}
                    </a>
                  </>
                )}
              </span>
            )}
          </li>
        ))}
      </ol>
    </section>
  );
}
```

### ۱۱.۸ CrossRef Component

```jsx
// components/mdx/CrossRef.jsx

const typeLabels = {
  theorem: 'قضیه',
  definition: 'تعریف',
  example: 'مثال',
  lemma: 'لم',
  figure: 'شکل',
  table: 'جدول',
  equation: 'رابطه',
  algorithm: 'الگوریتم',
  chapter: 'فصل',
  section: 'بخش',
};

export default function CrossRef({ id, type, number, text }) {
  const label = typeLabels[type] || '';
  const displayText = text || (label && number ? `${label} ${number}` : id);

  return (
    <a
      href={`#${id}`}
      className="cross-ref"
      style={{ color: '#1A73E8', textDecoration: 'none', borderBottom: '1px dashed #1A73E8' }}
    >
      {displayText}
    </a>
  );
}
```

### ۱۱.۹ BilingualBlock Component

```jsx
// components/mdx/BilingualBlock.jsx

export default function BilingualBlock({
  dir = 'ltr',
  lang = 'en',
  className,
  style,
  children,
}) {
  return (
    <div
      dir={dir}
      lang={lang}
      className={`bilingual-block ${className || ''}`}
      style={{
        background: dir === 'ltr' ? '#F5F5F5' : 'transparent',
        padding: dir === 'ltr' ? '1.5rem' : '0',
        borderRadius: '8px',
        borderLeft: dir === 'ltr' ? '4px solid #1A73E8' : 'none',
        borderRight: dir === 'rtl' ? '4px solid #1A73E8' : 'none',
        margin: '1.5rem 0',
        unicodeBidi: 'isolate',
        ...style,
      }}
    >
      {children}
    </div>
  );
}
```

### ۱۱.۱۰ تولید خودکار کامپوننت‌ها

```bash
# دستور تولید کامپوننت‌های MDX برای وب‌سایت شما
formatforge init-components \
  --framework next \
  --output ./components/mdx/ \
  --typescript \
  --with-css \
  --font "Vazirmatn" \
  --primary-color "#1A73E8" \
  --accent-color "#00897B"

# خروجی:
# components/mdx/
# ├── Theorem.tsx
# ├── Definition.tsx
# ├── Proof.tsx
# ├── Example.tsx
# ├── Admonition.tsx
# ├── Figure.tsx
# ├── FigureGrid.tsx
# ├── MermaidDiagram.tsx
# ├── Citation.tsx
# ├── Bibliography.tsx
# ├── CrossRef.tsx
# ├── BilingualBlock.tsx
# ├── CodeBlock.tsx
# ├── TableWrapper.tsx
# ├── Details.tsx
# ├── index.ts          ← re-exports همه
# └── styles/
#     ├── mdx-components.css
#     └── rtl-overrides.css
```

---

## ۱۲. نقشه راه توسعه (Roadmap)

```
فاز ۱ — MVP (هفته ۱-۴):
━━━━━━━━━━━━━━━━━━━━━━━━
☐ CLI پایه (scan, convert, test)
☐ تبدیل‌گر LaTeX → MDX (۸۰٪ عناصر)
☐ تبدیل‌گر Markdown → MDX
☐ مدیریت ریاضی (KaTeX)
☐ مدیریت فارسی/RTL/ZWNJ
☐ تست ساختاری و محتوایی
☐ استقرار ساده (کپی فایل)
☐ گزارش پایه

فاز ۲ — بهبود تبدیل (هفته ۵-۸):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
☐ تبدیل‌گر HTML → MDX
☐ تبدیل‌گر DOCX → MDX
☐ تبدیل‌گر RST → MDX
☐ تبدیل‌گر AsciiDoc → MDX
☐ TikZ → SVG
☐ Mermaid → کامپوننت
☐ جداول پیچیده (ادغامی/رنگی)
☐ کتاب‌نامه (biblatex → JSON)
☐ پوشش ۹۵٪+ عناصر LaTeX

فاز ۳ — هوشمندسازی (هفته ۹-۱۲):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
☐ تکمیل متادیتا با AI
☐ تولید slug هوشمند
☐ تولید خلاصه/description
☐ تولید alt text تصاویر
☐ پیشنهاد اصلاح خطاها
☐ تبدیل‌گر PDF → MDX (پایه)
☐ تبدیل‌گر EPUB → MDX
☐ تبدیل‌گر Jupyter → MDX

فاز ۴ — تست و کیفیت (هفته ۱۳-۱۶):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
☐ تست بصری (Playwright)
☐ مقایسه بصری خروجی با اصل
☐ امتیاز کیفیت پیشرفته
☐ گزارش HTML زیبا
☐ بهینه‌سازی عملکرد (parallel, cache)
☐ TUI با Textual

فاز ۵ — پیشرفته (هفته ۱۷+):
━━━━━━━━━━━━━━━━━━━━━━━━━━━━
☐ GUI (Tauri)
☐ Watch mode (تبدیل خودکار هنگام تغییر فایل)
☐ Plugin system (افزونه‌های سفارشی)
☐ API server (تبدیل از طریق HTTP)
☐ VS Code extension
☐ پشتیبانی از Typst
☐ تبدیل معکوس (MDX → LaTeX)
☐ انتشار به‌عنوان پکیج PyPI/npm
```

---

## ۱۳. مثال کامل: سناریوی واقعی

```
سناریو: تبدیل کتاب «مبانی منطق ریاضی» از LaTeX به MDX
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

ورودی:
  C:\Users\ali\Documents\logic-book\
  ├── main.tex              (نقطه ورود، 2 KB)
  ├── preamble.sty          (پکیج‌ها و تنظیمات، 3 KB)
  ├── chapter01.tex          (فصل ۱: مقدمه، 15 KB)
  ├── chapter02.tex          (فصل ۲: منطق گزاره‌ای، 22 KB)
  ├── chapter03.tex          (فصل ۳: منطق محمولات، 18 KB)
  ├── chapter04.tex          (فصل ۴: نمودارها، 12 KB)
  ├── chapter05.tex          (فصل ۵: راهنمای LaTeX، 8 KB)
  ├── references.bib         (کتاب‌نامه، 4 KB)
  └── figures/
      ├── mindmap.tikz       (نقشه ذهنی TikZ، 2 KB)
      ├── flowchart.tikz     (فلوچارت TikZ، 1.5 KB)
      ├── bar-chart.tikz     (نمودار میله‌ای، 1 KB)
      ├── proof-tree.tikz    (درخت اثبات، 1 KB)
      └── cover.png          (جلد کتاب، 500 KB)

دستور:
  formatforge run "C:\Users\ali\Documents\logic-book\" \
    --output "C:\Projects\my-blog\content\books\" \
    --interactive

خروجی نهایی:
  C:\Projects\my-blog\content\books\logic-foundations\
  ├── _series.json
  ├── 00-introduction\
  │   ├── index.mdx          (11 KB)
  │   └── assets\
  │       └── mindmap.svg    (5 KB, از TikZ)
  ├── 01-propositional-logic\
  │   ├── index.mdx          (18 KB)
  │   └── assets\
  │       ├── truth-table-demorgan.svg  (3 KB)
  │       └── flowchart.svg            (4 KB)
  ├── 02-predicate-logic\
  │   ├── index.mdx          (14 KB)
  │   └── assets\
  │       └── proof-tree.svg (3 KB)
  ├── 03-visuals\
  │   ├── index.mdx          (10 KB)
  │   └── assets\
  │       ├── bar-chart.svg  (4 KB)
  │       └── cover.webp     (85 KB, بهینه از PNG)
  ├── 04-latex-guide\
  │   └── index.mdx          (7 KB)
  ├── bibliography.json       (3 KB, 15 مرجع)
  └── shared-assets\
      └── series-cover.webp  (85 KB)

آمار تبدیل:
  ⏱ زمان: ۱ دقیقه ۱۲ ثانیه
  📊 کیفیت: ۹۳/۱۰۰
  📄 فایل MDX: ۵ فصل
  🖼 تصاویر: ۶ SVG + ۱ WebP
  🔢 فرمول: ۸۷ (همه موفق)
  📊 جداول: ۱۲ (همه موفق)
  🎨 نمودار TikZ: ۵ → ۵ SVG
  📝 کد: ۸ بلوک
  📌 پانوشت: ۱۵
  🔗 ارجاعات: ۳۲ (۳۰ موفق, ۲ بین‌فصلی اصلاح‌شده)
  📚 مراجع: ۱۵ (biblatex → JSON)
  ‌ نیم‌فاصله: ۴۵۶/۴۵۶ ✅
```

---

## ۱۴. خلاصه نهایی و چک‌لیست ساخت

```
╔══════════════════════════════════════════════════════════════╗
║              FormatForge — چک‌لیست ساخت                     ║
╠══════════════════════════════════════════════════════════════╣
║                                                              ║
║  ■ مرحله ۱: اسکن و شناسایی                                ║
║    ☐ تشخیص فرمت (magic bytes + extension + content)        ║
║    ☐ تشخیص encoding (UTF-8/BOM/Windows-1256)               ║
║    ☐ تشخیص ساختار (تک‌فایل/پوشه/ZIP/کتاب/مجموعه)          ║
║    ☐ تشخیص زبان (فارسی/انگلیسی/دوزبانه)                   ║
║    ☐ گراف وابستگی (include/input/images)                    ║
║    ☐ تأیید تعاملی از کاربر                                  ║
║                                                              ║
║  ■ مرحله ۲: متادیتا                                        ║
║    ☐ استخراج از ۹ فرمت مختلف                                ║
║    ☐ شِمای Pydantic برای اعتبارسنجی                        ║
║    ☐ تولید slug هوشمند (فارسی → لاتین)                     ║
║    ☐ تکمیل با AI (اختیاری)                                 ║
║    ☐ یکتایی slug (بررسی با گزارش مرکزی)                   ║
║    ☐ تأیید تعاملی                                          ║
║                                                              ║
║  ■ مرحله ۲.۵: پیش‌بررسی                                    ║
║    ☐ بررسی encoding و ZWNJ                                 ║
║    ☐ بررسی ساختار و syntax                                  ║
║    ☐ بررسی وابستگی‌ها (تصاویر/فایل‌ها)                     ║
║    ☐ بررسی فرمول‌ها (KaTeX pre-parse)                       ║
║    ☐ تبدیل آزمایشی (۱۰٪)                                  ║
║    ☐ تخمین زمان و حجم                                       ║
║    ☐ گزارش + تأیید                                          ║
║                                                              ║
║  ■ مرحله ۳: تبدیل                                          ║
║    ☐ ۹ تبدیل‌گر (LaTeX/HTML/MD/DOCX/PDF/RST/Adoc/EPUB/NB) ║
║    ☐ پردازشگر ریاضی (→ KaTeX syntax)                       ║
║    ☐ پردازشگر نمودار (TikZ→SVG, Mermaid→Component)        ║
║    ☐ پردازشگر جدول (ساده→MD, پیچیده→HTML)                 ║
║    ☐ پردازشگر تصویر (بهینه‌سازی/WebP/SVGO)                 ║
║    ☐ پردازشگر کد (syntax highlight metadata)               ║
║    ☐ پردازشگر لینک/ارجاع/پانوشت/کتاب‌نامه                ║
║    ☐ پردازشگر RTL/فارسی (ZWNJ/bidi/typography)            ║
║    ☐ تبدیل قضیه/تعریف/اثبات → کامپوننت                    ║
║    ☐ تولید import ها خودکار                                 ║
║    ☐ نمایش پیشرفت + خطاها                                   ║
║                                                              ║
║  ■ مرحله ۴: تست کیفیت                                      ║
║    ☐ تست ساختاری (YAML/JSX/MDX compile)                    ║
║    ☐ تست محتوایی (شمارش عناصر)                              ║
║    ☐ تست ریاضی (KaTeX parse)                               ║
║    ☐ تست فارسی (ZWNJ/bidi/quotes)                          ║
║    ☐ تست لینک‌ها (داخلی/خارجی/تصاویر)                      ║
║    ☐ تست بصری (Playwright — اختیاری)                        ║
║    ☐ امتیاز کیفیت (0-100)                                  ║
║                                                              ║
║  ■ مرحله ۵: استقرار                                        ║
║    ☐ ساخت ساختار پوشه                                       ║
║    ☐ کپی MDX + assets                                      ║
║    ☐ بهینه‌سازی تصاویر                                      ║
║    ☐ بروزرسانی لینک‌های نسبی                                ║
║    ☐ تولید فایل‌های جانبی (series.json, bibliography.json) ║
║    ☐ اعتبارسنجی نهایی                                      ║
║    ☐ Git commit (اختیاری)                                   ║
║                                                              ║
║  ■ مرحله ۶: گزارش                                          ║
║    ☐ ثبت در central_log                                     ║
║    ☐ آمار تجمعی                                              ║
║    ☐ ثبت slug (جلوگیری از تکرار)                           ║
║    ☐ خروجی YAML/JSON/CSV/HTML                               ║
║                                                              ║
║  ■ زیرساخت                                                   ║
║    ☐ CLI با Click + Rich                                    ║
║    ☐ تنظیمات YAML                                           ║
║    ☐ مدیریت خطا و بازیابی                                   ║
║    ☐ پردازش موازی                                            ║
║    ☐ کَش (TikZ, تصاویر, AI)                                ║
║    ☐ تست‌های واحد و E2E                                     ║
║    ☐ CI/CD                                                   ║
║    ☐ مستندسازی                                               ║
║    ☐ کامپوننت‌های MDX + init-components                     ║
║                                                              ║
╠══════════════════════════════════════════════════════════════╣
║  📝 نکات حیاتی فارسی:                                      ║
║    ▸ نیم‌فاصله (ZWNJ) هرگز حذف نشود                        ║
║    ▸ encoding همیشه UTF-8 (ترجیحاً BOM)                     ║
║    ▸ dir="rtl" + lang="fa" همیشه در frontmatter             ║
║    ▸ بلوک‌های کد/ریاضی/نمودار: dir="ltr"                   ║
║    ▸ گیومه «» نه ""                                         ║
║    ▸ شمارش ZWNJ قبل و بعد تبدیل باید برابر باشد           ║
║    ▸ ي→ی و ك→ک اصلاح شود                                  ║
╚══════════════════════════════════════════════════════════════╝
```

---

## ۱۵. نحوه استفاده از این پرامپت

### برای شروع توسعه:

```
این پرامپت را به یک LLM بدهید و بگویید:

"لطفاً بر اساس این مشخصات، کد ماژول [نام ماژول] را
بنویس. از Python 3.11+ استفاده کن. تست‌های واحد
هم بنویس."

مثال‌ها:
1. "کد core/scanner/file_detector.py را بنویس"
2. "کد core/converters/latex_to_mdx.py را بنویس"
3. "کد core/persian/zwnj_handler.py را بنویس"
4. "کد core/quality/math_test.py را بنویس"
5. "کد cli/commands/convert.py را بنویس"
```

### برای گسترش:

```
"بر اساس مشخصات پرامپت اصلی،
[قابلیت X] را اضافه کن / [بخش Y] را بهبود بده.
سازگاری با بقیه سیستم حفظ شود."
```
```

---

## خلاصه

این پرامپت شامل **تمام** جزئیات فنی مورد نیاز برای ساخت ابزار تبدیل فرمت شماست:

| بخش | محتوا |
|:----|:------|
| **معماری** | ساختار ماژولار ۶ مرحله‌ای |
| **Stage 1** | اسکنر ورودی (۱۰ سناریو) + تأیید تعاملی |
| **Stage 2** | متادیتا (شِمای TypeScript + استخراج ۹ فرمت + AI + slug) |
| **Stage 2.5** | پیش‌بررسی (۵ دسته بررسی + تبدیل آزمایشی) |
| **Stage 3** | تبدیل (۹ فرمت × ۸+ پردازشگر + قواعد RTL/فارسی) |
| **Stage 4** | تست (۶ سطح + امتیاز کیفیت ۰-۱۰۰) |
| **Stage 5** | استقرار (ساختار پوشه + بهینه‌سازی + لینک‌دهی) |
| **Stage 6** | گزارش مرکزی YAML |
| **وابستگی‌ها** | Python packages + ابزارهای خارجی |
| **تنظیمات** | فایل YAML کامل با ۱۰۰+ آپشن |
| **CLI** | ۱۵+ دستور |
| **کامپوننت‌ها** | ۱۲ کامپوننت React/MDX |
| **تست** | ۴۰+ تست واحد + E2E + CI/CD |
| **نقشه راه** | ۵ فاز، ۱۷+ هفته |
| **نکات فارسی** | ۷ قانون حیاتی RTL/ZWNJ/bidi |

---

## Conversation 3
*(2 segments merged)*
*Model: claude-opus-4-6*

<!-- 🔧 MANUAL INTERVENTION NEEDED -->
> **Review needed:** Overlap detection flagged some areas

### Request

به نظر قطع شده است.
اگر قطع شده ادامه بده و نهایی کن و یک ساختار پیشنهادی:
ارائه بده که این سه نوع فایل را ابتدا کامل تبدیل کند. یعنی ترجیح پیاده‌سازی تمام قابلیت‌های نرم افزار + توسعه‌ی مغز نرم افزار برای تبدیل فایل‌های لاتکس مارک داون و html باشد. 
یعنی یک فازبندی و مدل اجرایی برای این مهم پیشنهاد کن به شکلی که به محدودیت‌های چت و توکن توجه کند. 


ممنون

### Response

# نهایی‌سازی پرامپت + مدل اجرایی پیاده‌سازی

پرامپت اصلی **کامل** بود — بخش ۱۵ (نحوه استفاده) آخرین بخش بود. اکنون **مدل اجرایی** را ارائه می‌دهم.

---

## استراتژی پیاده‌سازی با LLM (مدیریت محدودیت توکن)

### مشکل اصلی

> پرامپت جامع حدود **۳۰,۰۰۰+ توکن** است. ارسال یکجای آن + درخواست کد = **سرریز توکن** و خروجی ناقص.

### راه‌حل: **مدل گفتگوی لایه‌ای (Layered Conversation Model)**

```
┌─────────────────────────────────────────────────┐
│           SYSTEM PROMPT (ثابت در هر چت)          │
│   خلاصه معماری + قواعد فارسی + شِمای خروجی     │
│   (~2000 توکن)                                   │
├─────────────────────────────────────────────────┤
│         CONTEXT FILE (ارسال در ابتدای چت)        │
│   مشخصات ماژول فعلی + interface ها               │
│   (~1500 توکن)                                   │
├─────────────────────────────────────────────────┤
│              USER PROMPT (درخواست)                │
│   "کد فایل X را بنویس"                          │
│   (~500 توکن)                                    │
├─────────────────────────────────────────────────┤
│           ASSISTANT RESPONSE (خروجی)             │
│   کد + تست + توضیح                               │
│   (~4000-8000 توکن)                              │
└─────────────────────────────────────────────────┘
مجموع هر تعامل: ~8000-12000 توکن ← امن
```

---

## System Prompt ثابت (در هر چت استفاده شود)

```markdown
# System Prompt — FormatForge

تو یک توسعه‌دهنده ارشد Python هستی که ابزار FormatForge را می‌سازی.

## خلاصه پروژه
ابزار CLI برای تبدیل اسناد (LaTeX, MD, HTML) به MDX فارسی.
پلتفرم: Windows | Python 3.11+ | CLI با Click+Rich

## قواعد حیاتی فارسی (در تمام کدها رعایت شود)
1. ZWNJ (U+200C) هرگز حذف نشود — شمارش قبل/بعد
2. Encoding: UTF-8 (ترجیحاً BOM)
3. dir="rtl" + lang="fa" در frontmatter
4. بلوک‌های کد/ریاضی/نمودار: dir="ltr"
5. گیومه «» نه ""
6. ي→ی و ك→ک اصلاح شود
7. \lr{} → <span dir="ltr"> | \begin{latin} → <div dir="ltr">

## ساختار پروژه
formatforge/
├── cli/commands/          # Click commands
├── core/scanner/          # اسکنر ورودی
├── core/metadata/         # متادیتا و frontmatter
├── core/converters/       # تبدیل‌گرها (base.py + هر فرمت)
├── core/processors/       # پردازشگرهای تخصصی (math, table, image, rtl, ...)
├── core/persian/          # ماژول فارسی (zwnj, bidi, typography)
├── core/quality/          # تست کیفیت
├── core/deployer/         # استقرار خروجی
├── ai/                    # ماژول AI (اختیاری)
├── config/                # تنظیمات YAML
├── templates/             # قالب‌های Jinja2 برای MDX
└── tests/                 # pytest

## سبک کدنویسی
- Type hints کامل
- Docstring فارسی+انگلیسی
- هر فایل < 300 خط
- هر تابع < 40 خط
- Pydantic برای مدل‌ها
- Error handling با custom exceptions
- Logging با loguru یا logging
- تست‌ها کنار کد (tests/test_<module>.py)
```

---

## فازبندی اجرایی (۱۲ اسپرینت — هر اسپرینت ≈ ۳-۵ روز)

### نمای کلی

```
اسپرینت │ هدف                          │ ماژول‌ها               │ چت‌های LLM
━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━
  S01   │ زیرساخت و مدل‌های داده       │ models, config, CLI   │  5-6
  S02   │ اسکنر ورودی                  │ scanner/*             │  4-5
  S03   │ ماژول فارسی                  │ persian/*             │  4-5
  S04   │ پردازشگرهای پایه             │ processors (math,code)│  5-6
  S05   │ پردازشگرهای پیشرفته          │ processors (tbl,img…) │  5-6
  S06   │ تبدیل‌گر Markdown → MDX       │ md_to_mdx            │  4-5
  S07   │ تبدیل‌گر HTML → MDX           │ html_to_mdx          │  5-6
  S08   │ تبدیل‌گر LaTeX → MDX (پایه)  │ latex_to_mdx (۱)     │  6-7
  S09   │ تبدیل‌گر LaTeX → MDX (پیشرفته)│ latex_to_mdx (۲)    │  5-6
  S10   │ تست کیفیت + متادیتا          │ quality/*, metadata/* │  5-6
  S11   │ استقرار + گزارش              │ deployer/*, reports/  │  4-5
  S12   │ یکپارچه‌سازی + E2E           │ CLI final, E2E tests │  4-5
━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━
 مجموع  │ ۳۶-۴۸ روز                    │ ~50 فایل Python      │  ~60 چت
```

---

### اسپرینت S01: زیرساخت و مدل‌های داده

**هدف:** اسکلت پروژه + مدل‌های Pydantic + CLI پایه + تنظیمات

#### چت ۱: ساختار پروژه و setup

```
[Context] مشخصات ساختار پروژه از پرامپت اصلی (بخش ۳.۲)

[Prompt]
فایل‌های زیر را بساز:
1. pyproject.toml (با تمام وابستگی‌ها)
2. formatforge/__init__.py
3. formatforge/cli/__main__.py (Click CLI پایه با دستورات خالی)
4. formatforge/exceptions.py (custom exceptions)
5. Makefile یا justfile برای دستورات توسعه
```

#### چت ۲: مدل‌های داده (Pydantic)

```
[Context] شِمای متادیتا از پرامپت اصلی (بخش ۴.۲.۱) + ScanReport (بخش ۴.۱.۳)

[Prompt]
فایل‌های زیر را بساز:
1. formatforge/models/metadata.py
   - DocumentMetadata (Pydantic v2 model)
   - AuthorInfo, SeriesInfo, AssetInfo
2. formatforge/models/scan_report.py
   - ScanReport, DocumentInfo, AssetInfo, Warning
3. formatforge/models/conversion_result.py
   - ConversionResult, ConversionStats, QualityReport
4. formatforge/models/__init__.py (re-exports)

تمام فیلدها با type hints و validator و مقادیر پیش‌فرض.
فیلدهای فارسی: title, description, tags ← str با اعتبارسنجی ZWNJ
```

#### چت ۳: تنظیمات (Config)

```
[Context] فایل تنظیمات از پرامپت اصلی (بخش ۶.۱)

[Prompt]
فایل‌های زیر را بساز:
1. formatforge/config/schema.py
   - AppConfig (Pydantic Settings)
   - ScannerConfig, MetadataConfig, ConversionConfig
   - PersianConfig, TestingConfig, DeploymentConfig
2. formatforge/config/loader.py
   - load_config(path) → AppConfig
   - merge_configs(default, user) → AppConfig
   - get_config() → singleton
3. config/default_config.yaml (مقادیر پیش‌فرض)
```

#### چت ۴: CLI پایه

```
[Context] دستورات CLI از پرامپت اصلی (بخش ۷)

[Prompt]
formatforge/cli/ را کامل کن:
1. cli/__main__.py — گروه اصلی Click
2. cli/commands/scan.py — دستور scan (skeleton)
3. cli/commands/convert.py — دستور convert (skeleton)
4. cli/commands/test_cmd.py — دستور test (skeleton)
5. cli/commands/deploy.py — دستور deploy (skeleton)
6. cli/commands/report.py — دستور report (skeleton)
7. cli/commands/doctor.py — دستور doctor (بررسی وابستگی‌ها)
8. cli/commands/run.py — دستور run (all-in-one)

هر دستور: Click command با options صحیح + Rich console output
doctor: بررسی نصب pandoc, xelatex, node, mermaid-cli, etc.
```

#### چت ۵: کلاس پایه تبدیل‌گر

```
[Context] خلاصه معماری تبدیل از پرامپت (بخش ۴.۳)

[Prompt]
فایل‌های زیر را بساز:
1. formatforge/core/converters/base.py
   - BaseConverter (abstract class)
     - detect(file_path) → bool
     - extract_metadata(file_path) → DocumentMetadata
     - convert(file_path, config) → ConversionResult
     - validate_output(result) → QualityReport
   - ConverterRegistry (registry pattern)
     - register(format, converter_class)
     - get_converter(format) → BaseConverter
     - detect_format(file_path) → str

2. formatforge/core/processors/base.py
   - BaseProcessor (abstract)
     - process(content, context) → str
   - ProcessorPipeline
     - add(processor)
     - run(content, context) → str
```

#### چت ۶: Logger و Utilities

```
[Prompt]
1. formatforge/utils/logger.py
   - setup_logger(verbose, log_file)
   - فرمت فارسی‌پسند (RTL-safe)

2. formatforge/utils/file_utils.py
   - read_file_safe(path) → (content, encoding, has_bom)
   - write_file_utf8_bom(path, content)
   - detect_encoding(path) → str
   - count_zwnj(text) → int
   - ensure_directory(path)

3. formatforge/utils/text_utils.py
   - slugify(text, lang) → str
   - truncate(text, max_len) → str
   - is_persian(text) → bool
   - is_mixed_language(text) → bool

4. تست‌های واحد برای هر سه فایل
```

---

### اسپرینت S02: اسکنر ورودی

#### چت ۱: تشخیص فرمت فایل

```
[Context] جدول فرمت‌ها و الگوریتم شناسایی از پرامپت (بخش ۴.۱.۲)

[Prompt]
formatforge/core/scanner/file_detector.py:
- detect_format(path) → str
  بر اساس: پسوند + magic bytes + تحلیل محتوا
  فرمت‌ها: latex, html, markdown, docx, pdf, rst, asciidoc, epub, notebook
- detect_encoding(path) → EncodingInfo(name, has_bom, confidence)
- detect_language(content) → LanguageInfo(primary, has_persian, has_english)

+ tests/test_file_detector.py با فایل‌های واقعی
```

#### چت ۲: تحلیل ساختار

```
[Context] الگوریتم شناسایی ساختار از پرامپت (بخش ۴.۱.۲)

[Prompt]
formatforge/core/scanner/structure_analyzer.py:
- analyze_directory(path) → StructureAnalysis
  - تشخیص: single_doc | independent_articles | multi_chapter_book | related_collection
- analyze_latex_project(path) → LatexProjectInfo
  - پیدا کردن main file
  - تحلیل \input/\include
  - تحلیل \bibliography
  - ساخت dependency graph
- analyze_markdown_collection(path) → list[DocInfo]
- find_assets(path) → list[AssetInfo]
  - تصاویر، فونت‌ها، CSS، bib
```

#### چت ۳: مدیریت آرشیو

```
[Prompt]
formatforge/core/scanner/archive_handler.py:
- extract_archive(path, temp_dir) → ExtractedArchive
  - پشتیبانی: ZIP, RAR (اختیاری), 7Z (اختیاری), TAR.GZ
  - تشخیص encoding نام فایل‌ها (فارسی)
  - بازگشت: مسیر استخراج + لیست فایل‌ها
- cleanup_temp(path)
- is_archive(path) → bool
```

#### چت ۴: اسکنر اصلی + تعامل

```
[Context] خروجی ScanReport و رابط تعاملی از پرامپت (بخش ۴.۱.۳ و ۴.۱.۴)

[Prompt]
1. formatforge/core/scanner/scanner.py:
   - Scanner class
     - scan(input_path) → ScanReport
     - یکپارچه‌سازی file_detector + structure_analyzer + archive_handler

2. formatforge/cli/commands/scan.py (تکمیل):
   - نمایش زیبای ScanReport با Rich
   - تأیید تعاملی (T/E/F/A/Q)
   - اصلاح خودکار encoding

+ tests/test_scanner.py
```

---

### اسپرینت S03: ماژول فارسی

**این اسپرینت حیاتی‌ترین است — تمام تبدیل‌گرها از آن استفاده می‌کنند.**

#### چت ۱: مدیریت نیم‌فاصله (ZWNJ)

```
[Context] قواعد ZWNJ از پرامپت (بخش ۴.۳.۱ — ط)

[Prompt]
formatforge/core/persian/zwnj_handler.py:
- ZWNJ = '\u200c'
- count_zwnj(text) → int
- validate_zwnj_preserved(before, after) → ZWNJReport
  - count_before, count_after, positions_lost
- find_zwnj_positions(text) → list[int]
- fix_common_zwnj_issues(text) → str
  - "می روم" → "می‌روم"
  - "کتاب ها" → "کتاب‌ها"
  - (با دیکشنری پیشوند/پسوند فارسی)
- protect_zwnj(text) → (protected_text, restoration_map)
  - جایگزینی ZWNJ با placeholder قبل از پردازش
- restore_zwnj(text, map) → str
  - بازگرداندن ZWNJ ها

PERSIAN_PREFIXES = ["می", "نمی", "بر", "در", "بی", ...]
PERSIAN_SUFFIXES = ["ها", "های", "ای", "ام", "ات", "اش",
                     "تر", "ترین", "گر", "ور", ...]

+ tests/test_zwnj_handler.py با ۲۰+ مورد تست
```

#### چت ۲: مدیریت دوجهتی (BiDi)

```
[Prompt]
formatforge/core/persian/bidi_handler.py:
- wrap_rtl_block(content) → str
  - اضافه کردن dir="rtl" به بلوک فارسی
- wrap_ltr_block(content) → str
  - اضافه کردن dir="ltr" به بلوک انگلیسی/کد
- detect_block_direction(text) → "rtl" | "ltr" | "mixed"
- split_bidi_segments(text) → list[BidiSegment]
  - BidiSegment(text, direction, lang)
- convert_latex_lr(text) → str
  - \lr{text} → <span dir="ltr">text</span>
  - \rl{text} → <span dir="rtl">text</span>
  - \begin{latin}...\end{latin} → <div dir="ltr" lang="en">...</div>
  - \begin{persian}...\end{persian} → <div dir="rtl" lang="fa">...</div>
  - \LTRfootnote{} → پانوشت با dir="ltr"

+ tests/test_bidi_handler.py
```

#### چت ۳: تایپوگرافی فارسی

```
[Prompt]
formatforge/core/persian/typography.py:
- fix_arabic_characters(text) → str
  - ي → ی (U+064A → U+06CC)
  - ك → ک (U+0643 → U+06A9)
  - ٪ → ٪ (اصلاح درصد عربی)
- fix_persian_quotes(text) → str
  - "text" → «text»
  - 'text' → «text» (قابل تنظیم)
- fix_persian_spacing(text) → str
  - حذف فاصله قبل از : ؛ ؟ !
  - اضافه فاصله بعد از . , : ؛
- convert_numerals(text, target="persian") → str
  - 0-9 ↔ ۰-۹
  - فقط در متن فارسی (نه در کد/ریاضی/URL)
- normalize_persian(text) → str
  - ترکیب تمام اصلاحات بالا
- PersianTextProcessor class
  - process(text, config: PersianConfig) → str

+ tests/test_typography.py با ۳۰+ مورد تست
```

#### چت ۴: پردازشگر RTL برای MDX

```
[Prompt]
formatforge/core/processors/rtl_processor.py:
- RTLProcessor(BaseProcessor)
  - process(mdx_content, context) → str
  وظایف:
    1. اطمینان از dir="rtl" در frontmatter
    2. اطمینان از lang="fa" در frontmatter
    3. اضافه کردن dir="ltr" به بلوک‌های کد
    4. اضافه کردن dir="ltr" به بلوک‌های ریاضی display
    5. شناسایی و wrap بلوک‌های تمام‌انگلیسی
    6. حفظ ZWNJ (شمارش قبل/بعد)
    7. اصلاح تایپوگرافی فارسی (اگر فعال باشد)
    8. اصلاح کاراکترهای عربی (اگر فعال باشد)

+ tests/test_rtl_processor.py
```

---

### اسپرینت S04: پردازشگرهای پایه

#### چت ۱: پردازشگر ریاضی

```
[Context] قواعد تبدیل ریاضی از پرامپت (بخش ۴.۳.۱ — الف)

[Prompt]
formatforge/core/processors/math_processor.py:
- MathProcessor(BaseProcessor)
  - process(content, context) → str

وظایف:
1. شناسایی فرمول‌های inline: $...$ و \(...\)
2. شناسایی فرمول‌های display:
   - $$...$$ و \[...\]
   - \begin{equation}...\end{equation}
   - \begin{align}...\end{align}
   - \begin{gather}...\end{gather}
   - \begin{multline}...\end{multline}
3. تبدیل LaTeX environments:
   - equation → $$...$$ (با حفظ label)
   - align → $$\begin{aligned}...$$
   - cases, pmatrix, bmatrix → حفظ درون $$
4. تبدیل \label{eq:x} → {/* label: eq-x */} یا id
5. تبدیل \ref{eq:x} → لینک
6. بازگشایی ماکروهای ریاضی سفارشی (\newcommand)
7. اعتبارسنجی با KaTeX parse (اختیاری)
8. حفظ \text{فارسی} درون فرمول

- extract_math_blocks(text) → list[MathBlock]
  - MathBlock(content, type, label, line_number)
- validate_math_syntax(latex) → (bool, error_message)
- count_math_blocks(text) → MathStats

+ tests/test_math_processor.py با نمونه‌های:
  - فرمول ساده inline
  - فرمول display
  - align با چند خط
  - cases
  - ماتریس
  - فرمول با \text{فارسی}
  - ماکروی سفارشی
```

#### چت ۲: پردازشگر کد

```
[Context] قواعد تبدیل کد از پرامپت (بخش ۴.۳.۱ — و)

[Prompt]
formatforge/core/processors/code_processor.py:
- CodeProcessor(BaseProcessor)
  - process(content, context) → str

وظایف:
1. تبدیل LaTeX listings/minted/verbatim → ```lang
2. تبدیل HTML <pre><code> → ```lang
3. تشخیص زبان (از class/language attribute)
4. حفظ شماره خطوط (اختیاری)
5. حفظ عنوان (caption → title)
6. حفظ label → id
7. اطمینان از direction: ltr
8. تبدیل inline: \texttt{} و \verb|| → `...`

- extract_code_blocks(text, format) → list[CodeBlock]
- detect_language(code) → str (heuristic)

+ tests/test_code_processor.py
```

#### چت ۳: پردازشگر لینک و ارجاعات

```
[Context] قواعد تبدیل لینک از پرامپت (بخش ۴.۳.۱ — ز)

[Prompt]
formatforge/core/processors/link_processor.py:
- LinkProcessor(BaseProcessor)

وظایف:
1. \href{url}{text} → [text](url)
2. \url{url} → [url](url)
3. \ref{label} → [شماره](#label) (با تعیین شماره)
4. \cref{label} → [نوع شماره](#label)
5. \cite{key} → [نویسنده, سال](#ref-key)
6. \footnote{text} → [^fn-N] ... [^fn-N]: text
7. \LTRfootnote{text} → [^fn-N] (با dir="ltr")
8. HTML <a href> → [text](url)
9. تبدیل لینک‌های بین فصل‌ها (relative paths)
10. جمع‌آوری ارجاعات (labels → targets map)

- collect_labels(text, format) → dict[str, LabelInfo]
- collect_citations(text, format) → list[str]
- collect_footnotes(text, format) → list[FootnoteInfo]
- resolve_cross_references(content, labels_map) → str

+ tests/test_link_processor.py
```

#### چت ۴: پردازشگر پانوشت و کتاب‌نامه

```
[Context] قواعد کتاب‌نامه از پرامپت (بخش ۴.۳.۱ — ح)

[Prompt]
formatforge/core/processors/bibliography_processor.py:
- BibliographyProcessor

وظایف:
1. خواندن فایل .bib (pybtex یا bibtexparser)
2. تبدیل به JSON: list[BibEntry]
   - BibEntry(id, type, author, title, year, publisher, url, lang, ...)
3. تشخیص زبان مرجع (فارسی/انگلیسی)
4. تبدیل \cite{key} → <Citation id="key" />
5. تولید bibliography.json
6. تولید بخش کتاب‌نامه MDX (اختیاری)

formatforge/core/processors/footnote_processor.py:
- FootnoteProcessor

وظایف:
1. استخراج \footnote{} از LaTeX
2. استخراج \LTRfootnote{} (با حفظ dir)
3. استخراج \endnote{} → جمع‌آوری در انتها
4. تبدیل به فرمت MD: [^fn-N]
5. شماره‌گذاری خودکار
6. حفظ محتوای فارسی/انگلیسی

+ tests/ برای هر دو
```

---

### اسپرینت S05: پردازشگرهای پیشرفته

#### چت ۱: پردازشگر جدول

```
[Context] قواعد تبدیل جدول از پرامپت (بخش ۴.۳.۱ — ج)

[Prompt]
formatforge/core/processors/table_processor.py:
- TableProcessor(BaseProcessor)

وظایف:
1. تحلیل LaTeX tabular/tabularx/longtable → TableModel
   - TableModel(headers, rows, caption, label, merged_cells, styles)
2. تحلیل HTML <table> → TableModel
3. تصمیم‌گیری خروجی:
   - ساده (بدون ادغام) → Markdown pipe table
   - پیچیده (colspan/rowspan/رنگ) → <table> HTML درون MDX
4. تبدیل LaTeX:
   - \multirow{n}{width}{text}
   - \multicolumn{n}{align}{text}
   - \rowcolors{}{}{} → CSS classes
   - \toprule/\midrule/\bottomrule → border styles
   - \caption{} → <caption>
5. حفظ dir="rtl" برای جداول فارسی
6. حفظ فرمول‌های $...$ درون سلول

- parse_latex_table(text) → TableModel
- parse_html_table(html) → TableModel
- render_markdown_table(model) → str
- render_html_table(model) → str

+ tests/test_table_processor.py با:
  - جدول ساده
  - جدول با multirow/multicolumn
  - جدول رنگی
  - جدول با فرمول
  - جدول فارسی
```

#### چت ۲: پردازشگر تصویر

```
[Context] قواعد تبدیل تصویر از پرامپت (بخش ۴.۳.۱ — د)

[Prompt]
formatforge/core/processors/image_processor.py:
- ImageProcessor(BaseProcessor)

وظایف:
1. شناسایی ارجاعات تصویر:
   - LaTeX: \includegraphics{path}
   - MD: ![alt](path)
   - HTML: <img src="path">
2. استخراج caption و alt text
3. تبدیل به <Figure> component (یا ![])
4. مدیریت wrapfigure → float style
5. مدیریت subfigure → <FigureGrid>
6. بهینه‌سازی (اگر فعال):
   - PNG/JPG → WebP (Pillow)
   - SVG → SVGO optimize (subprocess)
   - محدود کردن max width
7. کپی فایل‌ها به assets/
8. بروزرسانی مسیرها در MDX

- find_image_references(text, format) → list[ImageRef]
- optimize_image(path, config) → OptimizedImage
- copy_assets(refs, source_dir, target_dir) → AssetMap

+ tests/test_image_processor.py
```

#### چت ۳: پردازشگر نمودار (TikZ + Mermaid)

```
[Context] قواعد تبدیل نمودار از پرامپت (بخش ۴.۳.۱ — ب)

[Prompt]
formatforge/core/processors/diagram_processor.py:
- DiagramProcessor(BaseProcessor)

وظایف:
1. شناسایی بلوک‌های TikZ:
   - \begin{tikzpicture}...\end{tikzpicture}
   - \begin{pgfplot}...\end{pgfplot}
2. تبدیل TikZ → SVG:
   - ساخت فایل .tex موقت (standalone class)
   - کامپایل با xelatex
   - تبدیل با dvisvgm
   - ذخیره SVG
3. شناسایی بلوک‌های Mermaid:
   - MD: ```mermaid ... ```
   - HTML: <div class="mermaid">
4. تبدیل Mermaid → <MermaidDiagram> component
5. (اختیاری) رندر Mermaid → SVG با mermaid-cli

- extract_tikz_blocks(text) → list[TikZBlock]
- compile_tikz_to_svg(tikz_code, config) → str (path to SVG)
- extract_mermaid_blocks(text, format) → list[MermaidBlock]
- convert_mermaid_to_component(block) → str

+ tests/test_diagram_processor.py
```

#### چت ۴: پردازشگر Admonition و محیط‌های خاص

```
[Prompt]
formatforge/core/processors/admonition_processor.py:
- AdmonitionProcessor(BaseProcessor)

وظایف:
1. LaTeX tcolorbox / custom environments → <Admonition>
2. LaTeX theorem/definition/proof/example → <Theorem>/<Definition>/<Proof>
3. MD callouts: > [!NOTE], > [!WARNING], ... → <Admonition>
4. HTML custom boxes (.note, .warning, ...) → <Admonition>
5. RST admonitions: .. note::, .. warning:: → <Admonition>
6. details/summary → <Details>
7. نگاشت محیط‌های LaTeX به کامپوننت‌ها:

ENVIRONMENT_MAP = {
    'theorem': ('Theorem', {}),
    'lemma': ('Theorem', {'type': 'lemma'}),
    'corollary': ('Theorem', {'type': 'corollary'}),
    'definition': ('Definition', {}),
    'example': ('Example', {}),
    'proof': ('Proof', {}),
    'remark': ('Admonition', {'type': 'note'}),
    'warningbox': ('Admonition', {'type': 'warning'}),
    'notebox': ('Admonition', {'type': 'note'}),
    # tcolorbox سفارشی → بر اساس عنوان/رنگ تشخیص
}

+ tests/test_admonition_processor.py
```

---

### اسپرینت S06: تبدیل‌گر Markdown → MDX

#### چت ۱: تبدیل‌گر اصلی MD

```
[Context] قواعد MD→MDX از پرامپت (بخش ۴.۳.۲ — Markdown → MDX)

[Prompt]
formatforge/core/converters/md_to_mdx.py:
- MarkdownToMDXConverter(BaseConverter)

  def detect(path) → bool
  def extract_metadata(path) → DocumentMetadata
  def convert(path, config) → ConversionResult

پردازش ترتیبی:
1. خواندن فایل + بررسی encoding
2. تحلیل frontmatter (YAML/TOML)
3. تکمیل metadata
4. اجرای ProcessorPipeline:
   - MathProcessor
   - CodeProcessor
   - TableProcessor
   - ImageProcessor
   - DiagramProcessor (Mermaid)
   - AdmonitionProcessor (callouts)
   - LinkProcessor
   - FootnoteProcessor
   - RTLProcessor
5. تبدیل‌های JSX:
   - class → className
   - for → htmlFor
   - style="..." → style={{...}}
   - <!-- --> → {/* */}
   - self-closing tags: <br> → <br />
6. تولید import ها
7. ساخت frontmatter نهایی
8. ترکیب: frontmatter + imports + content
9. شمارش ZWNJ (before/after)

+ tests/test_md_to_mdx.py با فایل sample-mermaid.md
```

#### چت ۲: تبدیل‌های JSX و Import Generator

```
[Prompt]
formatforge/core/converters/jsx_utils.py:
- convert_html_to_jsx(html) → str
  - class → className
  - for → htmlFor
  - style="color:red" → style={{color:'red'}}
  - <!-- --> → {/* */}
  - <br> → <br />
  - <img> → <img />
  - <hr> → <hr />
  - tabindex → tabIndex
  - onclick → onClick (etc.)

- generate_imports(content) → str
  - اسکن محتوا برای کامپوننت‌های استفاده‌شده
  - تولید import statements بر اساس config

COMPONENT_PATTERNS = {
    '<Theorem': 'Theorem',
    '<Definition': 'Definition',
    '<Proof': 'Proof',
    '<Admonition': 'Admonition',
    '<Figure': 'Figure',
    '<MermaidDiagram': 'MermaidDiagram',
    '<Citation': 'Citation',
    '<CrossRef': 'CrossRef',
    '<BilingualBlock': 'BilingualBlock',
}

+ tests/test_jsx_utils.py
```

#### چت ۳: تست E2E مارک‌داون

```
[Prompt]
tests/test_e2e_markdown.py:

تست کامل تبدیل فایل sample-mermaid.md:
1. خواندن فایل نمونه
2. اجرای MarkdownToMDXConverter
3. بررسی:
   - frontmatter صحیح
   - imports صحیح
   - ریاضی: ۱۵+ فرمول parseable
   - Mermaid: ۱۸ نمودار → <MermaidDiagram>
   - جداول: ۵+ جدول صحیح
   - callouts: ۵ نوع → <Admonition>
   - کد: ۶+ بلوک با زبان صحیح
   - پانوشت: ۳ پانوشت
   - لینک‌ها: ۵+ لینک صحیح
   - ZWNJ: شمارش حفظ شده
   - JSX: class→className, etc.
   - dir="rtl" در frontmatter
```

---

### اسپرینت S07: تبدیل‌گر HTML → MDX

#### چت ۱: تحلیل‌گر HTML

```
[Context] قواعد HTML→MDX از پرامپت (بخش ۴.۳.۲ — HTML → MDX)

[Prompt]
formatforge/core/converters/html_to_mdx.py:
- HTMLToMDXConverter(BaseConverter)

  def convert(path, config) → ConversionResult:

پردازش ترتیبی:
1. خواندن + تشخیص encoding
2. parse با BeautifulSoup
3. استخراج metadata از <head>:
   - <title>, <meta name/property>, OG tags
4. تمیزکاری HTML:
   - حذف <script> (بجز math/mermaid)
   - حذف <style> → استخراج CSS classes
   - حذف div تودرتوی بی‌معنا
5. تبدیل ساختاری:
   - <h1>-<h6> → #-######
   - <p> → پاراگراف
   - <strong>/<b> → **...**
   - <em>/<i> → *...*
   - <a href> → [text](url)
   - <ul>/<ol> → لیست
   - <blockquote> → > نقل‌قول
   - <pre><code> → ```code```
   - <table> → pipe table / HTML table
   - <figure> → <Figure>
   - <details> → <Details>
   - <dl>/<dt>/<dd> → definition list
6. تبدیل عناصر خاص:
   - <mark>, <kbd>, <abbr>, <time>, <address>
   - <sup>, <sub>, <ins>, <del>
   - <progress>, <meter>
   - <video>, <audio>, <iframe>
   - <svg> → فایل مجزا
7. اجرای ProcessorPipeline
8. JSX conversion + imports
9. ZWNJ check

+ tests/test_html_to_mdx.py
```

#### چت ۲: تبدیل عناصر پیچیده HTML

```
[Prompt]
ادامه html_to_mdx.py — متدهای کمکی:

- convert_table_element(tag) → str
  - تشخیص: ساده/ادغامی
  - ساده → MD pipe table
  - ادغامی → HTML <table> JSX-compatible

- convert_form_element(tag) → str
  - <form> → comment + placeholder

- convert_media_element(tag) → str
  - <video> → <Video> component
  - <audio> → <Audio> component
  - <iframe> → <Embed> component

- convert_svg_element(tag) → str
  - inline SVG → extract to file + <Image>

- convert_math_from_html(tag) → str
  - KaTeX rendered spans → $LaTeX$
  - MathJax rendered → $LaTeX$
  - MathML → LaTeX (با pylatexenc)

- extract_css_to_classnames(html) → (cleaned_html, classname_map)

+ tests/test_html_elements.py
```

#### چت ۳: تست E2E اچ‌تی‌ام‌ال

```
[Prompt]
tests/test_e2e_html.py:

تست کامل تبدیل فایل sample-page.html:
1. تمام بخش‌ها: header, TOC, chapters 1-8, footnotes, bibliography
2. بررسی:
   - metadata از <head>
   - ۸+ جدول (شامل ادغامی)
   - ۸+ نمودار Mermaid
   - ۱۰+ فرمول ریاضی
   - ۵+ بلوک کد
   - تصاویر (img, svg, placeholder)
   - ویدئو و صوت
   - عناصر خاص: mark, kbd, abbr, details, progress
   - فرم
   - RTL/LTR blocks
   - پانوشت‌ها
   - کتاب‌نامه
   - ZWNJ حفظ شده
```

---

### اسپرینت S08: تبدیل‌گر LaTeX → MDX (پایه)

#### چت ۱: تحلیل‌گر LaTeX (Parser)

```
[Context] قواعد LaTeX→MDX از پرامپت (بخش ۴.۳.۲ — LaTeX → MDX)

[Prompt]
formatforge/core/converters/latex_parser.py:
- LatexParser
  - parse(content) → LatexDocument
  - LatexDocument:
      preamble: PreambleInfo
      body: list[LatexNode]

  - PreambleInfo:
      document_class: str
      packages: list[PackageInfo]
      custom_commands: dict[str, str]
      custom_environments: dict[str, EnvInfo]
      fonts: FontConfig
      title, author, date

  - LatexNode (union type):
      TextNode, CommandNode, EnvironmentNode, MathNode,
      CommentNode, GroupNode

- parse_preamble(text) → PreambleInfo
- parse_body(text) → list[LatexNode]
- expand_macros(nodes, commands) → list[LatexNode]
- resolve_inputs(nodes, base_dir) → list[LatexNode]
  - \input{file} → محتوای فایل
  - \include{file} → محتوای فایل

+ tests/test_latex_parser.py
```

#### چت ۲: تبدیل ساختار LaTeX

```
[Prompt]
formatforge/core/converters/latex_to_mdx.py (بخش ۱):
- LaTeXToMDXConverter(BaseConverter)

  def convert(path, config) → ConversionResult:

مرحله ۱-۳:
1. خواندن فایل(ها)
2. parse با LatexParser
3. بازگشایی \input/\include
4. بازگشایی \newcommand ها

مرحله ۴ — تبدیل ساختاری:
- \chapter{title} → # title
- \section{title} → ## title
- \subsection{title} → ### title
- \subsubsection{title} → #### title
- \paragraph{title} → ##### title
- \textbf{text} → **text**
- \emph{text} / \textit{text} → *text*
- \underline{text} → <u>text</u>
- \sout{text} → ~~text~~
- \texttt{text} → `text`
- \textsc{text} → <span style="fontVariant:'small-caps'">
- \begin{itemize} → - لیست
- \begin{enumerate} → 1. لیست
- \begin{description} → definition list
- \begin{quote} / \begin{quotation} → > نقل‌قول
- خط خالی → پاراگراف جدید
- ~ → non-breaking space
- \\ → خط جدید
- \clearpage, \newpage → ---
- \maketitle → حذف (اطلاعات در frontmatter)
- \tableofcontents → حذف (TOC خودکار)

- convert_node(node) → str (recursive)
- convert_command(cmd) → str
- convert_environment(env) → str
- convert_text(text) → str (escape JSX chars)

+ tests/test_latex_structure.py
```

#### چت ۳: تبدیل محیط‌های LaTeX

```
[Prompt]
ادامه latex_to_mdx.py (بخش ۲):

تبدیل محیط‌ها:
- \begin{theorem}[title]{label} → <Theorem id="label" title="title">
- \begin{definition}... → <Definition>
- \begin{proof}... → <Proof>
- \begin{example}... → <Example>
- newtcbtheorem environments → تشخیص نوع + تبدیل
- \begin{figure}...\caption{text}\label{fig:x}
  → <Figure src="..." caption="text" id="fig-x">
- \begin{wrapfigure}{l}{0.4\textwidth}
  → <Figure float="left" width="40%">
- \begin{subfigure}... → <FigureGrid>
- \begin{table}...\caption{}
  → <table> با caption
- \begin{sidewaystable}
  → <div className="landscape-table"><table>
- \begin{algorithm}[H]... → شبه‌کد یا کد
- \begin{lstlisting}[language=python]
  → ```python
- \begin{minted}{python}
  → ```python

مدیریت tcolorbox:
- شناسایی نوع از: colframe color, title, style name
- نگاشت به Admonition / Theorem / Box مناسب

+ tests/test_latex_environments.py
```

#### چت ۴: استخراج Metadata از LaTeX

```
[Prompt]
بخش metadata در latex_to_mdx.py:

def extract_metadata(path) → DocumentMetadata:
  1. parse preamble
  2. استخراج:
     - \title{} → title
     - \author{} → author
     - \date{} → date
     - \begin{abstract} → description
     - \hypersetup{pdftitle=..., pdfauthor=...}
     - کامنت‌های ساختاریافته: % Title: ...
  3. تشخیص زبان:
     - وجود xepersian → fa
     - وجود متن فارسی → fa
     - وجود babel[english] → en
  4. تشخیص ویژگی‌ها:
     - math: وجود $, equation, align
     - code: وجود lstlisting, minted
     - tikz: وجود tikzpicture
     - bibliography: وجود \bibliography یا \printbibliography
  5. تولید slug از عنوان

+ tests/test_latex_metadata.py
```

---

### اسپرینت S09: تبدیل‌گر LaTeX → MDX (پیشرفته)

#### چت ۱: مدیریت کتاب چندفصلی

```
[Prompt]
formatforge/core/converters/latex_book_converter.py:
- LaTeXBookConverter

وظایف:
1. تشخیص ساختار کتاب:
   - main.tex با \input{chapter01}
   - یا فایل‌های ch01.tex, ch02.tex مستقل
2. تبدیل هر فصل به یک فایل MDX مجزا
3. تولید _series.json:
   {
     "title": "مبانی منطق ریاضی",
     "slug": "logic-foundations",
     "chapters": [
       {"order": 0, "slug": "00-introduction", "title": "مقدمه"},
       {"order": 1, "slug": "01-propositional-logic", "title": "منطق گزاره‌ای"},
       ...
     ],
     "bibliography": "bibliography.json"
   }
4. اصلاح ارجاعات بین فصل‌ها:
   - \ref{ch2:thm:demorgan}
   → [قضیه ۱.۱](/logic-foundations/01-propositional-logic#thm-demorgan)
5. مدیریت assets مشترک vs اختصاصی هر فصل
6. تولید bibliography.json مشترک

+ tests/test_latex_book.py
```

#### چت ۲: حذف دستورات غیرضروری LaTeX

```
[Prompt]
formatforge/core/converters/latex_cleaner.py:
- LaTeXCleaner

لیست کامل دستورات قابل حذف:
- صفحه‌بندی: \geometry, \pagestyle, \fancyhf, \headrulewidth, ...
- فونت (برای وب): \settextfont, \setlatintextfont, \setdigitfont, ...
- پکیج‌ها: تمام \usepackage{} (اطلاعاتشان استخراج شده)
- تنظیمات: \pgfplotsset, \usetikzlibrary (مگر برای TikZ→SVG)
- شمارنده‌ها: \setcounter, \newcounter
- فضای عمودی: \vspace, \vfill, \bigskip, \medskip, \smallskip
- فضای افقی: \hspace, \hfill, \quad, \qquad (بعضی حفظ)
- صفحه‌شکن: \clearpage, \newpage → ---
- خالی: \phantom, \hphantom, \vphantom
- رنگ تعریفی: \definecolor (اطلاعات استخراج شده)
- Layout: \begin{center} → style, \centering → style

- clean(content) → str
- REMOVABLE_COMMANDS: set[str]
- CONVERTIBLE_COMMANDS: dict[str, Callable]

+ tests/test_latex_cleaner.py
```

#### چت ۳: TikZ → SVG Pipeline

```
[Prompt]
formatforge/core/processors/tikz_compiler.py:
- TikZCompiler

وظایف:
1. ساخت فایل standalone .tex:
   \documentclass[tikz,border=5pt]{standalone}
   \usepackage{pgfplots}\pgfplotsset{compat=1.18}
   \usepackage{fontspec}
   \usepackage{xepersian}
   \settextfont{Vazirmatn}
   \begin{document}
   [TikZ code here]
   \end{document}

2. کامپایل: xelatex → PDF
3. تبدیل: dvisvgm یا pdf2svg → SVG
4. بهینه‌سازی SVG (SVGO)
5. کَش بر اساس hash محتوا

- compile_tikz(code, config) → SVGResult
- create_standalone_tex(code, packages) → str
- compile_tex_to_pdf(tex_path) → pdf_path
- convert_pdf_to_svg(pdf_path) → svg_path
- optimize_svg(svg_path) → svg_path
- get_cache_key(code) → str
- check_cache(key) → Optional[str]

+ tests/test_tikz_compiler.py
```

#### چت ۴: تست E2E لاتکس

```
[Prompt]
tests/test_e2e_latex.py:

تست کامل تبدیل فایل sample-book.tex:

1. تشخیص: کتاب LaTeX فارسی-انگلیسی
2. استخراج metadata:
   - عنوان فارسی + انگلیسی
   - نویسنده
   - xepersian detected → lang=fa
3. تبدیل ۵ فصل:
   - فصل ۱: مقدمه (تعریف + قضیه + اثبات + مثال)
   - فصل ۲: جدول ارزش (جداول + عملگرها)
   - فصل ۳: منطق محمولات (اثبات + درخت + الگوریتم)
   - فصل ۴: نمودارها (TikZ→SVG + pgfplots + wrapfigure + subfigure)
   - فصل ۵: راهنما (longtable + lstlisting)
4. بررسی:
   - ۸۷+ فرمول (equation, align, cases, pmatrix)
   - ۱۲+ جدول (tabular, longtable, sidewaystable)
   - ۶+ نمودار TikZ → SVG
   - ۴+ بلوک کد
   - ۸+ قضیه/تعریف/اثبات → کامپوننت
   - ۱۵+ ارجاع متقاطع
   - ۸+ پانوشت
   - ۱۵ مرجع → bibliography.json
   - ZWNJ: شمارش حفظ شده
   - \lr{}, \begin{latin}: تبدیل صحیح
   - کتاب‌نامه: .bib → JSON
   - frontmatter کامل
   - imports صحیح
```

---

### اسپرینت S10: تست کیفیت + متادیتا

#### چت ۱: تست‌های کیفیت

```
[Context] سطوح تست از پرامپت (بخش ۴.۴.۱)

[Prompt]
formatforge/core/quality/ — کامل:

1. structural_test.py:
   - test_frontmatter_valid(mdx) → bool
   - test_jsx_syntax(mdx) → bool
   - test_imports_valid(mdx) → bool
   - test_encoding(path) → bool
   - test_mdx_compiles(mdx) → bool

2. content_test.py:
   - compare_element_counts(source, output) → ContentReport
   - count_headings, count_formulas, count_images,
     count_tables, count_code_blocks, count_footnotes,
     count_words

3. math_test.py:
   - test_katex_parse(mdx) → MathTestReport
   - extract_and_validate_all_formulas(mdx)

4. rtl_test.py:
   - test_dir_rtl_set(mdx) → bool
   - test_lang_fa_set(mdx) → bool
   - test_zwnj_preserved(source, output) → ZWNJReport
   - test_quotes_correct(mdx) → bool
   - test_ltr_blocks_correct(mdx) → bool

5. link_test.py:
   - test_internal_links(mdx) → LinkReport
   - test_asset_links(mdx, assets_dir) → LinkReport
   - test_cross_chapter_links(mdx_files) → LinkReport

6. quality_score.py:
   - calculate_quality_score(source, output, reports) → int (0-100)
   - (الگوریتم از بخش ۴.۴.۲ پرامپت)
```

#### چت ۲: متادیتا + AI Completer

```
[Context] مشخصات متادیتا از پرامپت (بخش ۴.۲)

[Prompt]
1. formatforge/core/metadata/extractor.py:
   - extract_metadata(path, format) → DocumentMetadata
   - (dispatch به extractor مناسب بر اساس فرمت)

2. formatforge/core/metadata/slug_generator.py:
   - generate_slug(title, lang, existing_slugs) → str
   - transliterate_persian(text) → str (Finglish)
   - ensure_unique(slug, existing) → str

3. formatforge/core/metadata/validator.py:
   - validate_metadata(meta) → ValidationResult
   - check_required_fields(meta) → list[str]
   - check_slug_format(slug) → bool

4. formatforge/ai/metadata_ai.py:
   - AIMetadataCompleter
     - complete_description(content) → str
     - complete_tags(content) → list[str]
     - complete_title_en(title_fa) → str
     - suggest_slug(title) → str
     - complete_all(content, partial_meta) → DocumentMetadata
   - پشتیبانی: openai, anthropic, ollama, none

+ tests/ برای هر ماژول
```

#### چت ۳: Pre-flight Check (Stage 2.5)

```
[Context] بررسی‌های پیش از تبدیل از پرامپت (بخش ۴.۲.۵)

[Prompt]
formatforge/core/quality/preflight.py:
- PreflightChecker

  def check(scan_report, config) → PreflightReport:

بررسی‌ها:
1. encoding_check(files) → list[Issue]
2. structure_check(files, format) → list[Issue]
3. dependency_check(files, assets) → list[Issue]
4. content_check(files) → list[Issue]
   - math syntax validation
   - table structure validation
5. trial_conversion(file, converter) → TrialResult
   - تبدیل ۱۰٪ اول
   - بررسی خروجی
6. estimate_conversion(scan_report) → Estimate
   - زمان تقریبی
   - حجم تقریبی خروجی

- PreflightReport:
    issues: list[Issue]
    estimate: Estimate
    readiness_score: int (0-100)
    can_proceed: bool

+ CLI integration: نمایش زیبا با Rich
```

---

### اسپرینت S11: استقرار + گزارش

#### چت ۱: استقرار خروجی

```
[Context] فرآیند استقرار از پرامپت (بخش ۴.۵)

[Prompt]
1. formatforge/core/deployer/file_organizer.py:
   - organize_output(result, config) → OrganizedOutput
   - ساخت ساختار پوشه (article vs book)
   - نام‌گذاری فایل‌ها طبق الگو

2. formatforge/core/deployer/asset_manager.py:
   - copy_assets(source, target, optimize) → AssetReport
   - optimize_images(assets, config)
   - update_paths_in_mdx(mdx, path_map) → str

3. formatforge/core/deployer/deployer.py:
   - Deployer
     - deploy(organized, target_dir, config) → DeployReport
     - backup_existing(target_dir)
     - validate_deployment(target_dir)
     - generate_ancillary_files(_series

<!-- POSSIBLE OVERLAP DETECTED (similarity: 99%) - REVIEW BELOW -->

ادامه و نهایی‌سازی مدل اجرایی:

```markdown
### اسپرینت S11: استقرار + گزارش (ادامه)

#### چت ۱ (ادامه): استقرار خروجی

3. formatforge/core/deployer/deployer.py:
   - Deployer
     - deploy(organized, target_dir, config) → DeployReport
     - backup_existing(target_dir)
     - validate_deployment(target_dir)
     - generate_ancillary_files:
         _series.json (برای کتاب)
         bibliography.json
     - update_cross_chapter_links(mdx_files)
     - git_operations (اختیاری):
         create_branch(name)
         stage_files(paths)
         commit(message)

   - DeployReport:
       target_dir: str
       mdx_files: list[str]
       asset_files: list[str]
       total_size: int
       links_updated: int
       warnings: list[str]

+ tests/test_deployer.py
```

#### چت ۲: گزارش مرکزی

```
[Context] ساختار گزارش از پرامپت (بخش ۴.۶)

[Prompt]
1. formatforge/reports/central_log.py:
   - CentralLog
     - __init__(log_path)
     - add_conversion(result: ConversionResult) → str (conv_id)
     - get_conversion(conv_id) → ConversionEntry
     - get_recent(n) → list[ConversionEntry]
     - search(query) → list[ConversionEntry]
     - get_statistics() → Statistics
     - is_slug_used(slug) → bool
     - register_slug(slug, conv_id)
     - export(format="yaml"|"json"|"csv") → str

   - ConversionEntry(Pydantic):
       id, timestamp, status, input, output,
       metadata, stats, warnings, errors

   - Statistics:
       total_conversions, success_rate,
       by_format, by_language, by_type,
       avg_quality, slugs_used

2. formatforge/reports/report_engine.py:
   - ReportEngine
     - generate_summary(log) → str (Rich formatted)
     - generate_html_report(log) → str
     - generate_detail(conv_id) → str

+ tests/test_central_log.py
```

#### چت ۳: CLI Commands تکمیلی

```
[Prompt]
تکمیل CLI commands:

1. formatforge/cli/commands/deploy.py:
   - @click.command()
   - @click.argument('source')
   - @click.option('--target', '-t')
   - @click.option('--git-commit/--no-git-commit')
   - @click.option('--open-editor/--no-open-editor')
   - نمایش پیشرفت با Rich Progress
   - تأیید تعاملی قبل از استقرار

2. formatforge/cli/commands/report.py:
   - report list --last N
   - report show CONV_ID
   - report stats
   - report search QUERY
   - report export --format csv --output FILE

3. formatforge/cli/commands/run.py (all-in-one):
   - اجرای ترتیبی: scan → metadata → preflight → convert → test → deploy
   - @click.option('--interactive/--batch')
   - @click.option('--quality-min', default=80)
   - @click.option('--auto-fix/--no-auto-fix')
   - Rich Progress با مراحل
   - خلاصه نهایی

+ تست integration برای run command
```

---

### اسپرینت S12: یکپارچه‌سازی + E2E

#### چت ۱: Pipeline یکپارچه

```
[Prompt]
formatforge/core/pipeline.py:
- ConversionPipeline

  def __init__(config: AppConfig)

  def run(
      input_path: str,
      output_path: str,
      interactive: bool = True,
      quality_min: int = 80,
      auto_fix: bool = False,
  ) → PipelineResult:

    مراحل:
    ━━━━━━
    1. scanner.scan(input_path)
       → ScanReport
       → تأیید (اگر interactive)

    2. metadata.extract_and_complete(scan_report)
       → list[DocumentMetadata]
       → تأیید (اگر interactive)

    3. preflight.check(scan_report, metadata)
       → PreflightReport
       → اصلاح خودکار (اگر auto_fix)
       → تأیید (اگر interactive)

    4. for each document:
         converter = registry.get_converter(format)
         result = converter.convert(path, config)
         → ConversionResult + نمایش پیشرفت

    5. quality.test_all(results)
       → QualityReport
       → اگر score < quality_min: هشدار

    6. deployer.deploy(results, output_path, config)
       → DeployReport

    7. central_log.add_conversion(...)
       → گزارش نهایی

  - PipelineResult:
      scan: ScanReport
      metadata: list[DocumentMetadata]
      preflight: PreflightReport
      conversions: list[ConversionResult]
      quality: QualityReport
      deployment: DeployReport
      log_id: str
      total_duration: float

+ tests/test_pipeline.py
```

#### چت ۲: تست‌های E2E کامل

```
[Prompt]
tests/test_e2e_full.py:

سناریو ۱: تک مقاله LaTeX
  ورودی: sample-book.tex (فایل ما)
  خروجی: پوشه MDX با ۵ فصل
  بررسی: تمام ۵۰+ عنصر

سناریو ۲: تک مقاله Markdown
  ورودی: sample-mermaid.md (فایل ما)
  خروجی: تک فایل MDX
  بررسی: ۱۸ نوع Mermaid + ریاضی + جداول

سناریو ۳: صفحه HTML
  ورودی: sample-page.html (فایل ما)
  خروجی: تک فایل MDX
  بررسی: رسانه + فرم + عناصر خاص HTML

سناریو ۴: پوشه ترکیبی
  ورودی: پوشه شامل .tex + .md + .html
  خروجی: پوشه‌های MDX مجزا
  بررسی: هر فایل مستقل تبدیل شده

سناریو ۵: فایل ZIP
  ورودی: sample-book.zip (حاوی پروژه LaTeX)
  خروجی: پوشه MDX
  بررسی: استخراج + تبدیل + استقرار

سناریو ۶: Pipeline کامل
  ورودی: sample-book.tex
  خروجی: deploy شده در target_dir
  بررسی: تمام ۶ مرحله + گزارش مرکزی

هر سناریو:
  - assert quality_score >= 85
  - assert zwnj_count_before == zwnj_count_after
  - assert all_math_parseable
  - assert all_images_exist
  - assert all_links_valid
  - assert frontmatter_valid
  - assert jsx_compiles
```

#### چت ۳: Doctor + Init Components

```
[Prompt]
1. formatforge/cli/commands/doctor.py (تکمیل):
   - بررسی تمام وابستگی‌ها:
     ✅/❌ Python 3.11+
     ✅/❌ pandoc
     ✅/❌ xelatex (TeX Live / MiKTeX)
     ✅/❌ biber
     ✅/❌ dvisvgm
     ✅/❌ node.js
     ✅/❌ mermaid-cli (@mermaid-js/mermaid-cli)
     ✅/❌ ImageMagick
     ✅/❌ SVGO
     ✅/❌ Tesseract OCR (اختیاری)
   - بررسی فونت‌ها:
     ✅/❌ Vazirmatn
     ✅/❌ IRLotus (اختیاری)
   - بررسی تنظیمات:
     ✅/❌ config file exists
     ✅/❌ target directory writable
   - پیشنهاد نصب برای هر مورد ناموجود

2. formatforge/cli/commands/init_components.py:
   - تولید کامپوننت‌های MDX:
     --framework: next | astro | gatsby
     --typescript / --javascript
     --output: مسیر خروجی
   - کامپوننت‌ها از templates/ کپی و سفارشی می‌شوند
   - CSS تولید می‌شود

3. README.md و CONTRIBUTING.md

+ tests/test_doctor.py
```

#### چت ۴: مستندسازی نهایی

```
[Prompt]
1. docs/README.md — مستند اصلی:
   - نصب
   - شروع سریع
   - مثال‌ها
   - تنظیمات
   - فرمت‌های پشتیبانی‌شده

2. docs/PERSIAN_GUIDE.md — راهنمای فارسی:
   - نکات ZWNJ
   - تنظیمات RTL
   - فونت‌ها
   - تایپوگرافی

3. docs/CONVERSION_RULES.md — قواعد تبدیل:
   - جدول نگاشت هر فرمت
   - محدودیت‌ها
   - Troubleshooting

4. docs/COMPONENTS.md — مستند کامپوننت‌ها:
   - هر کامپوننت: props, مثال, screenshot
```

---

## جدول خلاصه: فایل‌ها، چت‌ها، و اولویت

```
فایل                                    │ اسپرینت │ چت │ اولویت │ وابستگی
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
pyproject.toml                          │  S01    │ 1  │  P0    │ —
models/metadata.py                      │  S01    │ 2  │  P0    │ —
models/scan_report.py                   │  S01    │ 2  │  P0    │ —
models/conversion_result.py             │  S01    │ 2  │  P0    │ —
config/schema.py + loader.py            │  S01    │ 3  │  P0    │ models
cli/__main__.py + commands (skeleton)   │  S01    │ 4  │  P0    │ config
converters/base.py                      │  S01    │ 5  │  P0    │ models
processors/base.py                      │  S01    │ 5  │  P0    │ models
utils/logger.py + file_utils.py         │  S01    │ 6  │  P0    │ —
utils/text_utils.py                     │  S01    │ 6  │  P0    │ —
exceptions.py                           │  S01    │ 1  │  P0    │ —
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
scanner/file_detector.py                │  S02    │ 1  │  P0    │ utils
scanner/structure_analyzer.py           │  S02    │ 2  │  P0    │ file_detector
scanner/archive_handler.py              │  S02    │ 3  │  P1    │ utils
scanner/scanner.py                      │  S02    │ 4  │  P0    │ all scanner
cli/commands/scan.py (complete)         │  S02    │ 4  │  P0    │ scanner
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
persian/zwnj_handler.py                 │  S03    │ 1  │  P0    │ —
persian/bidi_handler.py                 │  S03    │ 2  │  P0    │ —
persian/typography.py                   │  S03    │ 3  │  P0    │ —
processors/rtl_processor.py             │  S03    │ 4  │  P0    │ persian/*
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
processors/math_processor.py            │  S04    │ 1  │  P0    │ base
processors/code_processor.py            │  S04    │ 2  │  P0    │ base
processors/link_processor.py            │  S04    │ 3  │  P0    │ base
processors/bibliography_processor.py    │  S04    │ 4  │  P1    │ link
processors/footnote_processor.py        │  S04    │ 4  │  P0    │ link
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
processors/table_processor.py           │  S05    │ 1  │  P0    │ base
processors/image_processor.py           │  S05    │ 2  │  P0    │ base
processors/diagram_processor.py         │  S05    │ 3  │  P1    │ base
processors/admonition_processor.py      │  S05    │ 4  │  P0    │ base
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
converters/md_to_mdx.py                 │  S06    │ 1  │  P0    │ processors
converters/jsx_utils.py                 │  S06    │ 2  │  P0    │ —
test_e2e_markdown.py                    │  S06    │ 3  │  P0    │ md_to_mdx
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
converters/html_to_mdx.py              │  S07    │ 1  │  P0    │ processors
converters/html_elements.py            │  S07    │ 2  │  P1    │ html_to_mdx
test_e2e_html.py                       │  S07    │ 3  │  P0    │ html_to_mdx
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
converters/latex_parser.py              │  S08    │ 1  │  P0    │ —
converters/latex_to_mdx.py (structure)  │  S08    │ 2  │  P0    │ parser
converters/latex_to_mdx.py (envs)      │  S08    │ 3  │  P0    │ structure
converters/latex_metadata.py            │  S08    │ 4  │  P0    │ parser
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
converters/latex_book_converter.py      │  S09    │ 1  │  P1    │ latex_to_mdx
converters/latex_cleaner.py             │  S09    │ 2  │  P0    │ —
processors/tikz_compiler.py             │  S09    │ 3  │  P1    │ —
test_e2e_latex.py                       │  S09    │ 4  │  P0    │ all latex
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
quality/* (6 files)                     │  S10    │ 1  │  P0    │ models
metadata/extractor.py                   │  S10    │ 2  │  P0    │ models
metadata/slug_generator.py              │  S10    │ 2  │  P0    │ persian
metadata/validator.py                   │  S10    │ 2  │  P0    │ models
ai/metadata_ai.py                       │  S10    │ 2  │  P2    │ config
quality/preflight.py                    │  S10    │ 3  │  P0    │ quality
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
deployer/file_organizer.py              │  S11    │ 1  │  P0    │ models
deployer/asset_manager.py               │  S11    │ 1  │  P0    │ image_proc
deployer/deployer.py                    │  S11    │ 1  │  P0    │ organizer
reports/central_log.py                  │  S11    │ 2  │  P0    │ models
reports/report_engine.py                │  S11    │ 2  │  P1    │ central_log
cli/commands (deploy,report,run)        │  S11    │ 3  │  P0    │ deployer
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
core/pipeline.py                        │  S12    │ 1  │  P0    │ ALL
test_e2e_full.py                        │  S12    │ 2  │  P0    │ pipeline
cli/commands/doctor.py (complete)       │  S12    │ 3  │  P1    │ —
cli/commands/init_components.py         │  S12    │ 3  │  P1    │ templates
docs/*                                  │  S12    │ 4  │  P1    │ —
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┿━━━━━━━━━┿━━━━┿━━━━━━━━┿━━━━━━━━
مجموع فایل‌ها: ~55                     │ ۱۲ اسپرینت │ ~60 چت │       │
```

---

## الگوی هر چت با LLM (Template)

هر چت از این ساختار ثابت پیروی کند:

### قالب پیام اول هر چت

```markdown
# [System Prompt ثابت — همان بخش بالا]

---

## Context: [نام ماژول]

### فایل‌هایی که قبلاً ساخته‌ایم (interface ها):
```python
# خلاصه interface فایل‌های وابسته
# مثال:
class BaseConverter(ABC):
    @abstractmethod
    def detect(self, path: str) -> bool: ...
    @abstractmethod
    def convert(self, path: str, config: AppConfig) -> ConversionResult: ...

class DocumentMetadata(BaseModel):
    title: str
    slug: str
    lang: Literal["fa", "en", "fa-en"]
    dir: Literal["rtl", "ltr"] = "rtl"
    # ... (خلاصه فیلدها)
```

### فایل‌هایی که الان باید بسازیم:
1. `formatforge/core/converters/md_to_mdx.py`
2. `tests/test_md_to_mdx.py`

### مشخصات دقیق:
[بخش مربوطه از پرامپت اصلی — کپی‌شده]

### نمونه ورودی/خروجی:
```
ورودی: ```mermaid\nflowchart TD\n  A-->B\n```
خروجی: <MermaidDiagram chart={`flowchart TD\n  A-->B`} />
```

### لطفاً:
1. کد کامل فایل(ها) را بنویس
2. type hints کامل
3. docstring فارسی+انگلیسی
4. error handling
5. تست‌های واحد (pytest) با حداقل ۵ مورد
6. توضیح تصمیمات طراحی (اگر چند گزینه بود)
```

### قالب پیام‌های ادامه در همان چت

```markdown
خوب بود. لطفاً:
1. [متد X] را اضافه کن
2. تست برای [سناریوی Y] بنویس
3. [باگ Z] را اصلاح کن
```

---

## نکات عملی مدیریت چت‌ها

### ✅ بایدها

```
1. هر چت = یک ماژول مشخص (۱-۲ فایل)
2. System Prompt ثابت در ابتدای هر چت
3. Interface فایل‌های وابسته را کپی کنید (نه کل فایل)
4. نمونه ورودی/خروجی واقعی بدهید
5. بلافاصله کد را تست کنید قبل از رفتن به چت بعدی
6. اگر خروجی ناقص بود: "ادامه بده" (نه شروع مجدد)
7. نتایج هر چت را در یک فایل CHANGELOG.md ثبت کنید
8. هر چت را با "تست‌ها را اجرا کردم، ۴/۵ پاس شد. تست ۳ خطای X دارد."
   شروع کنید (در صورت رفع باگ)
```

### ❌ نبایدها

```
1. کل پرامپت ۳۰K توکنی را یکجا ارسال نکنید
2. بیش از ۲ فایل در یک چت درخواست نکنید
3. بدون تست، به ماژول بعدی نروید
4. کد قبلی را مجدد تولید نکنید — فقط import کنید
5. در یک چت، context ماژول دیگر را وارد نکنید
```

### 📋 فرمت ثبت پیشرفت

```yaml
# progress.yaml — بعد از هر چت بروزرسانی شود

sprint: S06
chat: 2
date: "2025-07-15"

completed:
  - file: "converters/md_to_mdx.py"
    status: "done"
    tests: "5/5 passed"
    notes: "Mermaid conversion OK, callouts OK"
  
  - file: "converters/jsx_utils.py"
    status: "done"
    tests: "8/8 passed"

in_progress:
  - file: "test_e2e_markdown.py"
    status: "partial"
    blockers: "Mermaid rendering needs mermaid-cli installed"

next_chat:
  sprint: S06
  chat: 3
  target: "test_e2e_markdown.py completion"
  context_needed:
    - "md_to_mdx.py interface"
    - "sample-mermaid.md (first 50 lines)"
```

---

## نمودار وابستگی ساخت (Build Order)

```
S01 ─── models + config + CLI skeleton + base classes + utils
  │
  ├── S02 ─── scanner (file_detector → structure → archive → scanner)
  │
  ├── S03 ─── persian (zwnj → bidi → typography → rtl_processor)
  │     │
  │     └──┐
  │        │
  ├── S04 ─┤── processors/base (math → code → link → footnote → bibliography)
  │        │
  │     ┌──┘
  │     │
  ├── S05 ─── processors/advanced (table → image → diagram → admonition)
  │     │
  │     ├─────────────────────┐
  │     │                     │
  ├── S06 ─── MD→MDX          │
  │     │                     │
  ├── S07 ─── HTML→MDX        │
  │     │                     │
  ├── S08 ─── LaTeX→MDX (base)│
  │     │                     │
  ├── S09 ─── LaTeX→MDX (adv) │
  │     │                     │
  │     └─────────────────────┘
  │              │
  ├── S10 ─── quality + metadata + preflight
  │              │
  ├── S11 ─── deployer + reports + CLI commands
  │              │
  └── S12 ─── pipeline + E2E + doctor + docs
```

---

## نقطه‌های بررسی (Checkpoints)

```
بعد از S03: ✅ ماژول فارسی کامل — تست مستقل ZWNJ/bidi
بعد از S05: ✅ تمام پردازشگرها — تست مستقل هر کدام
بعد از S06: ✅ اولین تبدیل‌گر کامل (MD→MDX) — E2E تست
بعد از S09: ✅ سه تبدیل‌گر اصلی (MD+HTML+LaTeX) — E2E تست
بعد از S12: ✅ محصول کامل — Full E2E + Doctor + Deploy
```

---

## ساختار فایلی نهایی پروژه

```
formatforge/
│
├── pyproject.toml
├── Makefile
├── README.md
├── LICENSE
│
├── config/
│   ├── default_config.yaml
│   └── user_config.yaml.example
│
├── formatforge/
│   ├── __init__.py
│   ├── exceptions.py
│   │
│   ├── models/
│   │   ├── __init__.py
│   │   ├── metadata.py              # S01-C2
│   │   ├── scan_report.py           # S01-C2
│   │   └── conversion_result.py     # S01-C2
│   │
│   ├── config/
│   │   ├── __init__.py
│   │   ├── schema.py                # S01-C3
│   │   └── loader.py                # S01-C3
│   │
│   ├── utils/
│   │   ├── __init__.py
│   │   ├── logger.py                # S01-C6
│   │   ├── file_utils.py            # S01-C6
│   │   └── text_utils.py            # S01-C6
│   │
│   ├── cli/
│   │   ├── __init__.py
│   │   ├── __main__.py              # S01-C4
│   │   ├── interactive.py           # S11-C3
│   │   └── commands/
│   │       ├── __init__.py
│   │       ├── scan.py              # S02-C4
│   │       ├── convert.py           # S11-C3
│   │       ├── test_cmd.py          # S11-C3
│   │       ├── deploy.py            # S11-C3
│   │       ├── report.py            # S11-C3
│   │       ├── run.py               # S11-C3
│   │       ├── doctor.py            # S12-C3
│   │       └── init_components.py   # S12-C3
│   │
│   ├── core/
│   │   ├── __init__.py
│   │   ├── pipeline.py              # S12-C1
│   │   │
│   │   ├── scanner/
│   │   │   ├── __init__.py
│   │   │   ├── file_detector.py     # S02-C1
│   │   │   ├── structure_analyzer.py# S02-C2
│   │   │   ├── archive_handler.py   # S02-C3
│   │   │   └── scanner.py           # S02-C4
│   │   │
│   │   ├── metadata/
│   │   │   ├── __init__.py
│   │   │   ├── extractor.py         # S10-C2
│   │   │   ├── slug_generator.py    # S10-C2
│   │   │   └── validator.py         # S10-C2
│   │   │
│   │   ├── converters/
│   │   │   ├── __init__.py
│   │   │   ├── base.py              # S01-C5
│   │   │   ├── jsx_utils.py         # S06-C2
│   │   │   ├── md_to_mdx.py         # S06-C1
│   │   │   ├── html_to_mdx.py       # S07-C1
│   │   │   ├── html_elements.py     # S07-C2
│   │   │   ├── latex_parser.py      # S08-C1
│   │   │   ├── latex_to_mdx.py      # S08-C2,C3
│   │   │   ├── latex_metadata.py    # S08-C4
│   │   │   ├── latex_book_converter.py # S09-C1
│   │   │   └── latex_cleaner.py     # S09-C2
│   │   │
│   │   ├── processors/
│   │   │   ├── __init__.py
│   │   │   ├── base.py              # S01-C5
│   │   │   ├── math_processor.py    # S04-C1
│   │   │   ├── code_processor.py    # S04-C2
│   │   │   ├── link_processor.py    # S04-C3
│   │   │   ├── footnote_processor.py# S04-C4
│   │   │   ├── bibliography_processor.py # S04-C4
│   │   │   ├── table_processor.py   # S05-C1
│   │   │   ├── image_processor.py   # S05-C2
│   │   │   ├── diagram_processor.py # S05-C3
│   │   │   ├── tikz_compiler.py     # S09-C3
│   │   │   ├── admonition_processor.py # S05-C4
│   │   │   └── rtl_processor.py     # S03-C4
│   │   │
│   │   ├── persian/
│   │   │   ├── __init__.py
│   │   │   ├── zwnj_handler.py      # S03-C1
│   │   │   ├── bidi_handler.py      # S03-C2
│   │   │   └── typography.py        # S03-C3
│   │   │
│   │   ├── quality/
│   │   │   ├── __init__.py
│   │   │   ├── structural_test.py   # S10-C1
│   │   │   ├── content_test.py      # S10-C1
│   │   │   ├── math_test.py         # S10-C1
│   │   │   ├── rtl_test.py          # S10-C1
│   │   │   ├── link_test.py         # S10-C1
│   │   │   ├── quality_score.py     # S10-C1
│   │   │   └── preflight.py         # S10-C3
│   │   │
│   │   └── deployer/
│   │       ├── __init__.py
│   │       ├── file_organizer.py    # S11-C1
│   │       ├── asset_manager.py     # S11-C1
│   │       └── deployer.py          # S11-C1
│   │
│   ├── ai/
│   │   ├── __init__.py
│   │   ├── provider.py              # S10-C2
│   │   └── metadata_ai.py           # S10-C2
│   │
│   ├── reports/
│   │   ├── __init__.py
│   │   ├── central_log.py           # S11-C2
│   │   └── report_engine.py         # S11-C2
│   │
│   └── templates/
│       ├── components/              # قالب کامپوننت‌ها
│       │   ├── next/
│       │   │   ├── Theorem.jsx
│       │   │   ├── Definition.jsx
│       │   │   ├── Proof.jsx
│       │   │   ├── Admonition.jsx
│       │   │   ├── Figure.jsx
│       │   │   ├── MermaidDiagram.jsx
│       │   │   ├── Citation.jsx
│       │   │   ├── Bibliography.jsx
│       │   │   ├── CrossRef.jsx
│       │   │   ├── BilingualBlock.jsx
│       │   │   └── styles/
│       │   │       ├── mdx-components.css
│       │   │       └── rtl-overrides.css
│       │   └── astro/
│       │       └── ... (مشابه)
│       └── mdx/
│           ├── article.mdx.j2       # قالب مقاله
│           └── book_chapter.mdx.j2  # قالب فصل کتاب
│
├── tests/
│   ├── conftest.py
│   ├── test_files/                   # فایل‌های نمونه تست
│   │   ├── sample-book.tex
│   │   ├── sample-mermaid.md
│   │   ├── sample-page.html
│   │   ├── sample-page.rst
│   │   ├── sample-page.adoc
│   │   └── figures/
│   │       └── placeholder.png
│   │
│   ├── test_models.py               # S01
│   ├── test_config.py               # S01
│   ├── test_file_utils.py           # S01
│   ├── test_text_utils.py           # S01
│   ├── test_file_detector.py        # S02
│   ├── test_structure_analyzer.py   # S02
│   ├── test_archive_handler.py      # S02
│   ├── test_scanner.py              # S02
│   ├── test_zwnj_handler.py         # S03
│   ├── test_bidi_handler.py         # S03
│   ├── test_typography.py           # S03
│   ├── test_rtl_processor.py        # S03
│   ├── test_math_processor.py       # S04
│   ├── test_code_processor.py       # S04
│   ├── test_link_processor.py       # S04
│   ├── test_footnote_processor.py   # S04
│   ├── test_bibliography_processor.py # S04
│   ├── test_table_processor.py      # S05
│   ├── test_image_processor.py      # S05
│   ├── test_diagram_processor.py    # S05
│   ├── test_admonition_processor.py # S05
│   ├── test_md_to_mdx.py           # S06
│   ├── test_jsx_utils.py           # S06
│   ├── test_html_to_mdx.py         # S07
│   ├── test_html_elements.py       # S07
│   ├── test_latex_parser.py        # S08
│   ├── test_latex_structure.py     # S08
│   ├── test_latex_environments.py  # S08
│   ├── test_latex_metadata.py      # S08
│   ├── test_latex_book.py          # S09
│   ├── test_latex_cleaner.py       # S09
│   ├── test_tikz_compiler.py       # S09
│   ├── test_quality.py             # S10
│   ├── test_metadata.py            # S10
│   ├── test_preflight.py           # S10
│   ├── test_deployer.py            # S11
│   ├── test_central_log.py         # S11
│   ├── test_pipeline.py            # S12
│   ├── test_doctor.py              # S12
│   │
│   └── e2e/                         # تست‌های سرتاسری
│       ├── test_e2e_markdown.py     # S06
│       ├── test_e2e_html.py         # S07
│       ├── test_e2e_latex.py        # S09
│       └── test_e2e_full.py         # S12
│
└── docs/
    ├── README.md
    ├── PERSIAN_GUIDE.md
    ├── CONVERSION_RULES.md
    ├── COMPONENTS.md
    └── CONTRIBUTING.md
```

---

## فرمان‌های اجرای اسپرینت‌ها

```bash
# === شروع پروژه ===
mkdir formatforge && cd formatforge
git init
# ساخت ساختار اولیه (S01-C1)

# === هر اسپرینت ===
# 1. ساخت branch
git checkout -b sprint/S06-md-converter

# 2. پیاده‌سازی (با LLM)
# ... چت‌ها طبق برنامه ...

# 3. تست
python -m pytest tests/ -v --tb=short

# 4. مرج
git checkout main
git merge sprint/S06-md-converter

# === بررسی سلامت ===
# بعد از هر اسپرینت:
python -m formatforge doctor
python -m pytest tests/ -v --cov=formatforge --cov-report=term-missing

# === تست E2E ===
# بعد از S06, S07, S09, S12:
python -m pytest tests/e2e/ -v
```

---

## خلاصه نهایی

```
╔══════════════════════════════════════════════════════════╗
║           FormatForge — مدل اجرایی نهایی               ║
╠══════════════════════════════════════════════════════════╣
║                                                          ║
║  📦 محصول: ابزار CLI تبدیل اسناد به MDX فارسی          ║
║  🎯 اولویت فاز ۱: LaTeX + Markdown + HTML              ║
║                                                          ║
║  📐 معماری: ۶ مرحله (Pipeline)                          ║
║     Scan → Metadata → Preflight → Convert → Test → Deploy║
║                                                          ║
║  🗓 برنامه: ۱۲ اسپرینت × ۳-۵ روز = ~۶ هفته            ║
║  💬 چت‌های LLM: ~۶۰ چت (هر کدام ~10K توکن)            ║
║  📄 فایل‌ها: ~۵۵ فایل Python + ~۵۵ فایل تست           ║
║                                                          ║
║  🔑 نکته کلیدی: System Prompt ثابت ۲K توکن              ║
║     + Context ماژول ۱.۵K + Prompt ۰.۵K = ~4K ورودی     ║
║     → فضای کافی برای ۸K+ خروجی                         ║
║                                                          ║
║  ✅ Checkpoints:                                         ║
║     S03: ماژول فارسی کامل                               ║
║     S06: اولین تبدیل‌گر (MD→MDX) — قابل استفاده        ║
║     S09: سه تبدیل‌گر اصلی — محصول MVP                  ║
║     S12: محصول کامل                                      ║
║                                                          ║
║  ⚠ قانون طلایی:                                         ║
║     «نیم‌فاصله هرگز حذف نشود»                           ║
║     شمارش ZWNJ قبل/بعد هر تبدیل = برابر                ║
║                                                          ║
╚══════════════════════════════════════════════════════════╝
```

**پرامپت و مدل اجرایی کامل شد.** آماده شروع اسپرینت S01 هستید — اولین چت: ساختار پروژه و `pyproject.toml`. 🚀

### Overlap Report

*1 overlap(s) detected:*

- **Overlap 1:** 100 chars, similarity 99%, Flagged

---

## Conversation 4
*(2 segments merged)*
*Model: claude-opus-4-6*

### Request

لطفا شروع کن. اگر ممکن است ساختن فایل‌ها و پوشه‌ها با powershell  یا معادل آن باشد که خود به خودی تر باشد. 
ممنون

### Response

# اسپرینت S01 — چت ۱: ساختار پروژه و زیرساخت

## اسکریپت PowerShell: ساخت کامل ساختار پروژه

```powershell
# ============================================================
#  S01-C1: FormatForge — ساخت ساختار پروژه
#  اجرا: .\init-project.ps1 [-ProjectRoot "C:\Projects\formatforge"]
# ============================================================

param(
    [string]$ProjectRoot = ".\formatforge"
)

$ErrorActionPreference = "Stop"
$Utf8Bom = [System.Text.UTF8Encoding]::new($true)

# --- رنگ‌ها ---
function Write-Step  { param($m) Write-Host "  📁 $m" -ForegroundColor Cyan }
function Write-File  { param($m) Write-Host "    📄 $m" -ForegroundColor Green }
function Write-Title { param($m) Write-Host "`n$m" -ForegroundColor Yellow }

# --- تابع ذخیره فایل ---
function Save-File {
    param(
        [string]$RelPath,
        [string]$Content
    )
    $fullPath = Join-Path $ProjectRoot $RelPath
    $dir = Split-Path $fullPath -Parent
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Force -Path $dir | Out-Null
    }
    [System.IO.File]::WriteAllText($fullPath, $Content, $Utf8Bom)
    Write-File $RelPath
}

# ============================================================
Write-Host @"

╔══════════════════════════════════════════════╗
║  🔧 FormatForge — S01-C1: ساخت ساختار پروژه  ║
╚══════════════════════════════════════════════╝

"@ -ForegroundColor Magenta

Write-Title "۱. ساخت ساختار پوشه‌ها..."

# --- ساختار پوشه‌ها ---
$directories = @(
    # Root
    "config"
    "docs"
    # Main package
    "formatforge"
    "formatforge/models"
    "formatforge/config"
    "formatforge/utils"
    "formatforge/cli"
    "formatforge/cli/commands"
    "formatforge/core"
    "formatforge/core/scanner"
    "formatforge/core/metadata"
    "formatforge/core/converters"
    "formatforge/core/processors"
    "formatforge/core/persian"
    "formatforge/core/quality"
    "formatforge/core/deployer"
    "formatforge/ai"
    "formatforge/reports"
    "formatforge/templates"
    "formatforge/templates/components/next"
    "formatforge/templates/components/next/styles"
    "formatforge/templates/components/astro"
    "formatforge/templates/mdx"
    # Tests
    "tests"
    "tests/test_files"
    "tests/test_files/figures"
    "tests/e2e"
)

foreach ($dir in $directories) {
    $fullDir = Join-Path $ProjectRoot $dir
    New-Item -ItemType Directory -Force -Path $fullDir | Out-Null
    Write-Step $dir
}

# ============================================================
Write-Title "۲. ساخت فایل‌های پروژه..."
# ============================================================

# ----------------------------------------------------------
# pyproject.toml
# ----------------------------------------------------------
Save-File "pyproject.toml" @'
[build-system]
requires = ["hatchling"]
build-backend = "hatchling.build"

[project]
name = "formatforge"
version = "0.1.0"
description = "ابزار جامع تبدیل اسناد چندفرمتی به MDX — با پشتیبانی کامل فارسی"
readme = "README.md"
license = { text = "MIT" }
requires-python = ">=3.11"
authors = [
    { name = "Mahdi Salem", email = "ali@example.com" },
]
keywords = ["mdx", "latex", "markdown", "converter", "persian", "rtl"]
classifiers = [
    "Development Status :: 3 - Alpha",
    "Intended Audience :: Science/Research",
    "License :: OSI Approved :: MIT License",
    "Programming Language :: Python :: 3.11",
    "Programming Language :: Python :: 3.12",
    "Topic :: Text Processing :: Markup :: LaTeX",
    "Topic :: Text Processing :: Markup :: HTML",
    "Topic :: Text Processing :: Markup :: Markdown",
    "Natural Language :: Persian",
]

dependencies = [
    # CLI
    "click>=8.1",
    "rich>=13.7",
    # Data
    "pyyaml>=6.0",
    "pydantic>=2.5",
    "pydantic-settings>=2.1",
    # File detection
    "chardet>=5.2",
    # Conversion
    "beautifulsoup4>=4.12",
    "lxml>=5.1",
    "python-docx>=1.1",
    "pymupdf>=1.23",
    "pylatexenc>=2.10",
    # Image
    "pillow>=10.2",
    # Templates
    "jinja2>=3.1",
    # Logging
    "loguru>=0.7",
]

[project.optional-dependencies]
ai = [
    "openai>=1.35",
    "anthropic>=0.30",
]
visual = [
    "playwright>=1.44",
]
dev = [
    "pytest>=8.0",
    "pytest-cov>=5.0",
    "pytest-asyncio>=0.23",
    "ruff>=0.4",
    "mypy>=1.10",
    "pre-commit>=3.7",
]
all = ["formatforge[ai,visual,dev]"]

[project.scripts]
formatforge = "formatforge.cli.__main__:cli"

[tool.hatch.build.targets.wheel]
packages = ["formatforge"]

[tool.pytest.ini_options]
testpaths = ["tests"]
addopts = "-v --tb=short"
markers = [
    "slow: marks tests as slow",
    "e2e: end-to-end tests",
    "requires_xelatex: requires XeLaTeX installed",
    "requires_pandoc: requires Pandoc installed",
    "requires_node: requires Node.js installed",
]

[tool.ruff]
target-version = "py311"
line-length = 100

[tool.ruff.lint]
select = ["E", "F", "W", "I", "N", "UP", "B", "SIM"]

[tool.mypy]
python_version = "3.11"
warn_return_any = true
warn_unused_configs = true
disallow_untyped_defs = true
'@

# ----------------------------------------------------------
# .gitignore
# ----------------------------------------------------------
Save-File ".gitignore" @'
# Python
__pycache__/
*.py[cod]
*$py.class
*.egg-info/
dist/
build/
.eggs/
*.egg

# Virtual environment
.venv/
venv/
env/

# IDE
.vscode/
.idea/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db
desktop.ini

# LaTeX
*.aux
*.log
*.synctex*
*.fls
*.fdb_latexmk
*.bbl
*.blg
*.bcf
*.run.xml
*.out
*.toc
*.lof
*.lot

# FormatForge
config/user_config.yaml
.formatforge/
*.temp/

# Test output
tests/output/
tests/temp/

# Coverage
htmlcov/
.coverage
coverage.xml
'@

# ----------------------------------------------------------
# Makefile
# ----------------------------------------------------------
Save-File "Makefile" @'
.PHONY: install dev test lint format clean doctor run

install:
	pip install -e .

dev:
	pip install -e ".[all]"

test:
	python -m pytest tests/ -v --tb=short

test-cov:
	python -m pytest tests/ -v --cov=formatforge --cov-report=term-missing

test-e2e:
	python -m pytest tests/e2e/ -v -m e2e

lint:
	ruff check formatforge/ tests/
	mypy formatforge/

format:
	ruff format formatforge/ tests/
	ruff check --fix formatforge/ tests/

clean:
	rm -rf build/ dist/ *.egg-info/ __pycache__/ .pytest_cache/ htmlcov/ .coverage
	find . -type d -name __pycache__ -exec rm -rf {} +

doctor:
	python -m formatforge doctor

run:
	python -m formatforge run
'@

# ----------------------------------------------------------
# formatforge/__init__.py
# ----------------------------------------------------------
Save-File "formatforge/__init__.py" @'
"""
FormatForge — ابزار جامع تبدیل اسناد چندفرمتی به MDX
Comprehensive multi-format document converter to MDX with full Persian/RTL support.
"""

__version__ = "0.1.0"
__author__ = "Mahdi Salem"
'@

# ----------------------------------------------------------
# formatforge/exceptions.py
# ----------------------------------------------------------
Save-File "formatforge/exceptions.py" @'
"""
استثناهای سفارشی FormatForge
Custom exceptions for FormatForge.
"""


class FormatForgeError(Exception):
    """خطای پایه FormatForge — Base error for all FormatForge exceptions."""
    pass


# ──────────────── اسکن / Scanner ────────────────

class ScanError(FormatForgeError):
    """خطا در مرحله اسکن — Error during scanning phase."""
    pass


class UnsupportedFormatError(ScanError):
    """فرمت فایل پشتیبانی نمی‌شود — File format is not supported."""

    def __init__(self, path: str, detected_format: str | None = None):
        self.path = path
        self.detected_format = detected_format
        fmt = f" (detected: {detected_format})" if detected_format else ""
        super().__init__(f"Unsupported file format: {path}{fmt}")


class EncodingError(ScanError):
    """خطای encoding فایل — File encoding error."""

    def __init__(self, path: str, encoding: str | None = None, detail: str = ""):
        self.path = path
        self.encoding = encoding
        msg = f"Encoding error in {path}"
        if encoding:
            msg += f" (detected: {encoding})"
        if detail:
            msg += f": {detail}"
        super().__init__(msg)


class FileNotFoundError_(ScanError):
    """فایل یافت نشد — File not found (custom to avoid shadowing builtins)."""

    def __init__(self, path: str, context: str = ""):
        self.path = path
        msg = f"File not found: {path}"
        if context:
            msg += f" (referenced in: {context})"
        super().__init__(msg)


class DependencyMissingError(ScanError):
    """فایل وابسته یافت نشد — A dependency file is missing."""

    def __init__(self, missing_path: str, referenced_by: str):
        self.missing_path = missing_path
        self.referenced_by = referenced_by
        super().__init__(
            f"Missing dependency: {missing_path} (referenced by: {referenced_by})"
        )


# ──────────────── متادیتا / Metadata ────────────────

class MetadataError(FormatForgeError):
    """خطا در مرحله متادیتا — Error during metadata phase."""
    pass


class MetadataValidationError(MetadataError):
    """اعتبارسنجی متادیتا ناموفق بود — Metadata validation failed."""

    def __init__(self, field: str, message: str):
        self.field = field
        super().__init__(f"Metadata validation failed for '{field}': {message}")


class SlugConflictError(MetadataError):
    """Slug تکراری — Slug already exists."""

    def __init__(self, slug: str, existing_doc: str):
        self.slug = slug
        self.existing_doc = existing_doc
        super().__init__(f"Slug '{slug}' already used by: {existing_doc}")


# ──────────────── تبدیل / Conversion ────────────────

class ConversionError(FormatForgeError):
    """خطا در مرحله تبدیل — Error during conversion phase."""

    def __init__(self, message: str, source_file: str = "", line: int | None = None):
        self.source_file = source_file
        self.line = line
        loc = ""
        if source_file:
            loc += f" in {source_file}"
        if line is not None:
            loc += f" at line {line}"
        super().__init__(f"Conversion error{loc}: {message}")


class MathConversionError(ConversionError):
    """خطا در تبدیل فرمول ریاضی — Error converting math formula."""

    def __init__(self, formula: str, message: str, **kwargs):
        self.formula = formula
        super().__init__(f"Math: {message} | Formula: {formula[:80]}...", **kwargs)


class TikZCompilationError(ConversionError):
    """خطا در کامپایل TikZ — Error compiling TikZ to SVG."""

    def __init__(self, message: str, tikz_code: str = "", **kwargs):
        self.tikz_code = tikz_code
        super().__init__(f"TikZ compilation failed: {message}", **kwargs)


class TableConversionError(ConversionError):
    """خطا در تبدیل جدول — Error converting table."""
    pass


class ImageProcessingError(ConversionError):
    """خطا در پردازش تصویر — Error processing image."""

    def __init__(self, image_path: str, message: str, **kwargs):
        self.image_path = image_path
        super().__init__(f"Image '{image_path}': {message}", **kwargs)


# ──────────────── فارسی / Persian ────────────────

class PersianProcessingError(FormatForgeError):
    """خطا در پردازش متن فارسی — Error processing Persian text."""
    pass


class ZWNJLossError(PersianProcessingError):
    """نیم‌فاصله از دست رفته — ZWNJ characters were lost during processing."""

    def __init__(self, before_count: int, after_count: int, lost_positions: list[int] | None = None):
        self.before_count = before_count
        self.after_count = after_count
        self.lost_positions = lost_positions or []
        super().__init__(
            f"ZWNJ loss detected: {before_count} → {after_count} "
            f"({before_count - after_count} lost)"
        )


# ──────────────── کیفیت / Quality ────────────────

class QualityError(FormatForgeError):
    """خطا در تست کیفیت — Error during quality testing."""
    pass


class QualityBelowThresholdError(QualityError):
    """امتیاز کیفیت زیر حد مجاز — Quality score below threshold."""

    def __init__(self, score: int, threshold: int):
        self.score = score
        self.threshold = threshold
        super().__init__(f"Quality score {score} is below threshold {threshold}")


# ──────────────── استقرار / Deployment ────────────────

class DeploymentError(FormatForgeError):
    """خطا در مرحله استقرار — Error during deployment phase."""
    pass


# ──────────────── AI ────────────────

class AIError(FormatForgeError):
    """خطا در ماژول AI — Error in AI module."""
    pass


class AIProviderNotConfiguredError(AIError):
    """تنظیمات AI انجام نشده — AI provider is not configured."""

    def __init__(self, provider: str):
        super().__init__(f"AI provider '{provider}' is not configured. Set API key in config.")


# ──────────────── پیکربندی / Config ────────────────

class ConfigError(FormatForgeError):
    """خطا در تنظیمات — Error in configuration."""
    pass


# ──────────────── ابزار خارجی / External Tools ────────────────

class ExternalToolError(FormatForgeError):
    """ابزار خارجی موجود نیست یا خطا داد — External tool error."""

    def __init__(self, tool: str, message: str, install_hint: str = ""):
        self.tool = tool
        self.install_hint = install_hint
        msg = f"External tool '{tool}': {message}"
        if install_hint:
            msg += f"\n  → Install: {install_hint}"
        super().__init__(msg)
'@

# ----------------------------------------------------------
# formatforge/cli/__init__.py
# ----------------------------------------------------------
Save-File "formatforge/cli/__init__.py" @'
"""CLI package — رابط خط فرمان FormatForge"""
'@

# ----------------------------------------------------------
# formatforge/cli/__main__.py
# ----------------------------------------------------------
Save-File "formatforge/cli/__main__.py" @'
"""
نقطه ورود CLI — FormatForge Command Line Interface.
اجرا: python -m formatforge [COMMAND]
"""

import click
from rich.console import Console
from rich.panel import Panel

from formatforge import __version__

console = Console()


class AliasedGroup(click.Group):
    """گروه Click با پشتیبانی از مخفف دستورات"""

    def get_command(self, ctx: click.Context, cmd_name: str) -> click.Command | None:
        # Exact match
        rv = click.Group.get_command(self, ctx, cmd_name)
        if rv is not None:
            return rv
        # Prefix match
        matches = [x for x in self.list_commands(ctx) if x.startswith(cmd_name)]
        if not matches:
            return None
        elif len(matches) == 1:
            return click.Group.get_command(self, ctx, matches[0])
        else:
            ctx.fail(f"Ambiguous command '{cmd_name}'. Could be: {', '.join(sorted(matches))}")
            return None


@click.group(cls=AliasedGroup, invoke_without_command=True)
@click.version_option(__version__, prog_name="FormatForge")
@click.option("--verbose", "-v", is_flag=True, help="نمایش جزئیات بیشتر")
@click.option("--config", "-c", type=click.Path(), help="مسیر فایل تنظیمات")
@click.pass_context
def cli(ctx: click.Context, verbose: bool, config: str | None) -> None:
    """🔄 FormatForge — ابزار جامع تبدیل اسناد به MDX

    تبدیل LaTeX, Markdown, HTML و سایر فرمت‌ها به MDX
    با پشتیبانی کامل از زبان فارسی و محتوای دوزبانه.
    """
    ctx.ensure_object(dict)
    ctx.obj["verbose"] = verbose
    ctx.obj["config_path"] = config

    if ctx.invoked_subcommand is None:
        _show_welcome()


def _show_welcome() -> None:
    """نمایش پیام خوش‌آمدگویی"""
    console.print(
        Panel.fit(
            f"[bold blue]FormatForge[/bold blue] v{__version__}\n\n"
            "[dim]ابزار جامع تبدیل اسناد چندفرمتی به MDX[/dim]\n"
            "[dim]با پشتیبانی کامل فارسی / RTL / نیم‌فاصله[/dim]\n\n"
            "برای راهنما: [green]formatforge --help[/green]\n"
            "بررسی سلامت: [green]formatforge doctor[/green]\n"
            "شروع سریع:  [green]formatforge run ./input/[/green]",
            title="🔄 FormatForge",
            border_style="blue",
        )
    )


# ──────────────── دستورات ────────────────

@cli.command()
@click.argument("input_path", type=click.Path(exists=True))
@click.option("--recursive", "-r", is_flag=True, help="اسکن بازگشتی پوشه‌ها")
@click.pass_context
def scan(ctx: click.Context, input_path: str, recursive: bool) -> None:
    """🔍 اسکن و شناسایی ورودی

    بررسی فایل(ها)، تشخیص فرمت، encoding، ساختار و وابستگی‌ها.
    """
    from formatforge.cli.commands.scan import run_scan
    run_scan(input_path, recursive=recursive, verbose=ctx.obj["verbose"])


@cli.command()
@click.argument("input_path", type=click.Path(exists=True))
@click.option("--output", "-o", type=click.Path(), help="مسیر خروجی")
@click.option("--format", "-f", "fmt", type=str, help="فرمت ورودی (auto-detect)")
@click.option("--quality-min", type=int, default=80, help="حداقل امتیاز کیفیت")
@click.option("--interactive/--batch", default=True, help="حالت تعاملی/دسته‌ای")
@click.option("--auto-fix/--no-auto-fix", default=False, help="اصلاح خودکار مشکلات")
@click.pass_context
def convert(
    ctx: click.Context,
    input_path: str,
    output: str | None,
    fmt: str | None,
    quality_min: int,
    interactive: bool,
    auto_fix: bool,
) -> None:
    """🔄 تبدیل فایل(ها) به MDX

    تبدیل LaTeX, Markdown, HTML و سایر فرمت‌ها به MDX.
    """
    from formatforge.cli.commands.convert import run_convert
    run_convert(
        input_path,
        output=output,
        fmt=fmt,
        quality_min=quality_min,
        interactive=interactive,
        auto_fix=auto_fix,
        verbose=ctx.obj["verbose"],
    )


@cli.command("test")
@click.argument("path", type=click.Path(exists=True))
@click.option("--recursive", "-r", is_flag=True, help="تست بازگشتی")
@click.option("--visual/--no-visual", default=False, help="تست بصری (نیاز به Playwright)")
@click.option("--report-format", type=click.Choice(["text", "json", "html"]), default="text")
@click.pass_context
def test_cmd(ctx: click.Context, path: str, recursive: bool, visual: bool, report_format: str) -> None:
    """🧪 تست کیفیت خروجی MDX

    بررسی ساختار، محتوا، ریاضی، فارسی/RTL و لینک‌ها.
    """
    from formatforge.cli.commands.test_cmd import run_test
    run_test(path, recursive=recursive, visual=visual, report_format=report_format, verbose=ctx.obj["verbose"])


@cli.command()
@click.argument("source", type=click.Path(exists=True))
@click.option("--target", "-t", type=click.Path(), required=True, help="مسیر مقصد (وب‌سایت)")
@click.option("--git-commit/--no-git-commit", default=False, help="Git commit خودکار")
@click.option("--open-editor/--no-open-editor", default=False, help="باز کردن در ویرایشگر")
@click.pass_context
def deploy(ctx: click.Context, source: str, target: str, git_commit: bool, open_editor: bool) -> None:
    """🚀 استقرار خروجی در وب‌سایت

    کپی فایل‌های MDX و asset ها به مسیر مقصد.
    """
    from formatforge.cli.commands.deploy import run_deploy
    run_deploy(source, target, git_commit=git_commit, open_editor=open_editor, verbose=ctx.obj["verbose"])


@cli.command()
@click.option("--last", "-n", type=int, default=10, help="تعداد آخرین تبدیل‌ها")
@click.option("--stats", is_flag=True, help="نمایش آمار تجمعی")
@click.option("--search", "-s", type=str, help="جستجو در تبدیل‌ها")
@click.option("--export", "export_fmt", type=click.Choice(["yaml", "json", "csv"]), help="خروجی گزارش")
@click.option("--output", "-o", type=click.Path(), help="مسیر فایل خروجی")
@click.pass_context
def report(ctx: click.Context, last: int, stats: bool, search: str | None, export_fmt: str | None, output: str | None) -> None:
    """📊 گزارش مرکزی تبدیل‌ها

    مشاهده تاریخچه، آمار و جستجو در تبدیل‌های انجام‌شده.
    """
    from formatforge.cli.commands.report import run_report
    run_report(last=last, stats=stats, search=search, export_fmt=export_fmt, output=output, verbose=ctx.obj["verbose"])


@cli.command()
@click.argument("input_path", type=click.Path(exists=True))
@click.option("--output", "-o", type=click.Path(), help="مسیر خروجی")
@click.option("--target", "-t", type=click.Path(), help="مسیر استقرار (وب‌سایت)")
@click.option("--quality-min", type=int, default=80, help="حداقل امتیاز کیفیت")
@click.option("--interactive/--batch", default=True, help="حالت تعاملی/دسته‌ای")
@click.option("--auto-fix/--no-auto-fix", default=False, help="اصلاح خودکار")
@click.pass_context
def run(
    ctx: click.Context,
    input_path: str,
    output: str | None,
    target: str | None,
    quality_min: int,
    interactive: bool,
    auto_fix: bool,
) -> None:
    """⚡ اجرای کامل خط لوله (scan → convert → test → deploy)

    دستور all-in-one: تمام مراحل را به ترتیب اجرا می‌کند.
    """
    from formatforge.cli.commands.run import run_pipeline
    run_pipeline(
        input_path,
        output=output,
        target=target,
        quality_min=quality_min,
        interactive=interactive,
        auto_fix=auto_fix,
        verbose=ctx.obj["verbose"],
    )


@cli.command()
@click.pass_context
def doctor(ctx: click.Context) -> None:
    """🩺 بررسی سلامت سیستم

    بررسی نصب بودن تمام وابستگی‌ها و ابزارهای خارجی.
    """
    from formatforge.cli.commands.doctor import run_doctor
    run_doctor(verbose=ctx.obj["verbose"])


@cli.command("init-components")
@click.option("--framework", type=click.Choice(["next", "astro", "gatsby"]), default="next")
@click.option("--output", "-o", type=click.Path(), required=True, help="مسیر خروجی کامپوننت‌ها")
@click.option("--typescript/--javascript", default=True, help="TypeScript یا JavaScript")
@click.pass_context
def init_components(ctx: click.Context, framework: str, output: str, typescript: bool) -> None:
    """🧩 تولید کامپوننت‌های MDX برای وب‌سایت

    ساخت Theorem, Definition, Proof, Admonition, MermaidDiagram و سایر کامپوننت‌ها.
    """
    from formatforge.cli.commands.init_components import run_init_components
    run_init_components(framework=framework, output=output, typescript=typescript, verbose=ctx.obj["verbose"])


# ──────────────── نقطه ورود ────────────────

def main() -> None:
    """نقطه ورود اصلی"""
    cli(obj={})


if __name__ == "__main__":
    main()
'@

# ----------------------------------------------------------
# CLI Command Stubs (اسکلت دستورات)
# ----------------------------------------------------------

$commandStubs = @{
    "formatforge/cli/commands/__init__.py" = '"""CLI commands package — دستورات خط فرمان"""'

    "formatforge/cli/commands/scan.py" = @'
"""
دستور scan — اسکن و شناسایی ورودی
Scan command: detect format, encoding, structure, dependencies.
"""

from rich.console import Console

console = Console()


def run_scan(input_path: str, *, recursive: bool = False, verbose: bool = False) -> None:
    """اجرای اسکن ورودی"""
    console.print(f"[bold blue]🔍 اسکن:[/bold blue] {input_path}")
    console.print("[dim]  (پیاده‌سازی در اسپرینت S02)[/dim]")
    # TODO: S02 — Scanner implementation
'@

    "formatforge/cli/commands/convert.py" = @'
"""
دستور convert — تبدیل فایل(ها) به MDX
Convert command: transform documents to MDX format.
"""

from rich.console import Console

console = Console()


def run_convert(
    input_path: str,
    *,
    output: str | None = None,
    fmt: str | None = None,
    quality_min: int = 80,
    interactive: bool = True,
    auto_fix: bool = False,
    verbose: bool = False,
) -> None:
    """اجرای تبدیل"""
    console.print(f"[bold blue]🔄 تبدیل:[/bold blue] {input_path}")
    console.print("[dim]  (پیاده‌سازی در اسپرینت S06-S09)[/dim]")
    # TODO: S06-S09 — Converter implementations
'@

    "formatforge/cli/commands/test_cmd.py" = @'
"""
دستور test — تست کیفیت خروجی MDX
Test command: validate MDX output quality.
"""

from rich.console import Console

console = Console()


def run_test(
    path: str,
    *,
    recursive: bool = False,
    visual: bool = False,
    report_format: str = "text",
    verbose: bool = False,
) -> None:
    """اجرای تست کیفیت"""
    console.print(f"[bold blue]🧪 تست:[/bold blue] {path}")
    console.print("[dim]  (پیاده‌سازی در اسپرینت S10)[/dim]")
    # TODO: S10 — Quality tests
'@

    "formatforge/cli/commands/deploy.py" = @'
"""
دستور deploy — استقرار خروجی در وب‌سایت
Deploy command: copy MDX files and assets to website directory.
"""

from rich.console import Console

console = Console()


def run_deploy(
    source: str,
    target: str,
    *,
    git_commit: bool = False,
    open_editor: bool = False,
    verbose: bool = False,
) -> None:
    """اجرای استقرار"""
    console.print(f"[bold blue]🚀 استقرار:[/bold blue] {source} → {target}")
    console.print("[dim]  (پیاده‌سازی در اسپرینت S11)[/dim]")
    # TODO: S11 — Deployer
'@

    "formatforge/cli/commands/report.py" = @'
"""
دستور report — گزارش مرکزی تبدیل‌ها
Report command: view conversion history and statistics.
"""

from rich.console import Console

console = Console()


def run_report(
    *,
    last: int = 10,
    stats: bool = False,
    search: str | None = None,
    export_fmt: str | None = None,
    output: str | None = None,
    verbose: bool = False,
) -> None:
    """اجرای گزارش"""
    console.print("[bold blue]📊 گزارش مرکزی[/bold blue]")
    console.print("[dim]  (پیاده‌سازی در اسپرینت S11)[/dim]")
    # TODO: S11 — Central log & reports
'@

    "formatforge/cli/commands/run.py" = @'
"""
دستور run — اجرای کامل خط لوله
Run command: execute full pipeline (scan → convert → test → deploy).
"""

from rich.console import Console

console = Console()


def run_pipeline(
    input_path: str,
    *,
    output: str | None = None,
    target: str | None = None,
    quality_min: int = 80,
    interactive: bool = True,
    auto_fix: bool = False,
    verbose: bool = False,
) -> None:
    """اجرای کامل خط لوله"""
    console.print(f"[bold blue]⚡ اجرای کامل:[/bold blue] {input_path}")
    console.print("[dim]  (پیاده‌سازی در اسپرینت S12)[/dim]")
    # TODO: S12 — Full pipeline
'@

    "formatforge/cli/commands/doctor.py" = @'
"""
دستور doctor — بررسی سلامت سیستم
Doctor command: check all dependencies and external tools.
"""

import shutil
import subprocess
import sys

from rich.console import Console
from rich.table import Table

console = Console()


def _check_command(name: str, version_flag: str = "--version") -> tuple[bool, str]:
    """بررسی وجود یک ابزار خط فرمان"""
    path = shutil.which(name)
    if not path:
        return False, "not found"
    try:
        result = subprocess.run(
            [name, version_flag],
            capture_output=True,
            text=True,
            timeout=10,
        )
        version = result.stdout.strip().split("\n")[0][:60]
        if not version:
            version = result.stderr.strip().split("\n")[0][:60]
        return True, version or "found"
    except Exception:
        return True, f"found at {path}"


def _check_python_package(name: str) -> tuple[bool, str]:
    """بررسی وجود یک پکیج Python"""
    try:
        mod = __import__(name.replace("-", "_"))
        version = getattr(mod, "__version__", "installed")
        return True, str(version)
    except ImportError:
        return False, "not installed"


def run_doctor(*, verbose: bool = False) -> None:
    """بررسی سلامت سیستم"""
    console.print("\n[bold blue]🩺 FormatForge Doctor[/bold blue]\n")

    # ── Python ──
    console.print("[bold]Python:[/bold]")
    py_ver = f"{sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}"
    py_ok = sys.version_info >= (3, 11)
    icon = "✅" if py_ok else "❌"
    console.print(f"  {icon} Python {py_ver} {'(≥3.11 ✓)' if py_ok else '(need ≥3.11)'}")

    # ── ابزارهای خارجی ──
    console.print("\n[bold]ابزارهای خارجی:[/bold]")

    tools = [
        ("pandoc",      "--version",  "winget install JohnMacFarlane.Pandoc",      True),
        ("xelatex",     "--version",  "Install TeX Live: tug.org/texlive",         True),
        ("biber",       "--version",  "Included in TeX Live",                      False),
        ("dvisvgm",     "--version",  "Included in TeX Live",                      False),
        ("node",        "--version",  "winget install OpenJS.NodeJS",              True),
        ("mmdc",        "--version",  "npm install -g @mermaid-js/mermaid-cli",    False),
        ("magick",      "--version",  "winget install ImageMagick.ImageMagick",    False),
        ("svgo",        "--version",  "npm install -g svgo",                       False),
        ("tesseract",   "--version",  "winget install UB-Mannheim.TesseractOCR",   False),
    ]

    table = Table(show_header=True, header_style="bold")
    table.add_column("وضعیت", width=4, justify="center")
    table.add_column("ابزار", width=12)
    table.add_column("نسخه / وضعیت", width=40)
    table.add_column("ضروری", width=6, justify="center")

    all_required_ok = True
    for name, flag, hint, required in tools:
        found, info = _check_command(name, flag)
        icon = "✅" if found else ("❌" if required else "⚠️")
        req_str = "بله" if required else "خیر"
        if not found:
            info = f"[red]not found[/red] → {hint}"
            if required:
                all_required_ok = False
        table.add_row(icon, name, info, req_str)

    console.print(table)

    # ── پکیج‌های Python ──
    console.print("\n[bold]پکیج‌های Python:[/bold]")

    packages = [
        ("click", True),
        ("rich", True),
        ("pydantic", True),
        ("yaml", True),
        ("bs4", True),
        ("lxml", True),
        ("docx", False),
        ("fitz", False),
        ("PIL", True),
        ("jinja2", True),
        ("chardet", True),
        ("loguru", True),
    ]

    pkg_table = Table(show_header=True, header_style="bold")
    pkg_table.add_column("وضعیت", width=4, justify="center")
    pkg_table.add_column("پکیج", width=20)
    pkg_table.add_column("نسخه", width=20)

    for name, required in packages:
        found, ver = _check_python_package(name)
        icon = "✅" if found else ("❌" if required else "⚠️")
        pkg_table.add_row(icon, name, ver if found else "[red]missing[/red]")

    console.print(pkg_table)

    # ── نتیجه ──
    console.print()
    if all_required_ok:
        console.print("[bold green]✅ تمام ابزارهای ضروری نصب هستند.[/bold green]")
    else:
        console.print("[bold red]❌ برخی ابزارهای ضروری نصب نیستند.[/bold red]")
        console.print("   لطفاً ابزارهای مشخص‌شده را نصب کنید.")

    console.print()
'@

    "formatforge/cli/commands/init_components.py" = @'
"""
دستور init-components — تولید کامپوننت‌های MDX
Init-components command: generate MDX components for website.
"""

from rich.console import Console

console = Console()


def run_init_components(
    *,
    framework: str = "next",
    output: str = "./components/mdx",
    typescript: bool = True,
    verbose: bool = False,
) -> None:
    """تولید کامپوننت‌های MDX"""
    console.print(f"[bold blue]🧩 تولید کامپوننت‌ها:[/bold blue] {framework} → {output}")
    console.print("[dim]  (پیاده‌سازی در اسپرینت S12)[/dim]")
    # TODO: S12 — Component generation
'@
}

foreach ($entry in $commandStubs.GetEnumerator()) {
    Save-File $entry.Key $entry.Value
}

# ----------------------------------------------------------
# __init__.py فایل‌های خالی برای پکیج‌ها
# ----------------------------------------------------------
$initFiles = @(
    "formatforge/models/__init__.py"
    "formatforge/config/__init__.py"
    "formatforge/utils/__init__.py"
    "formatforge/core/__init__.py"
    "formatforge/core/scanner/__init__.py"
    "formatforge/core/metadata/__init__.py"
    "formatforge/core/converters/__init__.py"
    "formatforge/core/processors/__init__.py"
    "formatforge/core/persian/__init__.py"
    "formatforge/core/quality/__init__.py"
    "formatforge/core/deployer/__init__.py"
    "formatforge/ai/__init__.py"
    "formatforge/reports/__init__.py"
    "formatforge/templates/__init__.py"
    "tests/__init__.py"
    "tests/e2e/__init__.py"
)

foreach ($f in $initFiles) {
    $pkgName = (Split-Path (Split-Path $f -Parent) -Leaf)
    Save-File $f """""$pkgName package"""""
}

# ----------------------------------------------------------
# tests/conftest.py
# ----------------------------------------------------------
Save-File "tests/conftest.py" @'
"""
Pytest configuration and shared fixtures.
تنظیمات و fixture های مشترک تست.
"""

import os
from pathlib import Path

import pytest


# ──────────── مسیرها ────────────

@pytest.fixture
def test_files_dir() -> Path:
    """مسیر پوشه فایل‌های تست"""
    return Path(__file__).parent / "test_files"


@pytest.fixture
def sample_latex(test_files_dir: Path) -> Path:
    """مسیر فایل LaTeX نمونه"""
    return test_files_dir / "sample-book.tex"


@pytest.fixture
def sample_markdown(test_files_dir: Path) -> Path:
    """مسیر فایل Markdown نمونه"""
    return test_files_dir / "sample-mermaid.md"


@pytest.fixture
def sample_html(test_files_dir: Path) -> Path:
    """مسیر فایل HTML نمونه"""
    return test_files_dir / "sample-page.html"


@pytest.fixture
def tmp_output(tmp_path: Path) -> Path:
    """پوشه خروجی موقت"""
    out = tmp_path / "output"
    out.mkdir()
    return out


# ──────────── متون نمونه ────────────

@pytest.fixture
def persian_text_with_zwnj() -> str:
    """متن فارسی با نیم‌فاصله"""
    return "این یک متن نمونه است. می‌خواهیم کتاب‌ها و مقاله‌های خود را تبدیل کنیم."


@pytest.fixture
def persian_text_without_zwnj() -> str:
    """متن فارسی بدون نیم‌فاصله (غلط)"""
    return "این یک متن نمونه است. می خواهیم کتاب ها و مقاله های خود را تبدیل کنیم."


@pytest.fixture
def latex_math_samples() -> dict[str, str]:
    """نمونه فرمول‌های ریاضی LaTeX"""
    return {
        "inline": r"$\neg(p \land q) \equiv (\neg p) \lor (\neg q)$",
        "display": r"$$\sum_{k=0}^{\infty} \frac{x^k}{k!} = e^x$$",
        "equation": (
            r"\begin{equation}" "\n"
            r"  \int_{-\infty}^{+\infty} e^{-x^2}\,dx = \sqrt{\pi}" "\n"
            r"  \label{eq:gaussian}" "\n"
            r"\end{equation}"
        ),
        "align": (
            r"\begin{align}" "\n"
            r"  \nabla \times \mathbf{E} &= -\frac{\partial \mathbf{B}}{\partial t} \label{eq:faraday} \\" "\n"
            r"  \nabla \times \mathbf{B} &= \mu_0 \mathbf{J} \label{eq:ampere}" "\n"
            r"\end{align}"
        ),
        "cases": (
            r"$$|x| = \begin{cases}" "\n"
            r"  x  & \text{اگر } x \geq 0 \\" "\n"
            r"  -x & \text{اگر } x < 0" "\n"
            r"\end{cases}$$"
        ),
        "matrix": (
            r"$$A = \begin{pmatrix}" "\n"
            r"  a_{11} & a_{12} \\" "\n"
            r"  a_{21} & a_{22}" "\n"
            r"\end{pmatrix}$$"
        ),
    }


@pytest.fixture
def mermaid_samples() -> dict[str, str]:
    """نمونه نمودارهای Mermaid"""
    return {
        "flowchart": (
            "```mermaid\n"
            "flowchart TD\n"
            '    A["شروع"] --> B{"شرط"}\n'
            '    B -->|"بله"| C["پایان"]\n'
            '    B -->|"خیر"| A\n'
            "```"
        ),
        "sequence": (
            "```mermaid\n"
            "sequenceDiagram\n"
            "    participant U as کاربر\n"
            "    participant S as سرور\n"
            "    U->>S: درخواست\n"
            "    S-->>U: پاسخ\n"
            "```"
        ),
    }
'@

# ----------------------------------------------------------
# tests/test_files/ — فایل placeholder
# ----------------------------------------------------------
Save-File "tests/test_files/README.md" @'
# فایل‌های تست

فایل‌های نمونه زیر باید در این پوشه قرار بگیرند:

- `sample-book.tex` — فایل LaTeX جامع فارسی-انگلیسی
- `sample-mermaid.md` — فایل Markdown با نمودارهای Mermaid
- `sample-page.html` — فایل HTML جامع
- `sample-page.rst` — فایل reStructuredText (اختیاری)
- `sample-page.adoc` — فایل AsciiDoc (اختیاری)

> این فایل‌ها را از چت‌های قبلی کپی کنید.
'@

# ----------------------------------------------------------
# config/default_config.yaml
# ----------------------------------------------------------
Save-File "config/default_config.yaml" @'
# ============================================================
#  FormatForge — تنظیمات پیش‌فرض
#  Default Configuration
# ============================================================

general:
  language: "fa"
  verbose: false
  color: true
  confirm_before_convert: true
  confirm_before_deploy: true
  auto_fix_warnings: false
  temp_dir: "~/.formatforge/temp/"
  log_dir: "~/.formatforge/logs/"
  report_file: "~/.formatforge/central_log.yaml"

scanner:
  max_file_size_mb: 100
  supported_formats:
    - latex
    - html
    - markdown
    - docx
    - pdf
    - rst
    - asciidoc
    - epub
    - notebook
  ignore_patterns:
    - "*.aux"
    - "*.log"
    - "*.synctex*"
    - "*.fls"
    - "*.fdb_latexmk"
    - ".git/"
    - "node_modules/"
    - "__pycache__/"

metadata:
  default_author:
    name: ""
    email: ""
  default_lang: "fa"
  default_dir: "rtl"
  slug_max_length: 60
  ai_provider: "none"
  ai_model: ""
  require_fields:
    - title
    - slug
    - date
    - lang
    - dir

conversion:
  math:
    engine: "katex"
    throw_on_error: false
  diagrams:
    tikz_to: "svg"
    tikz_dpi: 300
    mermaid_to: "component"
    mermaid_theme: "base"
  images:
    optimize: true
    convert_to_webp: true
    max_width: 1200
    quality: 85
    svg_optimize: true
  code:
    add_line_numbers: false
    default_language: "text"
  tables:
    complex_to_html: true
    simple_to_markdown: true
  persian:
    preserve_zwnj: true
    fix_arabic_yeh: true
    fix_arabic_keh: true
    fix_spacing: true
    numerals: "keep"
    quotation_marks: "guillemet"
  mdx:
    component_style: "import"
    mdx_version: 3

testing:
  run_structural: true
  run_content: true
  run_math: true
  run_persian: true
  run_links: true
  run_visual: false
  min_quality_score: 80

deployment:
  create_backup: true
  overwrite_existing: "ask"
  post_deploy:
    open_in_editor: false
    editor_command: "code"
    git_commit: false

reporting:
  format: "yaml"
  keep_history: true
  max_history: 1000
'@

# ----------------------------------------------------------
# README.md
# ----------------------------------------------------------
Save-File "README.md" @'
# 🔄 FormatForge

**ابزار جامع تبدیل اسناد چندفرمتی به MDX — با پشتیبانی کامل فارسی**

> Comprehensive multi-format document converter to MDX with full Persian/RTL support.

## ✨ ویژگی‌ها

- 📄 پشتیبانی از LaTeX, Markdown, HTML, DOCX, PDF, RST, AsciiDoc
- 🔢 تبدیل کامل فرمول‌های ریاضی (KaTeX)
- 📊 تبدیل نمودارها (TikZ → SVG, Mermaid → Component)
- 🇮🇷 پشتیبانی کامل فارسی: RTL, نیم‌فاصله (ZWNJ), تایپوگرافی
- 🌐 محتوای دوزبانه (فارسی + انگلیسی)
- 🧪 تست کیفیت خودکار
- 📦 استقرار در وب‌سایت (Next.js, Astro, Gatsby)

## 🚀 شروع سریع

```bash
# نصب
pip install -e ".[all]"

# بررسی سلامت
formatforge doctor

# تبدیل
formatforge convert ./article.tex --output ./output/

# اجرای کامل
formatforge run ./input/ --output ./output/ --target ./website/content/
```

## 📋 وضعیت توسعه

- [ ] S01: زیرساخت ✅
- [ ] S02: اسکنر
- [ ] S03: ماژول فارسی
- [ ] S04-S05: پردازشگرها
- [ ] S06: Markdown → MDX
- [ ] S07: HTML → MDX
- [ ] S08-S09: LaTeX → MDX
- [ ] S10: تست کیفیت
- [ ] S11: استقرار و گزارش
- [ ] S12: یکپارچه‌سازی

## 📜 مجوز

MIT License
'@

# ----------------------------------------------------------
# progress.yaml
# ----------------------------------------------------------
Save-File "progress.yaml" @'
# FormatForge — پیشرفت توسعه
# بعد از هر چت بروزرسانی شود

current_sprint: S01
current_chat: 1

completed:
  - sprint: S01
    chat: 1
    date: ""
    files:
      - pyproject.toml
      - formatforge/__init__.py
      - formatforge/exceptions.py
      - formatforge/cli/__main__.py
      - formatforge/cli/commands/*.py (stubs)
      - config/default_config.yaml
      - tests/conftest.py
    status: "done"
    notes: "Project structure created"

next:
  sprint: S01
  chat: 2
  target: "Pydantic models (metadata, scan_report, conversion_result)"
'@

# ============================================================
Write-Title "۳. بررسی نهایی..."
# ============================================================

# شمارش فایل‌ها
$fileCount = (Get-ChildItem $ProjectRoot -Recurse -File).Count
$dirCount  = (Get-ChildItem $ProjectRoot -Recurse -Directory).Count

# بررسی encoding
Write-Host "`n📋 بررسی encoding:" -ForegroundColor Yellow
$sampleFiles = @(
    "formatforge/__init__.py",
    "formatforge/exceptions.py",
    "formatforge/cli/__main__.py",
    "config/default_config.yaml"
)
foreach ($f in $sampleFiles) {
    $fullPath = Join-Path $ProjectRoot $f
    if (Test-Path $fullPath) {
        $bytes = [System.IO.File]::ReadAllBytes($fullPath)
        $hasBom = ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF)
        $icon = if ($hasBom) { "✅" } else { "⚠️" }
        Write-Host "  $icon $f" -ForegroundColor $(if ($hasBom) { "Green" } else { "Yellow" })
    }
}

# ============================================================
Write-Host @"

╔══════════════════════════════════════════════════════════╗
║  ✅ ساختار پروژه FormatForge ساخته شد!                  ║
╠══════════════════════════════════════════════════════════╣
║                                                          ║
║  📁 پوشه‌ها: $dirCount                                     ║
║  📄 فایل‌ها: $fileCount                                     ║
║  📍 مسیر: $ProjectRoot
║                                                          ║
║  مراحل بعدی:                                             ║
║  ─────────────────────────────────────                   ║
║  1. cd $ProjectRoot                          ║
║  2. python -m venv .venv                                ║
║  3. .venv\Scripts\Activate.ps1                          ║
║  4. pip install -e ".[dev]"                             ║
║  5. formatforge doctor                                  ║
║  6. pytest tests/ -v                                    ║
║                                                          ║
║  چت بعدی: S01-C2 (مدل‌های Pydantic)                     ║
║                                                          ║
╚══════════════════════════════════════════════════════════╝

"@ -ForegroundColor Cyan
```

---

## دستورات بعد از اجرای اسکریپت

```powershell
# ۱. اجرای اسکریپت
.\init-project.ps1 -ProjectRoot "C:\Projects\formatforge"

# ۲. ورود به پروژه
cd C:\Projects\formatforge

# ۳. ساخت محیط مجازی
python -m venv .venv
.venv\Scripts\Activate.ps1

# ۴. نصب وابستگی‌ها
pip install -e ".[dev]"

# ۵. بررسی سلامت
python -m formatforge doctor

# ۶. تست CLI
python -m formatforge --help
python -m formatforge --version

# ۷. اجرای تست‌ها (فعلاً خالی — باید پاس شوند)
pytest tests/ -v

# ۸. Git init
git init
git add .
git commit -m "feat: S01-C1 project structure and CLI skeleton"
```

---

## خروجی مورد انتظار `formatforge doctor`

```
🩺 FormatForge Doctor

Python:
  ✅ Python 3.12.4 (≥3.11 ✓)

ابزارهای خارجی:
  ┌──────┬──────────┬────────────────────────────────┬──────┐
  │ وضعیت│ ابزار    │ نسخه / وضعیت                    │ ضروری│
  ├──────┼──────────┼────────────────────────────────┼──────┤
  │  ✅  │ pandoc   │ pandoc 3.2                      │ بله  │
  │  ✅  │ xelatex  │ XeTeX 3.141592653...            │ بله  │
  │  ✅  │ biber    │ biber version 2.19              │ خیر  │
  │  ...                                                     │
  └──────┴──────────┴────────────────────────────────┴──────┘

✅ تمام ابزارهای ضروری نصب هستند.
```

---

## خروجی مورد انتظار `formatforge --help`

```
Usage: formatforge [OPTIONS] COMMAND [ARGS]...

  🔄 FormatForge — ابزار جامع تبدیل اسناد به MDX

Options:
  --version          Show the version and exit.
  -v, --verbose      نمایش جزئیات بیشتر
  -c, --config PATH  مسیر فایل تنظیمات
  --help             Show this message and exit.

Commands:
  convert          🔄 تبدیل فایل(ها) به MDX
  deploy           🚀 استقرار خروجی در وب‌سایت
  doctor           🩺 بررسی سلامت سیستم
  init-components  🧩 تولید کامپوننت‌های MDX برای وب‌سایت
  report           📊 گزارش مرکزی تبدیل‌ها
  run              ⚡ اجرای کامل خط لوله
  scan             🔍 اسکن و شناسایی ورودی
  test             🧪 تست کیفیت خروجی MDX
```

---

**S01-C1 کامل شد.** ✅

**چت بعدی (S01-C2):** مدل‌های Pydantic — `models/metadata.py`, `models/scan_report.py`, `models/conversion_result.py`

آماده‌اید ادامه دهم؟

# اسپرینت S01 — چت ۲: مدل‌های Pydantic

```powershell
# ============================================================
#  S01-C2: FormatForge — مدل‌های داده (Pydantic)
#  اجرا: .\s01-c2-models.ps1 [-ProjectRoot ".\formatforge"]
# ============================================================

param(
    [string]$ProjectRoot = ".\formatforge"
)

$ErrorActionPreference = "Stop"
$Utf8Bom = [System.Text.UTF8Encoding]::new($true)

function Save-File {
    param([string]$RelPath, [string]$Content)
    $fullPath = Join-Path $ProjectRoot $RelPath
    $dir = Split-Path $fullPath -Parent
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Force -Path $dir | Out-Null
    }
    [System.IO.File]::WriteAllText($fullPath, $Content, $Utf8Bom)
    Write-Host "  ✅ $RelPath" -ForegroundColor Green
}

Write-Host @"

╔═══════════════════════════════════════════════╗
║  📦 S01-C2: مدل‌های Pydantic                  ║
╚═══════════════════════════════════════════════╝

"@ -ForegroundColor Magenta

# ============================================================
# 1. models/enums.py — شمارشی‌ها (Enums)
# ============================================================
Save-File "formatforge/models/enums.py" @'
"""
شمارشی‌های مشترک FormatForge
Shared enumerations used across all models.
"""

from enum import Enum


class DocumentFormat(str, Enum):
    """فرمت‌های سند پشتیبانی‌شده — Supported document formats."""
    LATEX = "latex"
    MARKDOWN = "markdown"
    HTML = "html"
    DOCX = "docx"
    PDF = "pdf"
    RST = "rst"
    ASCIIDOC = "asciidoc"
    EPUB = "epub"
    NOTEBOOK = "notebook"
    UNKNOWN = "unknown"

    @classmethod
    def from_extension(cls, ext: str) -> "DocumentFormat":
        """تشخیص فرمت از پسوند فایل"""
        ext = ext.lower().lstrip(".")
        mapping = {
            "tex": cls.LATEX, "ltx": cls.LATEX, "sty": cls.LATEX, "cls": cls.LATEX,
            "md": cls.MARKDOWN, "mdx": cls.MARKDOWN, "markdown": cls.MARKDOWN,
            "html": cls.HTML, "htm": cls.HTML, "xhtml": cls.HTML,
            "docx": cls.DOCX,
            "pdf": cls.PDF,
            "rst": cls.RST, "rest": cls.RST,
            "adoc": cls.ASCIIDOC, "asciidoc": cls.ASCIIDOC, "asc": cls.ASCIIDOC,
            "epub": cls.EPUB,
            "ipynb": cls.NOTEBOOK,
        }
        return mapping.get(ext, cls.UNKNOWN)


class DocumentLanguage(str, Enum):
    """زبان سند — Document language."""
    PERSIAN = "fa"
    ENGLISH = "en"
    BILINGUAL = "fa-en"
    UNKNOWN = "unknown"


class DocumentDirection(str, Enum):
    """جهت متن — Text direction."""
    RTL = "rtl"
    LTR = "ltr"


class DocumentType(str, Enum):
    """نوع سند — Document type."""
    ARTICLE = "article"
    BOOK = "book"
    CHAPTER = "chapter"
    PROOF = "proof"
    LECTURE_NOTE = "lecture-note"
    TUTORIAL = "tutorial"
    UNKNOWN = "unknown"


class StructureType(str, Enum):
    """نوع ساختار مجموعه اسناد — Structure type of document collection."""
    SINGLE_DOC = "single_doc"
    INDEPENDENT_ARTICLES = "independent_articles"
    MULTI_CHAPTER_BOOK = "multi_chapter_book"
    RELATED_COLLECTION = "related_collection"
    UNKNOWN = "unknown"


class DocumentRole(str, Enum):
    """نقش فایل در مجموعه — Role of file within collection."""
    MAIN_ENTRY = "main_entry"
    CHAPTER = "chapter"
    APPENDIX = "appendix"
    STANDALONE = "standalone"
    BIBLIOGRAPHY = "bibliography"
    STYLE = "style"
    ASSET = "asset"
    UNKNOWN = "unknown"


class ConversionStatus(str, Enum):
    """وضعیت تبدیل — Conversion status."""
    SUCCESS = "success"
    PARTIAL = "partial"
    FAILED = "failed"
    SKIPPED = "skipped"


class IssueSeverity(str, Enum):
    """شدت مشکل — Issue severity level."""
    ERROR = "error"
    WARNING = "warning"
    INFO = "info"
    HINT = "hint"


class QualityGrade(str, Enum):
    """درجه کیفیت — Quality grade."""
    EXCELLENT = "excellent"     # 90-100
    GOOD = "good"               # 75-89
    FAIR = "fair"               # 50-74
    POOR = "poor"               # 0-49

    @classmethod
    def from_score(cls, score: int) -> "QualityGrade":
        if score >= 90:
            return cls.EXCELLENT
        elif score >= 75:
            return cls.GOOD
        elif score >= 50:
            return cls.FAIR
        else:
            return cls.POOR
'@

# ============================================================
# 2. models/metadata.py — متادیتای سند
# ============================================================
Save-File "formatforge/models/metadata.py" @'
"""
مدل متادیتای سند — Document Metadata Model.
شامل تمام اطلاعات frontmatter و SEO مورد نیاز برای MDX.
"""

from __future__ import annotations

import re
from datetime import datetime

from pydantic import BaseModel, Field, field_validator, model_validator

from formatforge.models.enums import (
    DocumentDirection,
    DocumentFormat,
    DocumentLanguage,
    DocumentType,
)

# ──────────── ثابت‌ها ────────────

ZWNJ = "\u200c"
SLUG_PATTERN = re.compile(r"^[a-z0-9]+(?:-[a-z0-9]+)*$")
SLUG_MAX_LENGTH = 60


# ──────────── مدل‌های فرعی ────────────


class AuthorInfo(BaseModel):
    """اطلاعات نویسنده — Author information."""

    name: str = Field(..., min_length=1, description="نام نویسنده (فارسی)")
    name_en: str | None = Field(None, description="نام نویسنده (انگلیسی)")
    email: str | None = Field(None, description="ایمیل")
    url: str | None = Field(None, description="وب‌سایت")
    affiliation: str | None = Field(None, description="وابستگی سازمانی")


class SeriesInfo(BaseModel):
    """اطلاعات مجموعه — Series information (for multi-chapter books)."""

    name: str = Field(..., description="نام مجموعه")
    slug: str = Field(..., description="Slug مجموعه")
    order: int = Field(..., ge=0, description="ترتیب در مجموعه")
    total: int | None = Field(None, ge=1, description="تعداد کل اجزا")


class AssetReference(BaseModel):
    """ارجاع به فایل وابسته — Asset file reference."""

    path: str = Field(..., description="مسیر فایل")
    type: str = Field(..., description="نوع فایل (image/png, image/svg, etc.)")
    alt_text: str | None = Field(None, description="متن جایگزین (برای تصاویر)")
    original_path: str | None = Field(None, description="مسیر اصلی قبل از تبدیل")


# ──────────── مدل اصلی ────────────


class DocumentMetadata(BaseModel):
    """
    متادیتای کامل یک سند — Complete document metadata.
    این مدل مستقیماً به frontmatter فایل MDX تبدیل می‌شود.

    Full metadata schema for a document. This model maps directly
    to the MDX frontmatter output.
    """

    # ─── اجباری (Required) ───
    title: str = Field(
        ...,
        min_length=1,
        max_length=200,
        description="عنوان سند (فارسی)",
    )
    slug: str = Field(
        ...,
        min_length=1,
        max_length=SLUG_MAX_LENGTH,
        description="مسیر URL (فقط a-z, 0-9, -)",
    )
    date: str = Field(
        ...,
        description="تاریخ انتشار (ISO 8601: YYYY-MM-DD)",
    )
    lang: DocumentLanguage = Field(
        DocumentLanguage.PERSIAN,
        description="زبان اصلی سند",
    )
    dir: DocumentDirection = Field(
        DocumentDirection.RTL,
        description="جهت اصلی متن",
    )

    # ─── نویسنده ───
    author: AuthorInfo | None = Field(None, description="اطلاعات نویسنده")

    # ─── عنوان انگلیسی ───
    title_en: str | None = Field(None, max_length=200, description="عنوان انگلیسی")

    # ─── دسته‌بندی ───
    type: DocumentType = Field(
        DocumentType.ARTICLE,
        description="نوع سند",
    )
    tags: list[str] = Field(default_factory=list, description="برچسب‌ها (فارسی)")
    tags_en: list[str] = Field(default_factory=list, description="برچسب‌ها (انگلیسی)")
    categories: list[str] = Field(default_factory=list, description="دسته‌بندی‌ها")
    series: SeriesInfo | None = Field(None, description="اطلاعات مجموعه")

    # ─── محتوا ───
    description: str = Field(
        "",
        max_length=500,
        description="خلاصه (فارسی، حداکثر ۵۰۰ کاراکتر)",
    )
    description_en: str | None = Field(None, max_length=500, description="خلاصه انگلیسی")
    abstract: str | None = Field(None, description="چکیده مفصل")
    keywords: list[str] = Field(default_factory=list, description="کلمات کلیدی")
    toc: bool = Field(True, description="نمایش فهرست مطالب")
    math: bool = Field(False, description="آیا شامل ریاضی است")
    mermaid: bool = Field(False, description="آیا شامل نمودار Mermaid است")
    code_highlight: bool = Field(False, description="آیا شامل کد است")

    # ─── فایل‌ها ───
    source_format: DocumentFormat = Field(
        DocumentFormat.UNKNOWN,
        description="فرمت اصلی",
    )
    source_file: str = Field("", description="نام فایل اصلی")
    assets: list[AssetReference] = Field(
        default_factory=list,
        description="فایل‌های وابسته",
    )
    featured_image: str | None = Field(None, description="تصویر شاخص")

    # ─── SEO و وب ───
    canonical: str | None = Field(None, description="URL کانونیکال")
    no_index: bool = Field(False, description="عدم ایندکس توسط موتور جستجو")
    og_image: str | None = Field(None, description="تصویر Open Graph")

    # ─── تبدیل ───
    converted_at: str | None = Field(None, description="زمان تبدیل (ISO 8601)")
    converter_version: str | None = Field(None, description="نسخه FormatForge")
    quality_score: int | None = Field(None, ge=0, le=100, description="امتیاز کیفیت")
    conversion_notes: list[str] = Field(
        default_factory=list,
        description="یادداشت‌های تبدیل",
    )

    # ─── اعتبارسنجی (Validators) ───

    @field_validator("slug")
    @classmethod
    def validate_slug(cls, v: str) -> str:
        """بررسی فرمت slug — Validate slug format (a-z, 0-9, hyphens only)."""
        v = v.strip().lower()
        if not SLUG_PATTERN.match(v):
            raise ValueError(
                f"Slug نامعتبر: '{v}'. فقط حروف کوچک لاتین، اعداد و خط‌تیره مجاز است."
            )
        return v

    @field_validator("date")
    @classmethod
    def validate_date(cls, v: str) -> str:
        """بررسی فرمت تاریخ — Validate ISO 8601 date format."""
        v = v.strip()
        try:
            datetime.fromisoformat(v)
        except ValueError:
            try:
                datetime.strptime(v, "%Y-%m-%d")
            except ValueError:
                raise ValueError(f"تاریخ نامعتبر: '{v}'. فرمت مورد نیاز: YYYY-MM-DD")
        return v

    @field_validator("title")
    @classmethod
    def validate_title(cls, v: str) -> str:
        """بررسی عنوان — Title should not be empty after stripping."""
        v = v.strip()
        if not v:
            raise ValueError("عنوان نمی‌تواند خالی باشد")
        return v

    @model_validator(mode="after")
    def set_direction_from_language(self) -> "DocumentMetadata":
        """تنظیم خودکار جهت بر اساس زبان — Auto-set direction from language."""
        if self.lang == DocumentLanguage.ENGLISH and self.dir == DocumentDirection.RTL:
            # اگر زبان انگلیسی است ولی RTL تنظیم شده، اصلاح نمی‌کنیم
            # ممکن است عمدی باشد
            pass
        return self

    # ─── متدهای کمکی ───

    def has_zwnj(self) -> bool:
        """آیا عنوان شامل نیم‌فاصله است؟"""
        return ZWNJ in self.title

    def to_frontmatter_dict(self) -> dict:
        """تبدیل به دیکشنری frontmatter — Convert to frontmatter dict for MDX."""
        data = {
            "title": self.title,
            "slug": self.slug,
            "date": self.date,
            "lang": self.lang.value,
            "dir": self.dir.value,
        }

        if self.title_en:
            data["titleEn"] = self.title_en
        if self.author:
            data["author"] = self.author.model_dump(exclude_none=True)
        if self.type != DocumentType.UNKNOWN:
            data["type"] = self.type.value
        if self.tags:
            data["tags"] = self.tags
        if self.tags_en:
            data["tagsEn"] = self.tags_en
        if self.categories:
            data["categories"] = self.categories
        if self.series:
            data["series"] = self.series.model_dump(exclude_none=True)
        if self.description:
            data["description"] = self.description
        if self.description_en:
            data["descriptionEn"] = self.description_en
        if self.math:
            data["math"] = True
        if self.mermaid:
            data["mermaid"] = True
        if self.code_highlight:
            data["codeHighlight"] = True
        if self.toc:
            data["toc"] = True
        if self.featured_image:
            data["featuredImage"] = self.featured_image
        if self.source_format != DocumentFormat.UNKNOWN:
            data["sourceFormat"] = self.source_format.value
        if self.converted_at:
            data["convertedAt"] = self.converted_at
        if self.converter_version:
            data["converterVersion"] = self.converter_version
        if self.quality_score is not None:
            data["qualityScore"] = self.quality_score

        return data

    def to_frontmatter_yaml(self) -> str:
        """تبدیل به رشته YAML frontmatter — Convert to YAML frontmatter string."""
        import yaml

        data = self.to_frontmatter_dict()
        yaml_str = yaml.dump(
            data,
            default_flow_style=False,
            allow_unicode=True,
            sort_keys=False,
            width=120,
        )
        return f"---\n{yaml_str}---\n"

    @classmethod
    def create_minimal(
        cls,
        title: str,
        slug: str,
        date: str | None = None,
    ) -> "DocumentMetadata":
        """ساخت نمونه حداقلی — Create minimal metadata instance."""
        if date is None:
            date = datetime.now().strftime("%Y-%m-%d")
        return cls(title=title, slug=slug, date=date)
'@

# ============================================================
# 3. models/scan_report.py — گزارش اسکن
# ============================================================
Save-File "formatforge/models/scan_report.py" @'
"""
مدل گزارش اسکن — Scan Report Model.
نتیجه مرحله اسکن و شناسایی ورودی.
"""

from __future__ import annotations

from datetime import datetime

from pydantic import BaseModel, Field, computed_field

from formatforge.models.enums import (
    DocumentFormat,
    DocumentLanguage,
    DocumentRole,
    IssueSeverity,
    StructureType,
)


# ──────────── مدل‌های فرعی ────────────


class EncodingInfo(BaseModel):
    """اطلاعات encoding فایل — File encoding information."""

    name: str = Field("utf-8", description="نام encoding")
    has_bom: bool = Field(False, description="آیا BOM دارد")
    confidence: float = Field(1.0, ge=0.0, le=1.0, description="ضریب اطمینان")


class ScanIssue(BaseModel):
    """مشکل شناسایی‌شده — Detected issue during scanning."""

    severity: IssueSeverity = Field(..., description="شدت مشکل")
    file: str = Field("", description="فایل مربوطه")
    line: int | None = Field(None, description="شماره خط (اختیاری)")
    message: str = Field(..., description="پیام مشکل")
    suggestion: str = Field("", description="پیشنهاد اصلاح")
    auto_fixable: bool = Field(False, description="آیا قابل اصلاح خودکار است")


class ImageReference(BaseModel):
    """ارجاع تصویر — Image reference found in document."""

    path: str = Field(..., description="مسیر تصویر")
    exists: bool = Field(True, description="آیا فایل وجود دارد")
    referenced_by: list[str] = Field(default_factory=list, description="فایل‌های ارجاع‌دهنده")


class DependencyInfo(BaseModel):
    """اطلاعات وابستگی — Dependency file information."""

    path: str = Field(..., description="مسیر فایل وابسته")
    type: str = Field(..., description="نوع وابستگی (input, include, bibliography, image)")
    exists: bool = Field(True, description="آیا وجود دارد")
    referenced_by: str = Field("", description="فایل ارجاع‌دهنده")


class ScannedDocument(BaseModel):
    """اطلاعات یک سند اسکن‌شده — Information about a scanned document."""

    id: str = Field(..., description="شناسه منحصربه‌فرد")
    path: str = Field(..., description="مسیر نسبی فایل")
    format: DocumentFormat = Field(..., description="فرمت شناسایی‌شده")
    encoding: EncodingInfo = Field(default_factory=EncodingInfo, description="اطلاعات encoding")
    language: DocumentLanguage = Field(
        DocumentLanguage.UNKNOWN,
        description="زبان شناسایی‌شده",
    )
    role: DocumentRole = Field(DocumentRole.STANDALONE, description="نقش فایل")
    parent: str | None = Field(None, description="شناسه سند والد (برای فصل‌ها)")
    size_bytes: int = Field(0, ge=0, description="حجم فایل (بایت)")
    estimated_pages: int | None = Field(None, description="تعداد تقریبی صفحات")

    # وابستگی‌ها
    dependencies: list[str] = Field(
        default_factory=list,
        description="مسیر فایل‌های include/input شده",
    )
    images_referenced: list[str] = Field(
        default_factory=list,
        description="مسیر تصاویر ارجاع‌شده",
    )

    # ویژگی‌های محتوا
    has_math: bool = Field(False, description="شامل فرمول ریاضی")
    has_code: bool = Field(False, description="شامل بلوک کد")
    has_tables: bool = Field(False, description="شامل جدول")
    has_bibliography: bool = Field(False, description="شامل کتاب‌نامه")
    has_tikz: bool = Field(False, description="شامل نمودار TikZ")
    has_mermaid: bool = Field(False, description="شامل نمودار Mermaid")

    # آمار سریع
    zwnj_count: int = Field(0, ge=0, description="تعداد نیم‌فاصله‌ها")
    word_count_approx: int = Field(0, ge=0, description="تعداد تقریبی کلمات")

    @computed_field
    @property
    def size_human(self) -> str:
        """حجم فایل به شکل خوانا"""
        if self.size_bytes < 1024:
            return f"{self.size_bytes} B"
        elif self.size_bytes < 1024 * 1024:
            return f"{self.size_bytes / 1024:.1f} KB"
        else:
            return f"{self.size_bytes / (1024 * 1024):.1f} MB"


class ScannedAsset(BaseModel):
    """اطلاعات فایل وابسته (تصویر، فونت و...) — Scanned asset file."""

    path: str = Field(..., description="مسیر نسبی")
    type: str = Field(..., description="MIME type")
    size_bytes: int = Field(0, ge=0, description="حجم (بایت)")
    referenced_by: list[str] = Field(
        default_factory=list,
        description="شناسه اسنادی که به آن ارجاع دارند",
    )


# ──────────── مدل اصلی ────────────


class ScanReport(BaseModel):
    """
    گزارش کامل اسکن — Complete scan report.
    خروجی مرحله ۱ (Stage 1) خط لوله تبدیل.
    """

    # شناسه و زمان
    scan_id: str = Field(..., description="شناسه اسکن")
    timestamp: str = Field(
        default_factory=lambda: datetime.now().isoformat(),
        description="زمان اسکن (ISO 8601)",
    )

    # ورودی
    input_path: str = Field(..., description="مسیر ورودی")
    input_type: str = Field(
        "file",
        description="نوع ورودی (file, directory, archive, url, clipboard)",
    )

    # ساختار
    structure: StructureType = Field(
        StructureType.UNKNOWN,
        description="نوع ساختار شناسایی‌شده",
    )

    # اسناد و فایل‌ها
    documents: list[ScannedDocument] = Field(
        default_factory=list,
        description="لیست اسناد شناسایی‌شده",
    )
    assets: list[ScannedAsset] = Field(
        default_factory=list,
        description="لیست فایل‌های وابسته",
    )
    all_dependencies: list[DependencyInfo] = Field(
        default_factory=list,
        description="گراف وابستگی کامل",
    )

    # مشکلات
    issues: list[ScanIssue] = Field(
        default_factory=list,
        description="مشکلات شناسایی‌شده",
    )

    # تأیید
    confirmation_required: bool = Field(True, description="آیا تأیید کاربر لازم است")

    # ─── فیلدهای محاسبه‌ای ───

    @computed_field
    @property
    def total_files(self) -> int:
        """تعداد کل فایل‌ها"""
        return len(self.documents) + len(self.assets)

    @computed_field
    @property
    def total_documents(self) -> int:
        """تعداد اسناد"""
        return len(self.documents)

    @computed_field
    @property
    def total_assets(self) -> int:
        """تعداد فایل‌های وابسته"""
        return len(self.assets)

    @computed_field
    @property
    def total_size_bytes(self) -> int:
        """حجم کل"""
        doc_size = sum(d.size_bytes for d in self.documents)
        asset_size = sum(a.size_bytes for a in self.assets)
        return doc_size + asset_size

    @computed_field
    @property
    def error_count(self) -> int:
        """تعداد خطاها"""
        return sum(1 for i in self.issues if i.severity == IssueSeverity.ERROR)

    @computed_field
    @property
    def warning_count(self) -> int:
        """تعداد هشدارها"""
        return sum(1 for i in self.issues if i.severity == IssueSeverity.WARNING)

    @computed_field
    @property
    def primary_format(self) -> DocumentFormat:
        """فرمت اصلی (شایع‌ترین)"""
        if not self.documents:
            return DocumentFormat.UNKNOWN
        formats = [d.format for d in self.documents]
        return max(set(formats), key=formats.count)

    @computed_field
    @property
    def primary_language(self) -> DocumentLanguage:
        """زبان اصلی"""
        if not self.documents:
            return DocumentLanguage.UNKNOWN
        langs = [d.language for d in self.documents if d.language != DocumentLanguage.UNKNOWN]
        if not langs:
            return DocumentLanguage.UNKNOWN
        return max(set(langs), key=langs.count)

    # ─── متدها ───

    def get_document_by_id(self, doc_id: str) -> ScannedDocument | None:
        """دریافت سند با شناسه"""
        for doc in self.documents:
            if doc.id == doc_id:
                return doc
        return None

    def get_main_document(self) -> ScannedDocument | None:
        """دریافت سند اصلی (main_entry)"""
        for doc in self.documents:
            if doc.role == DocumentRole.MAIN_ENTRY:
                return doc
        # اگر main_entry نبود، اولین standalone
        for doc in self.documents:
            if doc.role == DocumentRole.STANDALONE:
                return doc
        return self.documents[0] if self.documents else None

    def get_chapters(self) -> list[ScannedDocument]:
        """دریافت فصل‌ها (مرتب)"""
        chapters = [d for d in self.documents if d.role == DocumentRole.CHAPTER]
        return sorted(chapters, key=lambda d: d.path)

    def get_missing_dependencies(self) -> list[DependencyInfo]:
        """دریافت وابستگی‌های گمشده"""
        return [d for d in self.all_dependencies if not d.exists]

    def get_auto_fixable_issues(self) -> list[ScanIssue]:
        """دریافت مشکلات قابل اصلاح خودکار"""
        return [i for i in self.issues if i.auto_fixable]

    def has_critical_issues(self) -> bool:
        """آیا مشکل بحرانی وجود دارد"""
        return self.error_count > 0

    @classmethod
    def create(cls, scan_id: str, input_path: str, input_type: str = "file") -> "ScanReport":
        """ساخت نمونه خالی — Create empty report."""
        return cls(scan_id=scan_id, input_path=input_path, input_type=input_type)
'@

# ============================================================
# 4. models/conversion_result.py — نتیجه تبدیل
# ============================================================
Save-File "formatforge/models/conversion_result.py" @'
"""
مدل نتیجه تبدیل — Conversion Result Model.
خروجی مرحله ۳ (Stage 3) و مراحل بعدی خط لوله.
"""

from __future__ import annotations

from datetime import datetime

from pydantic import BaseModel, Field, computed_field

from formatforge.models.enums import (
    ConversionStatus,
    DocumentFormat,
    IssueSeverity,
    QualityGrade,
)
from formatforge.models.metadata import DocumentMetadata


# ──────────── مدل‌های آماری ────────────


class ElementCounts(BaseModel):
    """شمارش عناصر سند — Element counts for content comparison."""

    headings: int = Field(0, ge=0, description="تعداد عناوین")
    paragraphs: int = Field(0, ge=0, description="تعداد پاراگراف‌ها")
    math_inline: int = Field(0, ge=0, description="تعداد فرمول‌های inline")
    math_display: int = Field(0, ge=0, description="تعداد فرمول‌های display")
    images: int = Field(0, ge=0, description="تعداد تصاویر")
    tables: int = Field(0, ge=0, description="تعداد جداول")
    code_blocks: int = Field(0, ge=0, description="تعداد بلوک‌های کد")
    lists: int = Field(0, ge=0, description="تعداد لیست‌ها")
    footnotes: int = Field(0, ge=0, description="تعداد پانوشت‌ها")
    citations: int = Field(0, ge=0, description="تعداد ارجاعات")
    cross_refs: int = Field(0, ge=0, description="تعداد ارجاعات متقاطع")
    links_internal: int = Field(0, ge=0, description="تعداد لینک‌های داخلی")
    links_external: int = Field(0, ge=0, description="تعداد لینک‌های خارجی")
    admonitions: int = Field(0, ge=0, description="تعداد جعبه‌های ویژه")
    diagrams_tikz: int = Field(0, ge=0, description="تعداد نمودارهای TikZ")
    diagrams_mermaid: int = Field(0, ge=0, description="تعداد نمودارهای Mermaid")
    words_approx: int = Field(0, ge=0, description="تعداد تقریبی کلمات")
    zwnj_count: int = Field(0, ge=0, description="تعداد نیم‌فاصله‌ها")

    @computed_field
    @property
    def total_math(self) -> int:
        """مجموع فرمول‌ها"""
        return self.math_inline + self.math_display

    @computed_field
    @property
    def total_diagrams(self) -> int:
        """مجموع نمودارها"""
        return self.diagrams_tikz + self.diagrams_mermaid

    @computed_field
    @property
    def total_links(self) -> int:
        """مجموع لینک‌ها"""
        return self.links_internal + self.links_external


class ConversionStats(BaseModel):
    """آمار تبدیل — Conversion statistics."""

    source_counts: ElementCounts = Field(
        default_factory=ElementCounts,
        description="شمارش عناصر ورودی",
    )
    output_counts: ElementCounts = Field(
        default_factory=ElementCounts,
        description="شمارش عناصر خروجی",
    )
    duration_seconds: float = Field(0.0, ge=0, description="مدت تبدیل (ثانیه)")
    output_size_bytes: int = Field(0, ge=0, description="حجم خروجی MDX (بایت)")
    assets_size_bytes: int = Field(0, ge=0, description="حجم فایل‌های وابسته (بایت)")

    @computed_field
    @property
    def total_output_size(self) -> int:
        """حجم کل خروجی"""
        return self.output_size_bytes + self.assets_size_bytes

    @computed_field
    @property
    def zwnj_preserved(self) -> bool:
        """آیا نیم‌فاصله‌ها حفظ شده‌اند"""
        return self.source_counts.zwnj_count == self.output_counts.zwnj_count

    @computed_field
    @property
    def zwnj_diff(self) -> int:
        """اختلاف تعداد نیم‌فاصله"""
        return self.source_counts.zwnj_count - self.output_counts.zwnj_count

    def element_ratio(self, element: str) -> float:
        """نسبت عنصر خروجی به ورودی (1.0 = کامل)"""
        src = getattr(self.source_counts, element, 0)
        out = getattr(self.output_counts, element, 0)
        if src == 0:
            return 1.0 if out == 0 else 0.0
        return min(out / src, 1.0)


# ──────────── مشکلات تبدیل ────────────


class ConversionIssue(BaseModel):
    """مشکل شناسایی‌شده در تبدیل — Issue found during conversion."""

    severity: IssueSeverity = Field(..., description="شدت")
    stage: str = Field("conversion", description="مرحله (conversion, test, deploy)")
    source_file: str = Field("", description="فایل مبدأ")
    source_line: int | None = Field(None, description="خط مبدأ")
    message: str = Field(..., description="پیام")
    suggestion: str = Field("", description="پیشنهاد اصلاح")
    auto_fixed: bool = Field(False, description="آیا خودکار اصلاح شد")
    element_type: str = Field("", description="نوع عنصر (math, table, image, ...)")


# ──────────── فایل خروجی ────────────


class OutputFile(BaseModel):
    """اطلاعات فایل خروجی — Output file information."""

    path: str = Field(..., description="مسیر خروجی")
    type: str = Field("mdx", description="نوع: mdx, svg, png, webp, json")
    size_bytes: int = Field(0, ge=0, description="حجم (بایت)")
    is_main: bool = Field(False, description="آیا فایل MDX اصلی است")
    source_path: str | None = Field(None, description="مسیر فایل مبدأ")


# ──────────── گزارش کیفیت ────────────


class QualityReport(BaseModel):
    """گزارش تست کیفیت — Quality test report."""

    # امتیازهای جزئی (هر کدام 0-100)
    structural_score: int = Field(0, ge=0, le=100, description="امتیاز ساختاری")
    content_score: int = Field(0, ge=0, le=100, description="امتیاز محتوایی")
    math_score: int = Field(0, ge=0, le=100, description="امتیاز ریاضی")
    persian_score: int = Field(0, ge=0, le=100, description="امتیاز فارسی/RTL")
    link_score: int = Field(0, ge=0, le=100, description="امتیاز لینک‌ها")
    visual_score: int | None = Field(None, ge=0, le=100, description="امتیاز بصری (اختیاری)")

    # جزئیات
    tests_passed: int = Field(0, ge=0, description="تعداد تست‌های موفق")
    tests_failed: int = Field(0, ge=0, description="تعداد تست‌های ناموفق")
    tests_skipped: int = Field(0, ge=0, description="تعداد تست‌های نادیده‌گرفته‌شده")

    # مشکلات
    issues: list[ConversionIssue] = Field(
        default_factory=list,
        description="مشکلات کیفیتی",
    )

    @computed_field
    @property
    def total_score(self) -> int:
        """امتیاز کلی (وزنی) — Weighted total quality score."""
        # وزن‌ها: ساختاری 25%, محتوا 25%, ریاضی 20%, فارسی 20%, لینک 10%
        score = (
            self.structural_score * 0.25
            + self.content_score * 0.25
            + self.math_score * 0.20
            + self.persian_score * 0.20
            + self.link_score * 0.10
        )
        return round(score)

    @computed_field
    @property
    def grade(self) -> QualityGrade:
        """درجه کیفیت"""
        return QualityGrade.from_score(self.total_score)

    @computed_field
    @property
    def total_tests(self) -> int:
        """تعداد کل تست‌ها"""
        return self.tests_passed + self.tests_failed + self.tests_skipped

    def passes_threshold(self, threshold: int = 80) -> bool:
        """آیا از حد مجاز عبور می‌کند"""
        return self.total_score >= threshold


# ──────────── نتیجه تبدیل اصلی ────────────


class ConversionResult(BaseModel):
    """
    نتیجه کامل تبدیل یک سند — Complete conversion result for one document.
    خروجی مرحله ۳ (Stage 3).
    """

    # شناسه و وضعیت
    conversion_id: str = Field(..., description="شناسه تبدیل")
    status: ConversionStatus = Field(..., description="وضعیت تبدیل")
    timestamp: str = Field(
        default_factory=lambda: datetime.now().isoformat(),
        description="زمان تبدیل",
    )

    # ورودی
    source_path: str = Field(..., description="مسیر فایل ورودی")
    source_format: DocumentFormat = Field(..., description="فرمت ورودی")

    # خروجی
    output_files: list[OutputFile] = Field(
        default_factory=list,
        description="فایل‌های خروجی",
    )
    mdx_content: str | None = Field(
        None,
        description="محتوای MDX تولیدشده (برای تک‌فایل)",
        exclude=True,  # از سریالایز JSON/YAML مستثنی
    )

    # متادیتا
    metadata: DocumentMetadata | None = Field(None, description="متادیتای استخراج‌شده")

    # آمار
    stats: ConversionStats = Field(
        default_factory=ConversionStats,
        description="آمار تبدیل",
    )

    # کیفیت
    quality: QualityReport | None = Field(None, description="گزارش کیفیت")

    # مشکلات
    issues: list[ConversionIssue] = Field(
        default_factory=list,
        description="مشکلات تبدیل",
    )

    # ─── فیلدهای محاسبه‌ای ───

    @computed_field
    @property
    def is_success(self) -> bool:
        """آیا تبدیل موفق بود"""
        return self.status == ConversionStatus.SUCCESS

    @computed_field
    @property
    def error_count(self) -> int:
        """تعداد خطاها"""
        return sum(1 for i in self.issues if i.severity == IssueSeverity.ERROR)

    @computed_field
    @property
    def warning_count(self) -> int:
        """تعداد هشدارها"""
        return sum(1 for i in self.issues if i.severity == IssueSeverity.WARNING)

    @computed_field
    @property
    def quality_score(self) -> int:
        """امتیاز کیفیت (0-100)"""
        if self.quality:
            return self.quality.total_score
        return 0

    @computed_field
    @property
    def main_output_file(self) -> str | None:
        """مسیر فایل MDX اصلی"""
        for f in self.output_files:
            if f.is_main:
                return f.path
        return self.output_files[0].path if self.output_files else None

    # ─── متدها ───

    def add_issue(
        self,
        severity: IssueSeverity,
        message: str,
        *,
        source_file: str = "",
        source_line: int | None = None,
        suggestion: str = "",
        auto_fixed: bool = False,
        element_type: str = "",
    ) -> None:
        """اضافه کردن مشکل"""
        self.issues.append(
            ConversionIssue(
                severity=severity,
                message=message,
                source_file=source_file,
                source_line=source_line,
                suggestion=suggestion,
                auto_fixed=auto_fixed,
                element_type=element_type,
            )
        )

    def add_output_file(
        self,
        path: str,
        type: str = "mdx",
        size_bytes: int = 0,
        is_main: bool = False,
        source_path: str | None = None,
    ) -> None:
        """اضافه کردن فایل خروجی"""
        self.output_files.append(
            OutputFile(
                path=path,
                type=type,
                size_bytes=size_bytes,
                is_main=is_main,
                source_path=source_path,
            )
        )

    @classmethod
    def create_success(
        cls,
        conversion_id: str,
        source_path: str,
        source_format: DocumentFormat,
    ) -> "ConversionResult":
        """ساخت نتیجه موفق — Create successful result."""
        return cls(
            conversion_id=conversion_id,
            status=ConversionStatus.SUCCESS,
            source_path=source_path,
            source_format=source_format,
        )

    @classmethod
    def create_failure(
        cls,
        conversion_id: str,
        source_path: str,
        source_format: DocumentFormat,
        error_message: str,
    ) -> "ConversionResult":
        """ساخت نتیجه ناموفق — Create failed result."""
        result = cls(
            conversion_id=conversion_id,
            status=ConversionStatus.FAILED,
            source_path=source_path,
            source_format=source_format,
        )
        result.add_issue(IssueSeverity.ERROR, error_message)
        return result


# ──────────── نتایج دسته‌ای ────────────


class BatchConversionResult(BaseModel):
    """نتیجه تبدیل دسته‌ای — Batch conversion result for multiple documents."""

    batch_id: str = Field(..., description="شناسه دسته")
    timestamp: str = Field(
        default_factory=lambda: datetime.now().isoformat(),
        description="زمان شروع",
    )
    results: list[ConversionResult] = Field(
        default_factory=list,
        description="نتایج تک‌تک تبدیل‌ها",
    )
    total_duration_seconds: float = Field(0.0, ge=0, description="مدت کل")

    @computed_field
    @property
    def total(self) -> int:
        return len(self.results)

    @computed_field
    @property
    def success_count(self) -> int:
        return sum(1 for r in self.results if r.is_success)

    @computed_field
    @property
    def failure_count(self) -> int:
        return sum(1 for r in self.results if r.status == ConversionStatus.FAILED)

    @computed_field
    @property
    def avg_quality_score(self) -> int:
        scores = [r.quality_score for r in self.results if r.quality_score > 0]
        return round(sum(scores) / len(scores)) if scores else 0

    @computed_field
    @property
    def all_zwnj_preserved(self) -> bool:
        """آیا تمام نیم‌فاصله‌ها در تمام اسناد حفظ شده"""
        return all(r.stats.zwnj_preserved for r in self.results)
'@

# ============================================================
# 5. models/__init__.py — بازصادرات
# ============================================================
Save-File "formatforge/models/__init__.py" @'
"""
مدل‌های داده FormatForge — Data models.
تمام مدل‌های Pydantic از اینجا قابل import هستند.
"""

from formatforge.models.enums import (
    ConversionStatus,
    DocumentDirection,
    DocumentFormat,
    DocumentLanguage,
    DocumentRole,
    DocumentType,
    IssueSeverity,
    QualityGrade,
    StructureType,
)
from formatforge.models.metadata import (
    AssetReference,
    AuthorInfo,
    DocumentMetadata,
    SeriesInfo,
)
from formatforge.models.scan_report import (
    DependencyInfo,
    EncodingInfo,
    ImageReference,
    ScanIssue,
    ScanReport,
    ScannedAsset,
    ScannedDocument,
)
from formatforge.models.conversion_result import (
    BatchConversionResult,
    ConversionIssue,
    ConversionResult,
    ConversionStats,
    ElementCounts,
    OutputFile,
    QualityReport,
)

__all__ = [
    # Enums
    "ConversionStatus",
    "DocumentDirection",
    "DocumentFormat",
    "DocumentLanguage",
    "DocumentRole",
    "DocumentType",
    "IssueSeverity",
    "QualityGrade",
    "StructureType",
    # Metadata
    "AssetReference",
    "AuthorInfo",
    "DocumentMetadata",
    "SeriesInfo",
    # Scan
    "DependencyInfo",
    "EncodingInfo",
    "ImageReference",
    "ScanIssue",
    "ScanReport",
    "ScannedAsset",
    "ScannedDocument",
    # Conversion
    "BatchConversionResult",
    "ConversionIssue",
    "ConversionResult",
    "ConversionStats",
    "ElementCounts",
    "OutputFile",
    "QualityReport",
]
'@

# ============================================================
# 6. tests/test_models.py — تست‌ها
# ============================================================
Save-File "tests/test_models.py" @'
"""
تست‌های مدل‌های Pydantic — Tests for data models.
"""

import pytest
from pydantic import ValidationError

from formatforge.models import (
    AuthorInfo,
    ConversionResult,
    ConversionStats,
    DocumentDirection,
    DocumentFormat,
    DocumentLanguage,
    DocumentMetadata,
    DocumentType,
    ElementCounts,
    ConversionStatus,
    IssueSeverity,
    QualityGrade,
    QualityReport,
    ScanReport,
    ScannedDocument,
    ScanIssue,
    SeriesInfo,
    StructureType,
    BatchConversionResult,
)


# ════════════════════════════════════════════
# تست Enums
# ════════════════════════════════════════════


class TestDocumentFormat:
    """تست شمارشی فرمت‌ها"""

    def test_from_extension_latex(self):
        assert DocumentFormat.from_extension(".tex") == DocumentFormat.LATEX
        assert DocumentFormat.from_extension("tex") == DocumentFormat.LATEX
        assert DocumentFormat.from_extension(".TEX") == DocumentFormat.LATEX

    def test_from_extension_markdown(self):
        assert DocumentFormat.from_extension(".md") == DocumentFormat.MARKDOWN
        assert DocumentFormat.from_extension(".mdx") == DocumentFormat.MARKDOWN

    def test_from_extension_html(self):
        assert DocumentFormat.from_extension(".html") == DocumentFormat.HTML
        assert DocumentFormat.from_extension(".htm") == DocumentFormat.HTML

    def test_from_extension_unknown(self):
        assert DocumentFormat.from_extension(".xyz") == DocumentFormat.UNKNOWN

    def test_from_extension_all_formats(self):
        known = {
            ".tex": DocumentFormat.LATEX,
            ".md": DocumentFormat.MARKDOWN,
            ".html": DocumentFormat.HTML,
            ".docx": DocumentFormat.DOCX,
            ".pdf": DocumentFormat.PDF,
            ".rst": DocumentFormat.RST,
            ".adoc": DocumentFormat.ASCIIDOC,
            ".epub": DocumentFormat.EPUB,
            ".ipynb": DocumentFormat.NOTEBOOK,
        }
        for ext, expected in known.items():
            assert DocumentFormat.from_extension(ext) == expected, f"Failed for {ext}"


class TestQualityGrade:
    """تست درجه‌بندی کیفیت"""

    def test_excellent(self):
        assert QualityGrade.from_score(95) == QualityGrade.EXCELLENT
        assert QualityGrade.from_score(90) == QualityGrade.EXCELLENT
        assert QualityGrade.from_score(100) == QualityGrade.EXCELLENT

    def test_good(self):
        assert QualityGrade.from_score(85) == QualityGrade.GOOD
        assert QualityGrade.from_score(75) == QualityGrade.GOOD

    def test_fair(self):
        assert QualityGrade.from_score(60) == QualityGrade.FAIR
        assert QualityGrade.from_score(50) == QualityGrade.FAIR

    def test_poor(self):
        assert QualityGrade.from_score(30) == QualityGrade.POOR
        assert QualityGrade.from_score(0) == QualityGrade.POOR


# ════════════════════════════════════════════
# تست DocumentMetadata
# ════════════════════════════════════════════


class TestDocumentMetadata:
    """تست مدل متادیتا"""

    def test_create_minimal(self):
        """ساخت نمونه حداقلی"""
        meta = DocumentMetadata.create_minimal(
            title="قانون دمورگان",
            slug="de-morgans-laws",
        )
        assert meta.title == "قانون دمورگان"
        assert meta.slug == "de-morgans-laws"
        assert meta.lang == DocumentLanguage.PERSIAN
        assert meta.dir == DocumentDirection.RTL

    def test_create_full(self):
        """ساخت نمونه کامل"""
        meta = DocumentMetadata(
            title="مبانی منطق ریاضی",
            title_en="Foundations of Mathematical Logic",
            slug="foundations-math-logic",
            date="2025-07-13",
            lang=DocumentLanguage.BILINGUAL,
            dir=DocumentDirection.RTL,
            author=AuthorInfo(name="مهدی سالم", name_en="Mahdi Salem"),
            type=DocumentType.BOOK,
            tags=["منطق", "ریاضی"],
            tags_en=["logic", "mathematics"],
            description="بررسی مبانی منطق ریاضی و اثبات‌های صوری",
            math=True,
            code_highlight=True,
            source_format=DocumentFormat.LATEX,
        )
        assert meta.title_en == "Foundations of Mathematical Logic"
        assert meta.math is True
        assert meta.type == DocumentType.BOOK

    def test_slug_validation_valid(self):
        """Slug معتبر"""
        meta = DocumentMetadata.create_minimal(
            title="تست", slug="valid-slug-123"
        )
        assert meta.slug == "valid-slug-123"

    def test_slug_validation_invalid_uppercase(self):
        """Slug با حروف بزرگ → خطا"""
        with pytest.raises(ValidationError):
            DocumentMetadata.create_minimal(title="تست", slug="Invalid-Slug")

    def test_slug_validation_invalid_space(self):
        """Slug با فاصله → خطا"""
        with pytest.raises(ValidationError):
            DocumentMetadata.create_minimal(title="تست", slug="has space")

    def test_slug_validation_invalid_persian(self):
        """Slug با حروف فارسی → خطا"""
        with pytest.raises(ValidationError):
            DocumentMetadata.create_minimal(title="تست", slug="تست-slug")

    def test_date_validation_valid(self):
        """تاریخ معتبر"""
        meta = DocumentMetadata.create_minimal(
            title="تست", slug="test", date="2025-07-13"
        )
        assert meta.date == "2025-07-13"

    def test_date_validation_invalid(self):
        """تاریخ نامعتبر → خطا"""
        with pytest.raises(ValidationError):
            DocumentMetadata(
                title="تست", slug="test", date="نامعتبر"
            )

    def test_empty_title_rejected(self):
        """عنوان خالی → خطا"""
        with pytest.raises(ValidationError):
            DocumentMetadata(title="", slug="test", date="2025-01-01")

    def test_zwnj_in_title(self):
        """نیم‌فاصله در عنوان شناسایی می‌شود"""
        meta = DocumentMetadata.create_minimal(
            title="کتاب‌های منطق",  # شامل ZWNJ
            slug="logic-books",
        )
        assert meta.has_zwnj() is True

    def test_no_zwnj_in_title(self):
        """عنوان بدون نیم‌فاصله"""
        meta = DocumentMetadata.create_minimal(
            title="منطق",
            slug="logic",
        )
        assert meta.has_zwnj() is False

    def test_to_frontmatter_dict(self):
        """تبدیل به دیکشنری frontmatter"""
        meta = DocumentMetadata(
            title="تست",
            slug="test",
            date="2025-07-13",
            math=True,
            tags=["منطق"],
        )
        d = meta.to_frontmatter_dict()
        assert d["title"] == "تست"
        assert d["slug"] == "test"
        assert d["lang"] == "fa"
        assert d["dir"] == "rtl"
        assert d["math"] is True
        assert d["tags"] == ["منطق"]

    def test_to_frontmatter_yaml(self):
        """تبدیل به YAML frontmatter"""
        meta = DocumentMetadata.create_minimal(title="تست", slug="test")
        yaml_str = meta.to_frontmatter_yaml()
        assert yaml_str.startswith("---\n")
        assert yaml_str.endswith("---\n")
        assert "title:" in yaml_str
        assert "slug:" in yaml_str

    def test_series_info(self):
        """اطلاعات مجموعه"""
        meta = DocumentMetadata(
            title="فصل ۱",
            slug="ch01",
            date="2025-01-01",
            series=SeriesInfo(
                name="مبانی منطق",
                slug="logic-foundations",
                order=1,
                total=5,
            ),
        )
        assert meta.series is not None
        assert meta.series.order == 1
        assert meta.series.total == 5


# ════════════════════════════════════════════
# تست ScanReport
# ════════════════════════════════════════════


class TestScanReport:
    """تست مدل گزارش اسکن"""

    def test_create_empty(self):
        """ساخت گزارش خالی"""
        report = ScanReport.create("scan_001", "/path/to/input")
        assert report.scan_id == "scan_001"
        assert report.total_files == 0
        assert report.total_documents == 0

    def test_with_documents(self):
        """گزارش با اسناد"""
        report = ScanReport.create("scan_002", "/path", "directory")
        report.documents.append(
            ScannedDocument(
                id="doc_001",
                path="main.tex",
                format=DocumentFormat.LATEX,
                size_bytes=5000,
                has_math=True,
                zwnj_count=42,
            )
        )
        report.documents.append(
            ScannedDocument(
                id="doc_002",
                path="chapter01.tex",
                format=DocumentFormat.LATEX,
                size_bytes=12000,
            )
        )
        assert report.total_documents == 2
        assert report.primary_format == DocumentFormat.LATEX
        assert report.total_size_bytes == 17000

    def test_get_main_document(self):
        """پیدا کردن سند اصلی"""
        from formatforge.models.enums import DocumentRole

        report = ScanReport.create("scan_003", "/path")
        report.documents.append(
            ScannedDocument(
                id="doc_001", path="main.tex",
                format=DocumentFormat.LATEX,
                role=DocumentRole.MAIN_ENTRY,
            )
        )
        report.documents.append(
            ScannedDocument(
                id="doc_002", path="ch01.tex",
                format=DocumentFormat.LATEX,
                role=DocumentRole.CHAPTER,
            )
        )
        main = report.get_main_document()
        assert main is not None
        assert main.id

---
