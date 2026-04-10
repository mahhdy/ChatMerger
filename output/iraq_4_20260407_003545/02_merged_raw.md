---
source: "output\iraq_4_20260407_003545\\01_converted.json"
total_conversations: 1
total_segments_merged: 3
manual_review_needed: 0
models: [claude-opus-4-6]
generated_by: chat-merger
---

# Chat Merger Report

| Metric | Value |
|--------|-------|
| Conversations | 1 |
| Total segments merged | 3 |
| Overlaps detected | 0 |
| Blocks needing review | 0 |

---

## Conversation 1
*(3 segments merged)*
*Model: claude-opus-4-6*

### Request

Propmpt:

================================================================
  IRAQ SLIDES PROJECT — STATUS REPORT
  Last Updated: Batch 18 Complete
================================================================

PROJECT SPECS:
  - Total planned slides: 60
  - Slide dimensions: 1920×1080 SVG
  - Font: Vazirmatn (Google Fonts)
  - Theme: Dark premium (navy/gold/red)
  - Output path: D:\Code\Articles\Iraq\slides

COMPLETED SLIDES:
  ✅ 01 — slide-01-cover.svg (جلد)
  ✅ 02 — slide-02-promises-vs-reality.svg (وعده‌ها vs واقعیت)
  ✅ 03 — slide-03-wmd-lies.svg (دروغ WMD)
  ✅ 04 — slide-04-infrastructure.svg (زیرساخت قبل/بعد)
  ✅ 05 — slide-05-casualties-timeline.svg (تلفات غیرنظامی)
  ✅ 06 — slide-06-order2-army-dissolution.svg (فرمان ۲ برمر)
  ✅ 07 — slide-07-zarqawi-to-baghdadi.svg (شبکه زرقاوی→داعش)
  ✅ 08 — slide-08-muhasasa-power-chart.svg (محاصصه)
  🔲 09 — Sankey: جریان مالی فساد (\$600B)
  🔲 10 — Heatmap: سقوط اعتماد عمومی (نظرسنجی‌ها)
  🔲 11 — Radar: مقایسه‌ی ایران vs عراق (مفهوم ملت)
  🔲 12 — Timeline: تاریخ تطبیقی ایران/عراق (صفویه تا امروز)
  🔲 13 — Comparison: وفاداری ارتش (ایران vs عراق)
  🔲 14 — مذهب: انسجام vs تفرقه
  🔲 15 — نهادهای مدنی تطبیقی
  🔲 16 — Heatmap: تغییر نظرات شیعه/سنی/کرد درباره آمریکا
  🔲 17 — افکار عمومی: Pie charts (بریتانیا/آمریکا/عراق)
  🔲 18 — روند دموکراسی‌خواهی
  🔲 19–20 — سناریوهای آینده + CDI ترکیبی
  🔲 21–30 — داعش: ظهور، سقوط موصل، آزادسازی
  🔲 31–40 — بازیگران منطقه‌ای، نفوذ ایران، شبه‌نظامیان

PENDING SLIDES (next batches): 
 🔲 41–50 — توسعه‌ی انسانی (HDI, GDP, آموزش)
  🔲 51–55 — جنبش تشرین و جامعه‌ی مدنی
  🔲 56–60 — نتیجه‌گیری، درس‌ها، چشم‌انداز

CHAPTER MAPPING:
  Ch1 (کالبدشکافی تهاجم): Slides 01-05 ✅
  Ch2 (زوال امنیت): Slides 06-10 (06-08 ✅, 09-10 🔲)
  Ch3 (محاصصه): Slides 08-12 (08 ✅, 09-12 🔲)
  Ch4 (ایران vs عراق): Slides 11-15 🔲
  Ch5 (افکار عمومی): Slides 16-20 🔲
  Ch6 (داعش): Slides 21-30 🔲
  Ch7 (بازیگران): Slides 31-40 🔲
  Ch8 (توسعه): Slides 41-50 🔲
  Ch9 (تشرین): Slides 51-55 🔲
  Ch10 (نتیجه): Slides 56-60 🔲

DESIGN STANDARDS:
  - Background: linear-gradient #0a0e27 → #0d1333 → #1a0a1e
  - Accent gold: #d4af37
  - Red alert: #e74c3c
  - Green positive: #2ecc71
  - Blue info: #00b4d8 / #3b82f6
  - Orange warning: #ff9800
  - Glass panels: rgba(255,255,255,0.04) + border 0.08
  - Filter

Last feedback from privious Chat session (incomplete) 
Write-Host " IRAQ SLIDES PROJECT — STATUS REPORT v18" -ForegroundColor Yellow
Write-Host " Batch 18 Complete (Slides 39-40)" -ForegroundColor Yellow
Write-Host " COMPLETED: 40/60 slides (67%) █████████████░░░░░░░" -ForegroundColor Cyan

Last Slide:
Continue ...
```powershell
# ===== SLIDE 40: 20 Years Later — Where Is Iraq Now? =====
$slide40 = @'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 1080" dir="rtl">
<defs>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Vazirmatn:wght@100;300;400;500;700;900&amp;display=swap');
    * { font-family: 'Vazirmatn', sans-serif; }
    .bg { fill: #0a0e27; }
    .title { fill: #fff; font-size: 32px; font-weight: 900; text-anchor: middle; }
    .subtitle { fill: #d4af37; font-size: 16px; font-weight: 400; text-anchor: middle; }
    .glass { rx:14; fill:rgba(255,255,255,0.04); stroke:rgba(255,255,255,0.08); stroke-width:1; }
    .note-box { fill: rgba(212,175,55,0.06); stroke: rgba(212,175,55,0.15); stroke-width:1; rx:10; }
  </style>
  <filter id="sh"><feDropShadow dx="0" dy="3" stdDeviation="8" flood-color="#000" flood-opacity="0.4"/></filter>
</defs>

<rect class="bg" width="1920" height="1080"/>
<text x="960" y="42" class="title">۲۰ سال بعد: عراق کجاست؟ — کارنامه ۲۰۰۳–۲۰۲۳</text>
<text x="960" y="68" class="subtitle">مقایسه جامع وعده‌ها با واقعیت — آنچه قرار بود بشود و آنچه شد</text>
<line x1="150" y1="84" x2="1770" y2="84" stroke="#d4af37" stroke-width="1" opacity="0.3"/>

<!-- ===================== SCORECARD GRID: 12 INDICATORS ===================== -->
<rect x="60" y="100" width="1800" height="620" rx="14" class="glass" filter="url(#sh)"/>
<text x="960" y="130" fill="#d4af37" font-size="16" font-weight="900" text-anchor="middle">📊 کارنامه ۲۰ ساله: ۱۲ شاخص کلیدی</text>

<!-- Headers -->
<g transform="translate(80,145)">
  <rect x="0" y="0" width="280" height="25" rx="4" fill="rgba(255,255,255,0.03)"/>
  <text x="140" y="17" fill="rgba(255,255,255,0.5)" font-size="11" font-weight="700" text-anchor="middle">شاخص</text>
  <rect x="295" y="0" width="280" height="25" rx="4" fill="rgba(0,180,216,0.06)"/>
  <text x="435" y="17" fill="#00b4d8" font-size="11" font-weight="700" text-anchor="middle">وعده ۲۰۰۳</text>
  <rect x="590" y="0" width="280" height="25" rx="4" fill="rgba(231,76,60,0.06)"/>
  <text x="730" y="17" fill="#e74c3c" font-size="11" font-weight="700" text-anchor="middle">واقعیت ۲۰۲۳</text>
  <rect x="885" y="0" width="120" height="25" rx="4" fill="rgba(212,175,55,0.06)"/>
  <text x="945" y="17" fill="#d4af37" font-size="11" font-weight="700" text-anchor="middle">نمره</text>
  <!-- Second column set -->
  <rect x="1030" y="0" width="230" height="25" rx="4" fill="rgba(255,255,255,0.03)"/>
  <text x="1145" y="17" fill="rgba(255,255,255,0.5)" font-size="11" font-weight="700" text-anchor="middle">شاخص</text>
  <rect x="1275" y="0" width="230" height="25" rx="4" fill="rgba(0,180,216,0.06)"/>
  <text x="1390" y="17" fill="#00b4d8" font-size="11" font-weight="700" text-anchor="middle">وعده ۲۰۰۳</text>
  <rect x="1520" y="0" width="230" height="25" rx="4" fill="rgba(231,76,60,0.06)"/>
  <text x="1635" y="17" fill="#e74c3c" font-size="11" font-weight="700" text-anchor="middle">واقعیت ۲۰۲۳</text>
  <rect x="1765" y="0" width="80" height="25" rx="4" fill="rgba(212,175,55,0.06)"/>
  <text x="1805" y="17" fill="#d4af37" font-size="11" font-weight="700" text-anchor="middle">نمره</text>
</g>

<!-- LEFT COLUMN: 6 indicators -->
<g transform="translate(80,178)">
  <!-- 1. Democracy -->
  <rect x="0" y="0" width="930" height="42" rx="6" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="16" fill="#d4af37" font-size="11" font-weight="700">🏛️ دموکراسی</text>
  <text x="15" y="33" fill="rgba(255,255,255,0.4)" font-size="9">Freedom House</text>
  <text x="310" y="16" fill="#00b4d8" font-size="10" text-anchor="middle">دموکراسی لیبرال</text>
  <text x="310" y="33" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">الگوی ژاپن پس از ۱۹۴۵</text>
  <text x="605" y="16" fill="#e74c3c" font-size="10" text-anchor="middle">«آزاد نیست» (Not Free)</text>
  <text x="605" y="33" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">امتیاز: ۲۹/۱۰۰ (رتبه ۱۵۵)</text>
  <text x="945" y="22" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">F</text>

  <!-- 2. Security -->
  <rect x="0" y="50" width="930" height="42" rx="6" fill="rgba(255,255,255,0.015)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="66" fill="#d4af37" font-size="11" font-weight="700">🛡️ امنیت</text>
  <text x="310" y="66" fill="#00b4d8" font-size="10" text-anchor="middle">ثبات + پایان ترور</text>
  <text x="605" y="66" fill="#e74c3c" font-size="10" text-anchor="middle">سلول‌های داعش فعال</text>
  <text x="605" y="83" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">+ شبه‌نظامیان > ارتش</text>
  <text x="945" y="72" fill="#ff9800" font-size="18" font-weight="900" text-anchor="middle">D</text>

  <!-- 3. Corruption -->
  <rect x="0" y="100" width="930" height="42" rx="6" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="116" fill="#d4af37" font-size="11" font-weight="700">💰 فساد</text>
  <text x="15" y="133" fill="rgba(255,255,255,0.4)" font-size="9">Transparency Int'l</text>
  <text x="310" y="116" fill="#00b4d8" font-size="10" text-anchor="middle">حکمرانی خوب</text>
  <text x="605" y="116" fill="#e74c3c" font-size="10" text-anchor="middle">رتبه ۱۵۷/۱۸۰</text>
  <text x="605" y="133" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">$۱۵۰B+ دزدیده شده</text>
  <text x="945" y="122" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">F</text>

  <!-- 4. Economy -->
  <rect x="0" y="150" width="930" height="42" rx="6" fill="rgba(255,255,255,0.015)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="166" fill="#d4af37" font-size="11" font-weight="700">📈 اقتصاد</text>
  <text x="310" y="166" fill="#00b4d8" font-size="10" text-anchor="middle">اقتصاد متنوع</text>
  <text x="605" y="166" fill="#e74c3c" font-size="10" text-anchor="middle">۹۵% وابسته به نفت</text>
  <text x="605" y="183" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">بیکاری ۱۶%+ | جوانان ۳۶%</text>
  <text x="945" y="172" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">F</text>

  <!-- 5. Infrastructure -->
  <rect x="0" y="200" width="930" height="42" rx="6" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="216" fill="#d4af37" font-size="11" font-weight="700">⚡ زیرساخت</text>
  <text x="310" y="216" fill="#00b4d8" font-size="10" text-anchor="middle">بازسازی کامل</text>
  <text x="605" y="216" fill="#e74c3c" font-size="10" text-anchor="middle">برق: ۱۲ ساعت/روز</text>
  <text x="605" y="233" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">فاضلاب: ۸۰% بدون تصفیه</text>
  <text x="945" y="222" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">F</text>

  <!-- 6. Health -->
  <rect x="0" y="250" width="930" height="42" rx="6" fill="rgba(255,255,255,0.015)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="266" fill="#d4af37" font-size="11" font-weight="700">🏥 بهداشت</text>
  <text x="310" y="266" fill="#00b4d8" font-size="10" text-anchor="middle">سیستم نوین</text>
  <text x="605" y="266" fill="#ff9800" font-size="10" text-anchor="middle">بدتر از ۲۰۰۲</text>
  <text x="605" y="283" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">فرار پزشکان + کمبود دارو</text>
  <text x="945" y="272" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">F</text>
</g>

<!-- RIGHT COLUMN: 6 indicators -->
<g transform="translate(1110,178)">
  <!-- 7. Education -->
  <rect x="0" y="0" width="735" height="42" rx="6" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="16" fill="#d4af37" font-size="11" font-weight="700">🎓 آموزش</text>
  <text x="195" y="16" fill="#00b4d8" font-size="10" text-anchor="middle">نوسازی</text>
  <text x="440" y="16" fill="#ff9800" font-size="10" text-anchor="middle">سقوط کیفیت</text>
  <text x="440" y="33" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">۳.۵M کودک خارج مدرسه</text>
  <text x="695" y="22" fill="#ff9800" font-size="18" font-weight="900" text-anchor="middle">D</text>

  <!-- 8. Human Rights -->
  <rect x="0" y="50" width="735" height="42" rx="6" fill="rgba(255,255,255,0.015)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="66" fill="#d4af37" font-size="11" font-weight="700">⚖️ حقوق بشر</text>
  <text x="195" y="66" fill="#00b4d8" font-size="10" text-anchor="middle">آزادی</text>
  <text x="440" y="66" fill="#e74c3c" font-size="10" text-anchor="middle">ترور فعالان + سانسور</text>
  <text x="695" y="72" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">F</text>

  <!-- 9. Sovereignty -->
  <rect x="0" y="100" width="735" height="42" rx="6" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="116" fill="#d4af37" font-size="11" font-weight="700">🏴 حاکمیت ملی</text>
  <text x="195" y="116" fill="#00b4d8" font-size="10" text-anchor="middle">مستقل</text>
  <text x="440" y="116" fill="#e74c3c" font-size="10" text-anchor="middle">نفوذ ایران ۸۰%+</text>
  <text x="440" y="133" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">+ ترکیه + آمریکا</text>
  <text x="695" y="122" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">F</text>

  <!-- 10. National Unity -->
  <rect x="0" y="150" width="735" height="42" rx="6" fill="rgba(255,255,255,0.015)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="166" fill="#d4af37" font-size="11" font-weight="700">🤝 وحدت ملی</text>
  <text x="195" y="166" fill="#00b4d8" font-size="10" text-anchor="middle">ملت واحد</text>
  <text x="440" y="166" fill="#ff9800" font-size="10" text-anchor="middle">محاصصه + ۳ هویت</text>
  <text x="440" y="183" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">تشرین: نقطه امید (اما سرکوب شد)</text>
  <text x="695" y="172" fill="#ff9800" font-size="18" font-weight="900" text-anchor="middle">D</text>

  <!-- 11. WMD Threat (original justification) -->
  <rect x="0" y="200" width="735" height="42" rx="6" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="216" fill="#d4af37" font-size="11" font-weight="700">🔬 تهدید WMD</text>
  <text x="195" y="216" fill="#00b4d8" font-size="10" text-anchor="middle">حذف تهدید</text>
  <text x="440" y="216" fill="#2ecc71" font-size="10" text-anchor="middle">هرگز وجود نداشت ✓</text>
  <text x="695" y="222" fill="rgba(155,89,182,0.7)" font-size="14" font-weight="900" text-anchor="middle">N/A</text>

  <!-- 12. Regional Stability -->
  <rect x="0" y="250" width="735" height="42" rx="6" fill="rgba(255,255,255,0.015)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
  <text x="15" y="266" fill="#d4af37" font-size="11" font-weight="700">🌍 ثبات منطقه</text>
  <text x="195" y="266" fill="#00b4d8" font-size="10" text-anchor="middle">اثر دومینوی مثبت</text>
  <text x="440" y="266" fill="#e74c3c" font-size="10" text-anchor="middle">داعش + سوریه + یمن</text>
  <text x="440" y="283" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">بدترین بی‌ثباتی ۱۰۰ ساله</text>
  <text x="695" y="272" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">F</text>
</g>

<!-- OVERALL GRADE -->
<rect x="200" y="480" width="1520" height="80" rx="12" fill="rgba(231,76,60,0.1)" stroke="rgba(231,76,60,0.25)" stroke-width="2"/>
<text x="960" y="510" fill="#e74c3c" font-size="28" font-weight="900" text-anchor="middle">نمره کلی پروژه «آزادسازی عراق»: F (شکست مطلق)</text>
<text x="960" y="535" fill="rgba(255,255,255,0.5)" font-size="14" text-anchor="middle">از ۱۲ شاخص: ۸ نمره F | ۳ نمره D | ۱ N/A — هیچ شاخصی بهتر از ۲۰۰۲ نیست</text>
<text x="960" y="555" fill="rgba(255,255,255,0.4)" font-size="11" text-anchor="middle">حتی WMD (تنها توجیه رسمی) اصلاً وجود نداشت — یعنی هدف اصلی هم پوچ بود</text>

<!-- ===================== BOTTOM: HUMAN COST SUMMARY ===================== -->
<rect x="60" y="740" width="1800" height="115" rx="14" class="glass" filter="url(#sh)"/>
<text x="960" y="770" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">💔 بهای انسانی ۲۰ سال — خلاصه نهایی</text>
<g transform="translate(100,785)">
  <rect x="0" y="0" width="230" height="55" rx="8" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
  <text x="115" y="20" fill="#e74c3c" font-size="20" font-weight="900" text-anchor="middle">۳۰۰K+</text>
  <text x="115" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">غیرنظامی عراقی کشته</text>

  <rect x="248" y="0" width="230" height="55" rx="8" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.12)" stroke-width="1"/>
  <text x="363" y="20" fill="#ff9800" font-size="20" font-weight="900" text-anchor="middle">۹.۲M</text>
  <text x="363" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">آواره عراقی</text>

  <rect x="496" y="0" width="230" height="55" rx="8" fill="rgba(0,180,216,0.06)" stroke="rgba(0,180,216,0.12)" stroke-width="1"/>
  <text x="611" y="20" fill="#00b4d8" font-size="20" font-weight="900" text-anchor="middle">$۳T+</text>
  <text x="611" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">هزینه مستقیم آمریکا</text>

  <rect x="744" y="0" width="230" height="55" rx="8" fill="rgba(155,89,182,0.06)" stroke="rgba(155,89,182,0.12)" stroke-width="1"/>
  <text x="859" y="20" fill="#9b59b6" font-size="20" font-weight="900" text-anchor="middle">۴,۵۵۰</text>
  <text x="859" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">سرباز آمریکایی کشته</text>

  <rect x="992" y="0" width="230" height="55" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.12)" stroke-width="1"/>
  <text x="1107" y="20" fill="#2ecc71" font-size="20" font-weight="900" text-anchor="middle">۳۰K+</text>
  <text x="1107" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">خودکشی کهنه‌سرباز</text>

  <rect x="1240" y="0" width="230" height="55" rx="8" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.12)" stroke-width="1"/>
  <text x="1355" y="20" fill="#d4af37" font-size="20" font-weight="900" text-anchor="middle">$۱۵۰B+</text>
  <text x="1355" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">فساد عراقی</text>

  <rect x="1488" y="0" width="230" height="55" rx="8" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.15)" stroke-width="1"/>
  <text x="1603" y="20" fill="#e74c3c" font-size="20" font-weight="900" text-anchor="middle">صفر</text>
  <text x="1603" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">محاکمه مسئولان</text>
</g>

<!-- ===================== BOTTOM BAR ===================== -->
<rect x="60" y="875" width="1800" height="80" rx="10" class="note-box"/>
<text x="960" y="903" fill="#d4af37" font-size="15" font-weight="700" text-anchor="middle">📌 پس از ۲۰ سال: عراق در هیچ شاخصی بهتر از دوران صدام نیست — فقط دیکتاتور عوض شد: یک نفر → یک سیستم</text>
<text x="960" y="925" fill="rgba(255,255,255,0.5)" font-size="12" text-anchor="middle">وعده: دموکراسی، آزادی، رفاه | واقعیت: محاصصه، فساد، شبه‌نظامی، فقر، فرار مغزها</text>
<text x="960" y="945" fill="rgba(255,255,255,0.35)" font-size="11" text-anchor="middle">تنها نقطه روشن: نسل تشرین — جوانانی که می‌دانند چه نمی‌خواهند (اما هنوز نمی‌دانند چگونه)</text>

<text x="60" y="40" fill="rgba(255,255,255,0.3)" font-size="13">SLIDE 40 / 60</text>
<text x="1860" y="40" fill="rgba(255,255,255,0.3)" font-size="13" text-anchor="end">فصل ۱۰: جمع‌بندی</text>
<text x="960" y="1065" fill="rgba(255,255,255,0.2)" font-size="11" text-anchor="middle">منابع: Freedom House, Transparency Int'l, World Bank, WHO, UNHCR, Watson Institute | داده‌های ۲۰۲۳</text>
</svg>
'@
$slide40 | Out-File -FilePath "D:\Code\Articles\Iraq\slidesslide-40-twenty-years-later.svg" -Encoding utf8
Write-Host "✅ Created: slide-40-twenty-years-later.svg" -ForegroundColor Cyan
```

### Follow-up additions

**Follow-up 1:** زخدفهدعث

**Follow-up 2:** ادامه بده
آدرس ذخیره‌ی فایل را به D:\Code\Articles\Iraq\slides تغییر بده

### Response

```powershell
# ================================================================
#  IRAQ SLIDES PROJECT — BATCH 21 (Slides 51-55)
#  Chapter 9: جنبش تشرین (Tishreen Movement)
#  NEW PATH: D:\Code\Articles\Iraq\slides\
# ================================================================

Write-Host "============================================================" -ForegroundColor Yellow
Write-Host "  BATCH 21: Slides 51-55 — Tishreen Movement (Ch9)" -ForegroundColor Yellow
Write-Host "  NEW SAVE PATH: D:\Code\Articles\Iraq\slides\" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Yellow

# Ensure directory exists
$slidePath = "D:\Code\Articles\Iraq\slides"
if (-not (Test-Path $slidePath)) {
    New-Item -ItemType Directory -Path $slidePath -Force | Out-Null
    Write-Host "📁 Created directory: $slidePath" -ForegroundColor Green
}

# ===== SLIDE 51: October 2019 — Birth of Tishreen Revolution =====
$slide51 = @'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 1080" dir="rtl">
<defs>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Vazirmatn:wght@100;300;400;500;700;900&amp;display=swap');
    * { font-family: 'Vazirmatn', sans-serif; }
  </style>
  <linearGradient id="bg51" x1="0" y1="0" x2="1" y2="1">
    <stop offset="0%" stop-color="#0a0e27"/>
    <stop offset="50%" stop-color="#0d1333"/>
    <stop offset="100%" stop-color="#1a0a1e"/>
  </linearGradient>
  <filter id="sh51"><feDropShadow dx="0" dy="3" stdDeviation="8" flood-color="#000" flood-opacity="0.4"/></filter>
  <linearGradient id="fireGrad" x1="0" y1="1" x2="0" y2="0">
    <stop offset="0%" stop-color="#e74c3c"/>
    <stop offset="50%" stop-color="#ff9800"/>
    <stop offset="100%" stop-color="#f1c40f"/>
  </linearGradient>
</defs>

<rect width="1920" height="1080" fill="url(#bg51)"/>

<!-- Header -->
<text x="960" y="45" fill="#fff" font-size="32" font-weight="900" text-anchor="middle">🔥 تشرین ۲۰۱۹: عراقیان بالاخره گفتند «نُرید وطن»</text>
<text x="960" y="72" fill="#d4af37" font-size="15" font-weight="400" text-anchor="middle">بزرگ‌ترین جنبش مردمی تاریخ عراق — اولین بار: نه سنی، نه شیعه، فقط «عراقی»</text>
<line x1="150" y1="88" x2="1770" y2="88" stroke="#d4af37" stroke-width="1" opacity="0.3"/>

<!-- ====== TOP: IGNITION TIMELINE ====== -->
<rect x="60" y="105" width="1800" height="210" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh51)"/>
<text x="960" y="132" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📅 جرقه تا آتش — هفته‌های اول انقلاب تشرین</text>

<!-- Timeline axis -->
<line x1="120" y1="230" x2="1800" y2="230" stroke="rgba(255,255,255,0.1)" stroke-width="2"/>

<!-- Sep 2019: Trigger -->
<circle cx="200" cy="230" r="6" fill="#ff9800"/>
<line x1="200" y1="160" x2="200" y2="224" stroke="#ff9800" stroke-width="1.5" opacity="0.6"/>
<rect x="120" y="145" width="160" height="48" rx="6" fill="rgba(255,152,0,0.1)" stroke="rgba(255,152,0,0.15)" stroke-width="1"/>
<text x="200" y="163" fill="#ff9800" font-size="10" font-weight="700" text-anchor="middle">سپتامبر ۲۰۱۹</text>
<text x="200" y="178" fill="rgba(255,255,255,0.5)" font-size="8" text-anchor="middle">برکناری عبدالوهاب الساعدی</text>
<text x="200" y="190" fill="rgba(255,255,255,0.35)" font-size="7" text-anchor="middle">(قهرمان نبرد موصل)</text>
<text x="200" y="250" fill="rgba(255,255,255,0.35)" font-size="7" text-anchor="middle">خشم عمومی</text>

<!-- Oct 1: Start -->
<circle cx="420" cy="230" r="10" fill="#e74c3c" stroke="#fff" stroke-width="2"/>
<line x1="420" y1="148" x2="420" y2="220" stroke="#e74c3c" stroke-width="2.5" opacity="0.8"/>
<rect x="330" y="133" width="180" height="55" rx="6" fill="rgba(231,76,60,0.15)" stroke="rgba(231,76,60,0.3)" stroke-width="2"/>
<text x="420" y="152" fill="#e74c3c" font-size="12" font-weight="900" text-anchor="middle">۱ اکتبر ۲۰۱۹</text>
<text x="420" y="168" fill="rgba(255,255,255,0.7)" font-size="10" text-anchor="middle">🔥 آغاز تظاهرات بغداد</text>
<text x="420" y="183" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">شعار: «نرید وطن!»</text>
<text x="420" y="250" fill="#e74c3c" font-size="8" font-weight="700" text-anchor="middle">سرکوب خونین فوری</text>

<!-- Oct 3-6: First massacre -->
<circle cx="640" cy="230" r="8" fill="#e74c3c" stroke="#fff" stroke-width="1"/>
<line x1="640" y1="152" x2="640" y2="222" stroke="#e74c3c" stroke-width="2" opacity="0.7"/>
<rect x="555" y="137" width="170" height="52" rx="6" fill="rgba(231,76,60,0.12)" stroke="rgba(231,76,60,0.2)" stroke-width="1"/>
<text x="640" y="155" fill="#e74c3c" font-size="10" font-weight="900" text-anchor="middle">۳–۶ اکتبر</text>
<text x="640" y="170" fill="rgba(255,255,255,0.6)" font-size="9" text-anchor="middle">تیراندازی مستقیم</text>
<text x="640" y="183" fill="#e74c3c" font-size="9" font-weight="700" text-anchor="middle">۱۰۰+ کشته در ۵ روز!</text>
<text x="640" y="250" fill="rgba(255,255,255,0.35)" font-size="7" text-anchor="middle">اینترنت قطع شد</text>

<!-- Oct 25: Second wave -->
<circle cx="880" cy="230" r="10" fill="url(#fireGrad)" stroke="#fff" stroke-width="2"/>
<line x1="880" y1="140" x2="880" y2="220" stroke="#ff9800" stroke-width="2.5" opacity="0.8"/>
<rect x="790" y="125" width="180" height="58" rx="6" fill="rgba(255,152,0,0.12)" stroke="rgba(255,152,0,0.2)" stroke-width="2"/>
<text x="880" y="145" fill="#ff9800" font-size="11" font-weight="900" text-anchor="middle">۲۵ اکتبر ۲۰۱۹</text>
<text x="880" y="162" fill="rgba(255,255,255,0.7)" font-size="10" text-anchor="middle">🌊 موج دوم: ۱M+ نفر!</text>
<text x="880" y="178" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">بغداد + ۱۰ استان جنوبی</text>
<text x="880" y="250" fill="#ff9800" font-size="8" font-weight="700" text-anchor="middle">میدان تحریر = نماد</text>

<!-- Nov: Tahrir Republic -->
<circle cx="1120" cy="230" r="8" fill="#2ecc71"/>
<line x1="1120" y1="155" x2="1120" y2="222" stroke="#2ecc71" stroke-width="1.5" opacity="0.6"/>
<rect x="1035" y="140" width="170" height="50" rx="6" fill="rgba(46,204,113,0.1)" stroke="rgba(46,204,113,0.15)" stroke-width="1"/>
<text x="1120" y="158" fill="#2ecc71" font-size="10" font-weight="700" text-anchor="middle">نوامبر ۲۰۱۹</text>
<text x="1120" y="173" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">«جمهوری تحریر»</text>
<text x="1120" y="185" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">خودسازماندهی مدنی</text>
<text x="1120" y="250" fill="rgba(255,255,255,0.35)" font-size="7" text-anchor="middle">کتابخانه، بهداری، غذا</text>

<!-- Dec: PM resigns -->
<circle cx="1360" cy="230" r="7" fill="#d4af37"/>
<line x1="1360" y1="158" x2="1360" y2="223" stroke="#d4af37" stroke-width="1.5" opacity="0.6"/>
<rect x="1275" y="143" width="170" height="50" rx="6" fill="rgba(212,175,55,0.1)" stroke="rgba(212,175,55,0.15)" stroke-width="1"/>
<text x="1360" y="161" fill="#d4af37" font-size="10" font-weight="700" text-anchor="middle">دسامبر ۲۰۱۹</text>
<text x="1360" y="176" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">استعفای عبدالمهدی</text>
<text x="1360" y="188" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">اولین پیروزی!</text>
<text x="1360" y="250" fill="rgba(255,255,255,0.35)" font-size="7" text-anchor="middle">اما: جانشین = سیستمی</text>

<!-- 2020: COVID kills movement -->
<circle cx="1600" cy="230" r="7" fill="#9b59b6"/>
<line x1="1600" y1="158" x2="1600" y2="223" stroke="#9b59b6" stroke-width="1.5" opacity="0.6"/>
<rect x="1515" y="143" width="170" height="50" rx="6" fill="rgba(155,89,182,0.1)" stroke="rgba(155,89,182,0.15)" stroke-width="1"/>
<text x="1600" y="161" fill="#9b59b6" font-size="10" font-weight="700" text-anchor="middle">مارس ۲۰۲۰</text>
<text x="1600" y="176" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">کووید + سرکوب</text>
<text x="1600" y="188" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">پراکندگی تدریجی</text>
<text x="1600" y="250" fill="rgba(255,255,255,0.35)" font-size="7" text-anchor="middle">ترور فعالان ادامه دارد</text>

<!-- ====== MIDDLE LEFT: WHY TISHREEN? ====== -->
<rect x="60" y="335" width="580" height="340" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh51)"/>
<text x="350" y="365" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">❓ چرا تشرین؟ — ریشه‌های خشم</text>

<g transform="translate(80,380)">
  <rect x="0" y="0" width="540" height="38" rx="6" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
  <text x="15" y="16" fill="#e74c3c" font-size="11" font-weight="900">۱. بیکاری ۳۶% جوانان</text>
  <text x="15" y="32" fill="rgba(255,255,255,0.4)" font-size="8">فارغ‌التحصیلان بدون آینده — ۷۰% جمعیت زیر ۲۵ سال</text>

  <rect x="0" y="44" width="540" height="38" rx="6" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.1)" stroke-width="1"/>
  <text x="15" y="60" fill="#ff9800" font-size="11" font-weight="900">۲. فساد نجومی ($۱۵۰B+ دزدیده شده)</text>
  <text x="15" y="76" fill="rgba(255,255,255,0.4)" font-size="8">مردم فقیر در کشور ثروتمند — عدالت صفر</text>

  <rect x="0" y="88" width="540" height="38" rx="6" fill="rgba(0,180,216,0.06)" stroke="rgba(0,180,216,0.1)" stroke-width="1"/>
  <text x="15" y="104" fill="#00b4d8" font-size="11" font-weight="900">۳. خدمات عمومی فاجعه‌بار</text>
  <text x="15" y="120" fill="rgba(255,255,255,0.4)" font-size="8">برق ۶ ساعت | آب آلوده | بیمارستان بدون دارو</text>

  <rect x="0" y="132" width="540" height="38" rx="6" fill="rgba(155,89,182,0.06)" stroke="rgba(155,89,182,0.1)" stroke-width="1"/>
  <text x="15" y="148" fill="#9b59b6" font-size="11" font-weight="900">۴. نفوذ ایران و شبه‌نظامیان</text>
  <text x="15" y="164" fill="rgba(255,255,255,0.4)" font-size="8">احساس از دست دادن حاکمیت ملی — «عراق ما، نه ایران»</text>

  <rect x="0" y="176" width="540" height="38" rx="6" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="192" fill="#2ecc71" font-size="11" font-weight="900">۵. محاصصه و ناامیدی از اصلاح</text>
  <text x="15" y="208" fill="rgba(255,255,255,0.4)" font-size="8">۱۶ سال وعده + صفر نتیجه = دیگر بس است!</text>

  <rect x="0" y="220" width="540" height="38" rx="6" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="15" y="236" fill="#e74c3c" font-size="11" font-weight="900">۶. برکناری ساعدی = جرقه نهایی</text>
  <text x="15" y="252" fill="rgba(255,255,255,0.4)" font-size="8">قهرمان ملی برکنار → پیام: «سیستم فقط فاسدها را می‌خواهد»</text>
</g>

<!-- Key insight -->
<rect x="80" y="650" width="540" height="18" rx="3" fill="rgba(212,175,55,0.06)"/>
<text x="350" y="663" fill="#d4af37" font-size="9" font-weight="700" text-anchor="middle">💡 تشرین = انفجار ۱۶ سال خشم انباشته — نه یک رویداد، بلکه یک نسل</text>

<!-- ====== MIDDLE: WHAT MADE TISHREEN UNIQUE ====== -->
<rect x="665" y="335" width="600" height="340" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh51)"/>
<text x="965" y="365" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">⭐ چه چیزی تشرین را بی‌سابقه کرد؟</text>

<g transform="translate(690,385)">
  <rect x="0" y="0" width="550" height="50" rx="8" fill="rgba(46,204,113,0.08)" stroke="rgba(46,204,113,0.15)" stroke-width="1"/>
  <text x="275" y="20" fill="#2ecc71" font-size="13" font-weight="900" text-anchor="middle">🏳️ فراطایفه‌ای — اولین بار!</text>
  <text x="275" y="38" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">نه سنی نه شیعه — فقط «عراقی» | شکست روایت محاصصه</text>

  <rect x="0" y="58" width="550" height="50" rx="8" fill="rgba(0,180,216,0.08)" stroke="rgba(0,180,216,0.15)" stroke-width="1"/>
  <text x="275" y="78" fill="#00b4d8" font-size="13" font-weight="900" text-anchor="middle">👩 حضور گسترده زنان (۴۰%+)</text>
  <text x="275" y="96" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">بزرگ‌ترین حضور زنانه از ۱۹۵۸ — بدون حجاب اجباری</text>

  <rect x="0" y="116" width="550" height="50" rx="8" fill="rgba(255,152,0,0.08)" stroke="rgba(255,152,0,0.15)" stroke-width="1"/>
  <text x="275" y="136" fill="#ff9800" font-size="13" font-weight="900" text-anchor="middle">🚫 بدون رهبر — خودسازمان</text>
  <text x="275" y="154" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">هیچ حزب/شخصیتی هدایت نکرد = قدرت و ضعف هم‌زمان</text>

  <rect x="0" y="174" width="550" height="50" rx="8" fill="rgba(155,89,182,0.08)" stroke="rgba(155,89,182,0.15)" stroke-width="1"/>
  <text x="275" y="194" fill="#9b59b6" font-size="13" font-weight="900" text-anchor="middle">🏴 ضد همه — نه فقط ضد یک جناح</text>
  <text x="275" y="212" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">ضد ایران + ضد آمریکا + ضد محاصصه + ضد فساد = همه با هم</text>

  <rect x="0" y="232" width="550" height="50" rx="8" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.15)" stroke-width="1"/>
  <text x="275" y="252" fill="#e74c3c" font-size="13" font-weight="900" text-anchor="middle">🎨 خلاقیت هنری + فرهنگی</text>
  <text x="275" y="270" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">گرافیتی، موسیقی، شعر، تئاتر خیابانی — «انقلاب فرهنگی»</text>
</g>

<!-- ====== RIGHT: NUMBERS ====== -->
<rect x="1290" y="335" width="570" height="340" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh51)"/>
<text x="1575" y="365" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📊 تشرین در اعداد</text>

<g transform="translate(1310,380)">
  <rect x="0" y="0" width="250" height="68" rx="8" fill="rgba(231,76,60,0.1)" stroke="rgba(231,76,60,0.15)" stroke-width="1"/>
  <text x="125" y="25" fill="#e74c3c" font-size="24" font-weight="900" text-anchor="middle">۸۰۰+</text>
  <text x="125" y="45" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">شهید (کشته شده)</text>
  <text x="125" y="60" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">بیشتر با تیر مستقیم</text>

  <rect x="265" y="0" width="250" height="68" rx="8" fill="rgba(255,152,0,0.1)" stroke="rgba(255,152,0,0.15)" stroke-width="1"/>
  <text x="390" y="25" fill="#ff9800" font-size="24" font-weight="900" text-anchor="middle">۲۵,۰۰۰+</text>
  <text x="390" y="45" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">زخمی</text>
  <text x="390" y="60" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">گلوله، گاز اشک‌آور سنگین</text>

  <rect x="0" y="78" width="250" height="68" rx="8" fill="rgba(0,180,216,0.1)" stroke="rgba(0,180,216,0.15)" stroke-width="1"/>
  <text x="125" y="103" fill="#00b4d8" font-size="24" font-weight="900" text-anchor="middle">۱M+</text>
  <text x="125" y="123" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">معترض (اوج)</text>
  <text x="125" y="138" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">بغداد + ۱۱ استان</text>

  <rect x="265" y="78" width="250" height="68" rx="8" fill="rgba(155,89,182,0.1)" stroke="rgba(155,89,182,0.15)" stroke-width="1"/>
  <text x="390" y="103" fill="#9b59b6" font-size="24" font-weight="900" text-anchor="middle">۱۱</text>
  <text x="390" y="123" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">استان درگیر</text>
  <text x="390" y="138" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">همه جنوبی/شیعه‌نشین!</text>

  <rect x="0" y="156" width="250" height="68" rx="8" fill="rgba(46,204,113,0.08)" stroke="rgba(46,204,113,0.12)" stroke-width="1"/>
  <text x="125" y="181" fill="#2ecc71" font-size="24" font-weight="900" text-anchor="middle">۷۰%</text>
  <text x="125" y="201" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">زیر ۳۰ سال</text>
  <text x="125" y="216" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">نسل پس از صدام</text>

  <rect x="265" y="156" width="250" height="68" rx="8" fill="rgba(212,175,55,0.08)" stroke="rgba(212,175,55,0.12)" stroke-width="1"/>
  <text x="390" y="181" fill="#d4af37" font-size="24" font-weight="900" text-anchor="middle">۱</text>
  <text x="390" y="201" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">نخست‌وزیر ساقط شد</text>
  <text x="390" y="216" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">عبدالمهدی (دسامبر ۱۹)</text>
</g>

<rect x="1310" y="624" width="530" height="38" rx="6" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
<text x="1575" y="644" fill="#e74c3c" font-size="10" font-weight="700" text-anchor="middle">⚡ نکته تکان‌دهنده: ۸۰۰+ شهید = همه شیعه! سرکوب‌شده توسط حکومت شیعه!</text>
<text x="1575" y="658" fill="rgba(255,255,255,0.35)" font-size="8" text-anchor="middle">= شکست روایت «ما حکومت شیعیان هستیم پس شیعیان باید حمایت کنند»</text>

<!-- ====== BOTTOM: SLOGANS & IDENTITY ====== -->
<rect x="60" y="695" width="1800" height="155" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh51)"/>
<text x="960" y="725" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📣 شعارهای تشرین — هویت جنبش</text>

<g transform="translate(90,740)">
  <rect x="0" y="0" width="310" height="50" rx="8" fill="rgba(231,76,60,0.1)" stroke="rgba(231,76,60,0.2)" stroke-width="1"/>
  <text x="155" y="22" fill="#e74c3c" font-size="16" font-weight="900" text-anchor="middle">«نُرید وطن»</text>
  <text x="155" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">وطن می‌خواهیم — شعار اصلی</text>

  <rect x="325" y="0" width="310" height="50" rx="8" fill="rgba(0,180,216,0.1)" stroke="rgba(0,180,216,0.2)" stroke-width="1"/>
  <text x="480" y="22" fill="#00b4d8" font-size="14" font-weight="900" text-anchor="middle">«نازل آخذ حقّي»</text>
  <text x="480" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">می‌آیم حقم رو بگیرم</text>

  <rect x="650" y="0" width="310" height="50" rx="8" fill="rgba(155,89,182,0.1)" stroke="rgba(155,89,182,0.2)" stroke-width="1"/>
  <text x="805" y="22" fill="#9b59b6" font-size="14" font-weight="900" text-anchor="middle">«بسم الوطن — لا سنّة لا شيعة»</text>
  <text x="805" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">به نام وطن — نه سنی نه شیعه</text>

  <rect x="975" y="0" width="310" height="50" rx="8" fill="rgba(255,152,0,0.1)" stroke="rgba(255,152,0,0.2)" stroke-width="1"/>
  <text x="1130" y="22" fill="#ff9800" font-size="14" font-weight="900" text-anchor="middle">«إيران بَرّا بَرّا»</text>
  <text x="1130" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">ایران بیرون! بیرون!</text>

  <rect x="1300" y="0" width="380" height="50" rx="8" fill="rgba(46,204,113,0.1)" stroke="rgba(46,204,113,0.2)" stroke-width="1"/>
  <text x="1490" y="22" fill="#2ecc71" font-size="14" font-weight="900" text-anchor="middle">«نازل آخذ حقّي — كلّا كلّا للمحاصصة»</text>
  <text x="1490" y="40" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">نه نه به محاصصه!</text>
</g>

<rect x="90" y="800" width="1700" height="35" rx="6" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
<text x="940" y="822" fill="#d4af37" font-size="11" font-weight="700" text-anchor="middle">💡 معنای عمیق: برای اولین بار شیعیان عراقی علیه حکومت شیعه و نفوذ ایران قیام کردند — این زلزله سیاسی بود</text>

<!-- ====== BOTTOM NOTE ====== -->
<rect x="60" y="868" width="1800" height="55" rx="10" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.15)" stroke-width="1"/>
<text x="960" y="890" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📌 تشرین = لحظه‌ای که نسل جدید عراق گفت: «ما صدام را ندیدیم — اما شما از صدام بدترید»</text>
<text x="960" y="910" fill="rgba(255,255,255,0.4)" font-size="11" text-anchor="middle">۸۰۰ جوان جان دادند تا بگویند: «نرید وطن» — جهان شنید، اما کسی کاری نکرد</text>

<!-- Footer -->
<text x="60" y="42" fill="rgba(255,255,255,0.3)" font-size="13">SLIDE 51 / 60</text>
<text x="1860" y="42" fill="rgba(255,255,255,0.3)" font-size="13" text-anchor="end">فصل ۹: جنبش تشرین</text>
<text x="960" y="1065" fill="rgba(255,255,255,0.2)" font-size="11" text-anchor="middle">منابع: OHCHR Iraq, ICG, Al Jazeera, BBC Arabic, Iraqi IHCHR, Chatham House | ۲۰۱۹-۲۰۲۰</text>
</svg>
'@
$slide51 | Out-File -FilePath "$slidePath\slide-51-tishreen-birth.svg" -Encoding utf8
Write-Host "✅ Created: slide-51-tishreen-birth.svg" -ForegroundColor Cyan


# ===== SLIDE 52: Protest Map & Tahrir Square =====

$slidePath = "D:\Code\Articles\Iraq\slides"

# ===== SLIDE 52: Protest Map & Tahrir Square (COMPLETE) =====
$slide52 = @'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 1080" dir="rtl">
<defs>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Vazirmatn:wght@100;300;400;500;700;900&amp;display=swap');
    * { font-family: 'Vazirmatn', sans-serif; }
  </style>
  <linearGradient id="bg52" x1="0" y1="0" x2="1" y2="1">
    <stop offset="0%" stop-color="#0a0e27"/>
    <stop offset="50%" stop-color="#0d1333"/>
    <stop offset="100%" stop-color="#1a0a1e"/>
  </linearGradient>
  <filter id="sh52"><feDropShadow dx="0" dy="3" stdDeviation="8" flood-color="#000" flood-opacity="0.4"/></filter>
</defs>

<rect width="1920" height="1080" fill="url(#bg52)"/>

<!-- Header -->
<text x="960" y="45" fill="#fff" font-size="32" font-weight="900" text-anchor="middle">🗺️ نقشه اعتراضات تشرین و «جمهوری تحریر»</text>
<text x="960" y="72" fill="#d4af37" font-size="15" font-weight="400" text-anchor="middle">۱۱ استان شیعه‌نشین — شیعیان علیه حکومت شیعه — زلزله‌ای در روایت محاصصه</text>
<line x1="150" y1="88" x2="1770" y2="88" stroke="#d4af37" stroke-width="1" opacity="0.3"/>

<!-- ====== LEFT: PROTEST MAP ====== -->
<rect x="60" y="105" width="620" height="530" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh52)"/>
<text x="370" y="135" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">🗺️ نقشه شماتیک — شهرهای درگیر</text>

<!-- Iraq outline -->
<path d="M220,200 L330,175 L450,180 L530,215 L550,290 L560,370 L540,440 L490,500 L420,540 L350,560 L280,545 L230,500 L190,430 L175,360 L180,290 L200,240 Z" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.1)" stroke-width="1.5"/>

<!-- Kurdistan label -->
<text x="400" y="200" fill="rgba(255,255,255,0.2)" font-size="9" text-anchor="middle">کردستان (بدون اعتراض)</text>

<!-- Baghdad -->
<circle cx="370" cy="310" r="22" fill="rgba(231,76,60,0.3)" stroke="#e74c3c" stroke-width="2"/>
<circle cx="370" cy="310" r="8" fill="#e74c3c"/>
<text x="370" y="295" fill="#e74c3c" font-size="11" font-weight="900" text-anchor="middle">بغداد</text>
<text x="370" y="342" fill="rgba(255,255,255,0.5)" font-size="7" text-anchor="middle">۵۰۰K+ | تحریر</text>

<!-- Basra -->
<circle cx="490" cy="490" r="16" fill="rgba(231,76,60,0.25)" stroke="#e74c3c" stroke-width="1.5"/>
<circle cx="490" cy="490" r="5" fill="#e74c3c"/>
<text x="490" y="478" fill="#e74c3c" font-size="9" font-weight="700" text-anchor="middle">بصره</text>
<text x="490" y="512" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">۱۰۰K+</text>

<!-- Nasiriyah -->
<circle cx="420" cy="460" r="15" fill="rgba(231,76,60,0.3)" stroke="#e74c3c" stroke-width="2"/>
<circle cx="420" cy="460" r="5" fill="#e74c3c"/>
<text x="420" y="448" fill="#e74c3c" font-size="9" font-weight="900" text-anchor="middle">ناصریه 💀</text>
<text x="420" y="482" fill="rgba(255,255,255,0.5)" font-size="7" text-anchor="middle">خونین‌ترین</text>

<!-- Najaf -->
<circle cx="330" cy="390" r="12" fill="rgba(255,152,0,0.25)" stroke="#ff9800" stroke-width="1.5"/>
<text x="305" y="392" fill="#ff9800" font-size="8" font-weight="700" text-anchor="end">نجف 🔥</text>

<!-- Karbala -->
<circle cx="320" cy="355" r="11" fill="rgba(255,152,0,0.2)" stroke="#ff9800" stroke-width="1"/>
<text x="295" y="358" fill="#ff9800" font-size="8" font-weight="700" text-anchor="end">کربلا</text>

<!-- Diwaniyah -->
<circle cx="360" cy="420" r="9" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
<text x="345" y="418" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="end">دیوانیه</text>

<!-- Hilla -->
<circle cx="350" cy="345" r="9" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
<text x="335" y="348" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="end">حلّه</text>

<!-- Amarah -->
<circle cx="460" cy="420" r="9" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
<text x="460" y="438" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">عماره</text>

<!-- Kut -->
<circle cx="430" cy="365" r="8" fill="rgba(231,76,60,0.15)" stroke="#e74c3c" stroke-width="1"/>
<text x="445" y="368" fill="rgba(255,255,255,0.4)" font-size="7">کوت</text>

<!-- Samawah -->
<circle cx="380" cy="480" r="8" fill="rgba(231,76,60,0.15)" stroke="#e74c3c" stroke-width="1"/>
<text x="380" y="496" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">سماوه</text>

<!-- Legend -->
<g transform="translate(100,560)">
  <circle cx="8" cy="8" r="8" fill="rgba(231,76,60,0.3)" stroke="#e74c3c" stroke-width="1.5"/>
  <text x="22" y="12" fill="rgba(255,255,255,0.5)" font-size="8">شدید (۱۰۰K+)</text>
  <circle cx="150" cy="8" r="5" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
  <text x="162" y="12" fill="rgba(255,255,255,0.5)" font-size="8">فعال</text>
  <circle cx="240" cy="8" r="5" fill="rgba(255,152,0,0.2)" stroke="#ff9800" stroke-width="1"/>
  <text x="252" y="12" fill="rgba(255,255,255,0.5)" font-size="8">+ آتش کنسولگری</text>
</g>

<rect x="80" y="590" width="580" height="30" rx="4" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
<text x="370" y="610" fill="#e74c3c" font-size="9" font-weight="700" text-anchor="middle">⚡ همه شهرها شیعه‌نشین — شیعیان علیه حکومت شیعه + نفوذ ایران</text>

<!-- ====== MIDDLE: TAHRIR REPUBLIC ====== -->
<rect x="705" y="105" width="590" height="280" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh52)"/>
<text x="1000" y="135" fill="#2ecc71" font-size="14" font-weight="900" text-anchor="middle">🏛️ «جمهوری تحریر» — آرمان‌شهر مردمی</text>
<text x="1000" y="155" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">میدان تحریر بغداد → شهر خودمختار با خدمات کامل</text>

<g transform="translate(725,168)">
  <rect x="0" y="0" width="170" height="42" rx="6" fill="rgba(46,204,113,0.08)" stroke="rgba(46,204,113,0.12)" stroke-width="1"/>
  <text x="85" y="17" fill="#2ecc71" font-size="10" font-weight="700" text-anchor="middle">📚 کتابخانه آزاد</text>
  <text x="85" y="33" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">هزاران کتاب اهدایی</text>

  <rect x="185" y="0" width="170" height="42" rx="6" fill="rgba(0,180,216,0.08)" stroke="rgba(0,180,216,0.12)" stroke-width="1"/>
  <text x="270" y="17" fill="#00b4d8" font-size="10" font-weight="700" text-anchor="middle">🏥 بهداری صحرایی</text>
  <text x="270" y="33" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">پزشکان داوطلب</text>

  <rect x="370" y="0" width="170" height="42" rx="6" fill="rgba(255,152,0,0.08)" stroke="rgba(255,152,0,0.12)" stroke-width="1"/>
  <text x="455" y="17" fill="#ff9800" font-size="10" font-weight="700" text-anchor="middle">🍞 آشپزخانه عمومی</text>
  <text x="455" y="33" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">غذای رایگان</text>

  <rect x="0" y="48" width="170" height="42" rx="6" fill="rgba(155,89,182,0.08)" stroke="rgba(155,89,182,0.12)" stroke-width="1"/>
  <text x="85" y="65" fill="#9b59b6" font-size="10" font-weight="700" text-anchor="middle">🎨 گالری هنر</text>
  <text x="85" y="81" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">نقاشی + موسیقی</text>

  <rect x="185" y="48" width="170" height="42" rx="6" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="270" y="65" fill="#e74c3c" font-size="10" font-weight="700" text-anchor="middle">📡 رادیو تحریر</text>
  <text x="270" y="81" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">پخش زنده اخبار</text>

  <rect x="370" y="48" width="170" height="42" rx="6" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
  <text x="455" y="65" fill="#d4af37" font-size="10" font-weight="700" text-anchor="middle">🛡️ نگهبانی ۲۴h</text>
  <text x="455" y="81" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">محافظت داوطلبانه</text>

  <rect x="0" y="96" width="540" height="42" rx="6" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="270" y="113" fill="#2ecc71" font-size="10" font-weight="700" text-anchor="middle">🎓 کلاس‌های آموزشی: زبان، حقوق شهروندی، تاریخ عراق — دانشگاه خیابانی</text>
  <text x="270" y="129" fill="rgba(255,255,255,0.35)" font-size="8" text-anchor="middle">نکته: هیچ‌یک از این خدمات توسط دولت عراق ارائه نمی‌شد — مردم خودشان ساختند</text>
</g>

<rect x="725" y="340" width="545" height="30" rx="4" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
<text x="997" y="360" fill="#2ecc71" font-size="10" font-weight="700" text-anchor="middle">💡 جمهوری تحریر = اثبات: عراقیان بدون محاصصه می‌توانند ملت باشند</text>

<!-- ====== MIDDLE BOTTOM: CASUALTIES BY CITY ====== -->
<rect x="705" y="400" width="590" height="235" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh52)"/>
<text x="1000" y="430" fill="#e74c3c" font-size="14" font-weight="900" text-anchor="middle">💀 تلفات بر اساس شهر — خونین‌ترین‌ها</text>

<g transform="translate(725,445)">
  <!-- Nasiriyah -->
  <text x="0" y="15" fill="rgba(255,255,255,0.6)" font-size="10">ناصریه</text>
  <rect x="90" y="2" width="470" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="90" y="2" width="280" height="20" rx="3" fill="rgba(231,76,60,0.45)"/>
  <text x="385" y="17" fill="#e74c3c" font-size="10" font-weight="900">۱۰۰+ کشته</text>
  <text x="470" y="17" fill="rgba(255,255,255,0.3)" font-size="8">خونین‌ترین!</text>

  <!-- Baghdad -->
  <text x="0" y="40" fill="rgba(255,255,255,0.6)" font-size="10">بغداد</text>
  <rect x="90" y="27" width="470" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="90" y="27" width="250" height="20" rx="3" fill="rgba(231,76,60,0.35)"/>
  <text x="355" y="42" fill="#e74c3c" font-size="10" font-weight="700">≈۲۵۰ کشته</text>

  <!-- Karbala -->
  <text x="0" y="65" fill="rgba(255,255,255,0.6)" font-size="10">کربلا</text>
  <rect x="90" y="52" width="470" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="90" y="52" width="110" height="20" rx="3" fill="rgba(255,152,0,0.35)"/>
  <text x="215" y="67" fill="#ff9800" font-size="10" font-weight="700">≈۶۰ کشته</text>

  <!-- Basra -->
  <text x="0" y="90" fill="rgba(255,255,255,0.6)" font-size="10">بصره</text>
  <rect x="90" y="77" width="470" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="90" y="77" width="90" height="20" rx="3" fill="rgba(255,152,0,0.3)"/>
  <text x="195" y="92" fill="#ff9800" font-size="10" font-weight="700">≈۵۰ کشته</text>

  <!-- Najaf -->
  <text x="0" y="115" fill="rgba(255,255,255,0.6)" font-size="10">نجف</text>
  <rect x="90" y="102" width="470" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="90" y="102" width="70" height="20" rx="3" fill="rgba(0,180,216,0.3)"/>
  <text x="175" y="117" fill="#00b4d8" font-size="10" font-weight="700">≈۴۰ کشته</text>

  <!-- Others -->
  <text x="0" y="140" fill="rgba(255,255,255,0.6)" font-size="10">سایر شهرها</text>
  <rect x="90" y="127" width="470" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="90" y="127" width="180" height="20" rx="3" fill="rgba(155,89,182,0.25)"/>
  <text x="285" y="142" fill="#9b59b6" font-size="10" font-weight="700">≈۳۰۰ کشته</text>
</g>

<rect x="725" y="610" width="545" height="18" rx="3" fill="rgba(231,76,60,0.06)"/>
<text x="997" y="623" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="middle">مجموع: ≈۸۰۰ کشته + ۲۵,۰۰۰ زخمی — بیشتر با گلوله جنگی و گاز اشک‌آور سنگین</text>

<!-- ====== RIGHT: INTERNET & MEDIA ====== -->
<rect x="1320" y="105" width="540" height="530" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh52)"/>
<text x="1590" y="135" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📱 جنگ دیجیتال: سانسور vs مقاومت</text>

<!-- Internet shutdowns -->
<text x="1340" y="162" fill="#e74c3c" font-size="12" font-weight="900">🚫 قطع اینترنت — سلاح دولت</text>

<g transform="translate(1340,175)">
  <rect x="0" y="0" width="500" height="30" rx="4" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <rect x="0" y="0" width="350" height="30" rx="4" fill="rgba(231,76,60,0.15)"/>
  <text x="10" y="20" fill="#fff" font-size="9" font-weight="700">۲–۹ اکتبر: قطع کامل ۷ روز</text>
  <text x="430" y="20" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="end">شدید</text>

  <rect x="0" y="36" width="500" height="30" rx="4" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.1)" stroke-width="1"/>
  <rect x="0" y="36" width="200" height="30" rx="4" fill="rgba(255,152,0,0.15)"/>
  <text x="10" y="56" fill="#fff" font-size="9" font-weight="700">۲۵–۲۸ اکتبر: قطع ۴ روز</text>
  <text x="430" y="56" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="end">موج دوم</text>

  <rect x="0" y="72" width="500" height="30" rx="4" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.1)" stroke-width="1"/>
  <rect x="0" y="72" width="450" height="30" rx="4" fill="rgba(231,76,60,0.12)"/>
  <text x="10" y="92" fill="#fff" font-size="9" font-weight="700">نوامبر: قطع ۲۰ روز متوالی! (طولانی‌ترین)</text>
  <text x="430" y="92" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="end">رکورد</text>

  <rect x="0" y="108" width="500" height="30" rx="4" fill="rgba(155,89,182,0.06)" stroke="rgba(155,89,182,0.1)" stroke-width="1"/>
  <rect x="0" y="108" width="150" height="30" rx="4" fill="rgba(155,89,182,0.12)"/>
  <text x="10" y="128" fill="#fff" font-size="9" font-weight="700">دسامبر-ژانویه: قطع‌های متناوب</text>
</g>

<rect x="1340" y="325" width="500" height="28" rx="4" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
<text x="1590" y="344" fill="#e74c3c" font-size="9" font-weight="700" text-anchor="middle">خسارت قطع اینترنت: ≈$۲.۳B | NetBlocks: «بدترین قطعی جهان ۲۰۱۹»</text>

<!-- Counter-measures -->
<text x="1340" y="375" fill="#2ecc71" font-size="12" font-weight="900">💪 مقاومت دیجیتال معترضان</text>

<g transform="translate(1340,390)">
  <rect x="0" y="0" width="500" height="35" rx="6" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="15" fill="#2ecc71" font-size="10" font-weight="700">🔐 VPN + Tor → دور زدن فیلتر</text>
  <text x="15" y="28" fill="rgba(255,255,255,0.4)" font-size="8">دانلود قبلی VPN → آمادگی برای قطع</text>

  <rect x="0" y="40" width="500" height="35" rx="6" fill="rgba(0,180,216,0.06)" stroke="rgba(0,180,216,0.1)" stroke-width="1"/>
  <text x="15" y="55" fill="#00b4d8" font-size="10" font-weight="700">📲 بلوتوث + Bridgefy → شبکه مش محلی</text>
  <text x="15" y="68" fill="rgba(255,255,255,0.4)" font-size="8">انتقال پیام بدون اینترنت — تاکتیک هنگ‌کنگی</text>

  <rect x="0" y="80" width="500" height="35" rx="6" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.1)" stroke-width="1"/>
  <text x="15" y="95" fill="#ff9800" font-size="10" font-weight="700">📹 ذخیره آفلاین + آپلود تأخیری</text>
  <text x="15" y="108" fill="rgba(255,255,255,0.4)" font-size="8">فیلم‌برداری → ذخیره → آپلود بعد از وصل اینترنت</text>

  <rect x="0" y="120" width="500" height="35" rx="6" fill="rgba(155,89,182,0.06)" stroke="rgba(155,89,182,0.1)" stroke-width="1"/>
  <text x="15" y="135" fill="#9b59b6" font-size="10" font-weight="700">📋 تلگرام: صدها کانال هماهنگی</text>
  <text x="15" y="148" fill="rgba(255,255,255,0.4)" font-size="8">سازمان‌دهی افقی — بدون رهبر مرکزی</text>
</g>

<!-- International response -->
<rect x="1340" y="558" width="500" height="60" rx="8" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
<text x="1590" y="578" fill="#d4af37" font-size="11" font-weight="700" text-anchor="middle">🌍 واکنش بین‌المللی: بیانیه بدون اقدام</text>
<text x="1355" y="598" fill="rgba(255,255,255,0.4)" font-size="9">UN + HRW + Amnesty: «محکوم می‌کنیم» — آمریکا: سکوت (متحد حکومت!)</text>
<text x="1355" y="612" fill="rgba(255,255,255,0.35)" font-size="8">ایران: «توطئه خارجی» — شبه‌نظامیان: «تخریب‌کاران»</text>

<!-- ====== BOTTOM NOTE ====== -->
<rect x="60" y="655" width="1800" height="55" rx="10" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.15)" stroke-width="1"/>
<text x="960" y="678" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📌 جمهوری تحریر = عراقی که مردم می‌خواستند: بدون فرقه، بدون فساد، بدون ترس — و دقیقاً به همین دلیل سرکوب شد</text>
<text x="960" y="698" fill="rgba(255,255,255,0.4)" font-size="11" text-anchor="middle">هنگ‌کنگ جهانی شد — تشرین فراموش شد | ۸۰۰ کشته vs صفر عکس‌العمل بین‌المللی</text>

<!-- Footer -->
<text x="60" y="42" fill="rgba(255,255,255,0.3)" font-size="13">SLIDE 52 / 60</text>
<text x="1860" y="42" fill="rgba(255,255,255,0.3)" font-size="13" text-anchor="end">فصل ۹: جنبش تشرین</text>
<text x="960" y="1065" fill="rgba(255,255,255,0.2)" font-size="11" text-anchor="middle">منابع: OHCHR, ICG, NetBlocks, Access Now, Al Jazeera, BBC Arabic, Iraqi IHCHR | ۲۰۱۹-۲۰۲۰</text>
</svg>
'@
$slide52 | Out-File -FilePath "$slidePath\slide-52-protest-map-tahrir.svg" -Encoding utf8
Write-Host "✅ Created: slide-52-protest-map-tahrir.svg" -ForegroundColor Cyan


# ===== SLIDE 53: Crackdown — Snipers, Assassinations, Kidnappings =====
$slide53 = @'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 1080" dir="rtl">
<defs>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Vazirmatn:wght@100;300;400;500;700;900&amp;display=swap');
    * { font-family: 'Vazirmatn', sans-serif; }
  </style>
  <linearGradient id="bg53" x1="0" y1="0" x2="1" y2="1">
    <stop offset="0%" stop-color="#0a0e27"/>
    <stop offset="50%" stop-color="#0d1333"/>
    <stop offset="100%" stop-color="#1a0a1e"/>
  </linearGradient>
  <filter id="sh53"><feDropShadow dx="0" dy="3" stdDeviation="8" flood-color="#000" flood-opacity="0.4"/></filter>
</defs>

<rect width="1920" height="1080" fill="url(#bg53)"/>

<!-- Header -->
<text x="960" y="45" fill="#fff" font-size="32" font-weight="900" text-anchor="middle">🎯 سرکوب تشرین: تک‌تیراندازان، ترور، ربودن</text>
<text x="960" y="72" fill="#d4af37" font-size="15" font-weight="400" text-anchor="middle">۸۰۰+ کشته — ۲۵,۰۰۰+ زخمی — صدها ربوده‌شده — صفر محاکمه | «دموکراسی» عراقی در عمل</text>
<line x1="150" y1="88" x2="1770" y2="88" stroke="#d4af37" stroke-width="1" opacity="0.3"/>

<!-- ====== TOP: METHODS OF SUPPRESSION ====== -->
<rect x="60" y="105" width="1800" height="280" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh53)"/>
<text x="960" y="135" fill="#e74c3c" font-size="15" font-weight="900" text-anchor="middle">⚠️ روش‌های سرکوب — ابزارهای مرگ</text>

<g transform="translate(90,155)">
  <!-- Snipers -->
  <rect x="0" y="0" width="330" height="200" rx="10" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.15)" stroke-width="1"/>
  <text x="165" y="28" fill="#e74c3c" font-size="16" font-weight="900" text-anchor="middle">🎯 تک‌تیراندازان</text>
  <text x="165" y="50" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">سلاح اصلی سرکوب</text>
  <text x="20" y="78" fill="rgba(255,255,255,0.5)" font-size="9">▸ مستقر روی پشت‌بام‌ها</text>
  <text x="20" y="98" fill="rgba(255,255,255,0.5)" font-size="9">▸ تیر به سر و سینه (قصد کشتن)</text>
  <text x="20" y="118" fill="rgba(255,255,255,0.5)" font-size="9">▸ «لباس‌شخصی» = هویت نامعلوم</text>
  <text x="20" y="138" fill="rgba(255,255,255,0.5)" font-size="9">▸ UN: «از سلاح‌های نظامی استفاده شد»</text>
  <text x="20" y="162" fill="#e74c3c" font-size="10" font-weight="700">≈۴۰% کشته‌ها = تیر در سر</text>
  <text x="20" y="180" fill="rgba(255,255,255,0.35)" font-size="8">عاملان: هرگز شناسایی نشدند</text>
  <text x="20" y="195" fill="rgba(255,255,255,0.3)" font-size="7">«ما نمی‌دانیم چه کسی شلیک می‌کند» — نخست‌وزیر!</text>

  <!-- Tear gas -->
  <rect x="350" y="0" width="330" height="200" rx="10" fill="rgba(255,152,0,0.08)" stroke="rgba(255,152,0,0.15)" stroke-width="1"/>
  <text x="515" y="28" fill="#ff9800" font-size="16" font-weight="900" text-anchor="middle">💨 گاز اشک‌آور نظامی</text>
  <text x="515" y="50" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">سلاح کشنده در لباس «کنترل جمعیت»</text>
  <text x="370" y="78" fill="rgba(255,255,255,0.5)" font-size="9">▸ گلوله گاز ۱۰ برابر سنگین‌تر از استاندارد</text>
  <text x="370" y="98" fill="rgba(255,255,255,0.5)" font-size="9">▸ شلیک مستقیم به سر معترضان</text>
  <text x="370" y="118" fill="rgba(255,255,255,0.5)" font-size="9">▸ ۱۰+ نفر با گلوله گاز در جمجمه کشته</text>
  <text x="370" y="138" fill="rgba(255,255,255,0.5)" font-size="9">▸ ساخت صربستان و ایران</text>
  <text x="370" y="162" fill="#ff9800" font-size="10" font-weight="700">قربانیان: غالباً نوجوانان ۱۵-۲۰ ساله</text>
  <text x="370" y="180" fill="rgba(255,255,255,0.35)" font-size="8">تصاویر گلوله گاز در جمجمه = نماد سرکوب</text>

  <!-- Kidnapping -->
  <rect x="700" y="0" width="330" height="200" rx="10" fill="rgba(155,89,182,0.08)" stroke="rgba(155,89,182,0.15)" stroke-width="1"/>
  <text x="865" y="28" fill="#9b59b6" font-size="16" font-weight="900" text-anchor="middle">🔗 ربودن فعالان</text>
  <text x="865" y="50" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">سرکوب خاموش</text>
  <text x="720" y="78" fill="rgba(255,255,255,0.5)" font-size="9">▸ ربودن شبانه از خانه</text>
  <text x="720" y="98" fill="rgba(255,255,255,0.5)" font-size="9">▸ شکنجه + تهدید خانواده</text>
  <text x="720" y="118" fill="rgba(255,255,255,0.5)" font-size="9">▸ آزادی مشروط به «سکوت»</text>
  <text x="720" y="138" fill="rgba(255,255,255,0.5)" font-size="9">▸ ≈۱۰۰+ فعال ربوده شده</text>
  <text x="720" y="162" fill="#9b59b6" font-size="10" font-weight="700">برخی هرگز بازنگشتند</text>
  <text x="720" y="180" fill="rgba(255,255,255,0.35)" font-size="8">عاملان: «لباس‌شخصی» = شبه‌نظامیان</text>

  <!-- Targeted killing -->
  <rect x="1050" y="0" width="330" height="200" rx="10" fill="rgba(231,76,60,0.1)" stroke="rgba(231,76,60,0.2)" stroke-width="1"/>
  <text x="1215" y="28" fill="#e74c3c" font-size="16" font-weight="900" text-anchor="middle">💀 ترور هدفمند</text>
  <text x="1215" y="50" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">حذف فیزیکی رهبران</text>
  <text x="1070" y="78" fill="rgba(255,255,255,0.5)" font-size="9">▸ با صدا خفه‌کن — شب‌ها</text>
  <text x="1070" y="98" fill="rgba(255,255,255,0.5)" font-size="9">▸ بمب مغناطیسی زیر خودرو</text>
  <text x="1070" y="118" fill="rgba(255,255,255,0.5)" font-size="9">▸ ≈۸۰+ فعال/روزنامه‌نگار ترور</text>
  <text x="1070" y="138" fill="rgba(255,255,255,0.5)" font-size="9">▸ صفر محاکمه عاملان</text>
  <text x="1070" y="162" fill="#e74c3c" font-size="10" font-weight="700">هشام الهاشمی (۲۰۲۰)</text>
  <text x="1070" y="180" fill="rgba(255,255,255,0.35)" font-size="8">تحلیلگر برجسته — ترور مقابل خانه‌اش</text>
  <text x="1070" y="195" fill="rgba(255,255,255,0.3)" font-size="7">عاملان شناسایی اما آزاد!</text>
</g>

<!-- ====== MIDDLE LEFT: PROMINENT VICTIMS ====== -->
<rect x="60" y="405" width="620" height="280" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh53)"/>
<text x="370" y="435" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">🕊️ قربانیان شاخص — صدایی که خاموش شد</text>

<g transform="translate(80,452)">
  <rect x="0" y="0" width="580" height="42" rx="6" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
  <text x="15" y="17" fill="#e74c3c" font-size="11" font-weight="900">هشام الهاشمی — تحلیلگر امنیتی</text>
  <text x="15" y="34" fill="rgba(255,255,255,0.5)" font-size="9">ژوئیه ۲۰۲۰: ترور مقابل خانه | عامل: عناصر کتائب حزب‌الله | نتیجه: آزاد شدند!</text>

  <rect x="0" y="48" width="580" height="42" rx="6" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.1)" stroke-width="1"/>
  <text x="15" y="65" fill="#ff9800" font-size="11" font-weight="900">صفاء السراي — فعال مدنی (بصره)</text>
  <text x="15" y="82" fill="rgba(255,255,255,0.5)" font-size="9">دسامبر ۲۰۱۹: ربوده و کشته شد | جنازه در رودخانه | بدون تحقیق</text>

  <rect x="0" y="96" width="580" height="42" rx="6" fill="rgba(0,180,216,0.06)" stroke="rgba(0,180,216,0.1)" stroke-width="1"/>
  <text x="15" y="113" fill="#00b4d8" font-size="11" font-weight="900">فاهم الطائی — فعال حقوق بشر</text>
  <text x="15" y="130" fill="rgba(255,255,255,0.5)" font-size="9">۲۰۲۰: بمب مغناطیسی زیر خودرو | تهدید قبلی توسط شبه‌نظامیان</text>

  <rect x="0" y="144" width="580" height="42" rx="6" fill="rgba(155,89,182,0.06)" stroke="rgba(155,89,182,0.1)" stroke-width="1"/>
  <text x="15" y="161" fill="#9b59b6" font-size="11" font-weight="900">ریهام یعقوب — فعال زن (بصره)</text>
  <text x="15" y="178" fill="rgba(255,255,255,0.5)" font-size="9">آگوست ۲۰۲۰: ترور | پزشک + فعال حقوق زنان | ۲۹ ساله</text>

  <rect x="0" y="192" width="580" height="30" rx="6" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="290" y="212" fill="#e74c3c" font-size="10" font-weight="700" text-anchor="middle">+ ده‌ها فعال، وبلاگ‌نویس، و روزنامه‌نگار ناشناخته — صداهایی که جهان نشنید</text>
</g>

<!-- ====== MIDDLE RIGHT: WHO DID IT? ====== -->
<rect x="705" y="405" width="560" height="280" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh53)"/>
<text x="985" y="435" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">❓ چه کسی سرکوب کرد؟</text>

<g transform="translate(725,455)">
  <rect x="0" y="0" width="520" height="45" rx="8" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
  <text x="15" y="18" fill="#e74c3c" font-size="11" font-weight="900">🔴 شبه‌نظامیان (PMF/حشد الشعبی)</text>
  <text x="15" y="36" fill="rgba(255,255,255,0.5)" font-size="9">عصائب اهل الحق + کتائب حزب‌الله → تک‌تیرانداز + ربودن + ترور</text>

  <rect x="0" y="52" width="520" height="45" rx="8" fill="rgba(255,152,0,0.08)" stroke="rgba(255,152,0,0.12)" stroke-width="1"/>
  <text x="15" y="70" fill="#ff9800" font-size="11" font-weight="900">🟠 نیروهای امنیتی دولت</text>
  <text x="15" y="88" fill="rgba(255,255,255,0.5)" font-size="9">SWAT + یگان ویژه → گاز اشک‌آور سنگین + آب‌پاش + تیراندازی</text>

  <rect x="0" y="104" width="520" height="45" rx="8" fill="rgba(155,89,182,0.08)" stroke="rgba(155,89,182,0.12)" stroke-width="1"/>
  <text x="15" y="122" fill="#9b59b6" font-size="11" font-weight="900">🟣 «لباس‌شخصی‌ها» (Third Party)</text>
  <text x="15" y="140" fill="rgba(255,255,255,0.5)" font-size="9">هویت نامعلوم — دولت: «نمی‌دانیم کی‌اند!» — مردم: «همه می‌دانیم»</text>

  <rect x="0" y="156" width="520" height="45" rx="8" fill="rgba(0,180,216,0.06)" stroke="rgba(0,180,216,0.1)" stroke-width="1"/>
  <text x="15" y="174" fill="#00b4d8" font-size="11" font-weight="700">🔵 نقش ایران (مستقیم)</text>
  <text x="15" y="192" fill="rgba(255,255,255,0.5)" font-size="9">قاسم سلیمانی شخصاً به بغداد رفت و «مدیریت بحران» کرد → سرکوب بیشتر</text>
</g>

<rect x="725" y="665" width="520" height="12" rx="3" fill="rgba(231,76,60,0.06)"/>
<text x="985" y="675" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">مسئولیت = پخش شده بین ده‌ها بازیگر → هیچ‌کس پاسخگو نیست</text>

<!-- ====== RIGHT: ACCOUNTABILITY GAP ====== -->
<rect x="1290" y="405" width="570" height="280" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh53)"/>
<text x="1575" y="435" fill="#e74c3c" font-size="14" font-weight="900" text-anchor="middle">⚖️ شکاف پاسخگویی — مصونیت مطلق</text>

<g transform="translate(1310,455)">
  <rect x="0" y="0" width="530" height="52" rx="8" fill="rgba(231,76,60,0.1)" stroke="rgba(231,76,60,0.15)" stroke-width="1"/>
  <text x="265" y="22" fill="#e74c3c" font-size="20" font-weight="900" text-anchor="middle">۸۰۰+ کشته → صفر محاکمه</text>
  <text x="265" y="42" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">هیچ فرمانده‌ای بازداشت نشد | هیچ تحقیق مستقلی انجام نشد</text>

  <rect x="0" y="62" width="530" height="42" rx="6" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.1)" stroke-width="1"/>
  <text x="15" y="82" fill="#ff9800" font-size="10" font-weight="700">«کمیته تحقیق» دولتی → هرگز نتیجه اعلام نکرد</text>
  <text x="15" y="98" fill="rgba(255,255,255,0.4)" font-size="8">۵ کمیته تشکیل شد — ۰ گزارش منتشر شد — ۰ مجرم شناسایی شد</text>

  <rect x="0" y="112" width="530" height="42" rx="6" fill="rgba(0,180,216,0.06)" stroke="rgba(0,180,216,0.1)" stroke-width="1"/>
  <text x="15" y="132" fill="#00b4d8" font-size="10" font-weight="700">قتل هاشمی: عاملان دستگیر → آزاد شدند!</text>
  <text x="15" y="148" fill="rgba(255,255,255,0.4)" font-size="8">حتی وقتی عاملان شناخته شدند، شبه‌نظامیان اجازه محاکمه ندادند</text>

  <rect x="0" y="162" width="530" height="42" rx="6" fill="rgba(155,89,182,0.06)" stroke="rgba(155,89,182,0.1)" stroke-width="1"/>
  <text x="15" y="182" fill="#9b59b6" font-size="10" font-weight="700">ICC/ICJ: هیچ اقدامی | آمریکا: سکوت</text>
  <text x="15" y="198" fill="rgba(255,255,255,0.4)" font-size="8">«دموکراسی» عراق = متحد آمریکا → بنابراین حق سرکوب دارد?!</text>
</g>

<!-- ====== BOTTOM NOTE ====== -->
<rect x="60" y="705" width="1800" height="55" rx="10" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.15)" stroke-width="1"/>
<text x="960" y="728" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📌 ۸۰۰ جوان عراقی جان دادند — جهان بیانیه داد و رفت | هنگ‌کنگ ۰ کشته = صدها مقاله | تشرین ۸۰۰ کشته = سکوت</text>
<text x="960" y="748" fill="rgba(255,255,255,0.4)" font-size="11" text-anchor="middle">پیام: جان عراقی ارزان است — مخصوصاً وقتی قاتل «متحد» باشد</text>

<!-- Footer -->
<text x="60" y="42" fill="rgba(255,255,255,0.3)" font-size="13">SLIDE 53 / 60</text>
<text x="1860" y="42" fill="rgba(255,255,255,0.3)" font-size="13" text-anchor="end">فصل ۹: جنبش تشرین</text>
<text x="960" y="1065" fill="rgba(255,255,255,0.2)" font-size="11" text-anchor="middle">منابع: OHCHR, Amnesty International, HRW, UNAMI, CPJ, Iraqi IHCHR | ۲۰۱۹-۲۰۲۱</text>
</svg>
'@
$slide53 | Out-File -FilePath "$slidePath\slide-53-crackdown-snipers.svg" -Encoding utf8
Write-Host "✅ Created: slide-53-crackdown-snipers.svg" -ForegroundColor Cyan


# ===== SLIDE 54: What Tishreen Achieved & What It Didn't (COMPLETE) =====
$slide54 = @'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 1080" dir="rtl">
<defs>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Vazirmatn:wght@100;300;400;500;700;900&amp;display=swap');
    * { font-family: 'Vazirmatn', sans-serif; }
  </style>
  <linearGradient id="bg54" x1="0" y1="0" x2="1" y2="1">
    <stop offset="0%" stop-color="#0a0e27"/>
    <stop offset="50%" stop-color="#0d1333"/>
    <stop offset="100%" stop-color="#1a0a1e"/>
  </linearGradient>
  <filter id="sh54"><feDropShadow dx="0" dy="3" stdDeviation="8" flood-color="#000" flood-opacity="0.4"/></filter>
</defs>

<rect width="1920" height="1080" fill="url(#bg54)"/>

<!-- Header -->
<text x="960" y="45" fill="#fff" font-size="32" font-weight="900" text-anchor="middle">📋 دستاوردها و شکست‌های تشرین — ترازنامه</text>
<text x="960" y="72" fill="#d4af37" font-size="15" font-weight="400" text-anchor="middle">آنچه به دست آمد — آنچه از دست رفت — آنچه هنوز زنده است</text>
<line x1="150" y1="88" x2="1770" y2="88" stroke="#d4af37" stroke-width="1" opacity="0.3"/>

<!-- ====== LEFT: ACHIEVEMENTS ====== -->
<rect x="60" y="105" width="580" height="500" rx="14" fill="rgba(46,204,113,0.04)" stroke="rgba(46,204,113,0.12)" stroke-width="1" filter="url(#sh54)"/>
<text x="350" y="135" fill="#2ecc71" font-size="16" font-weight="900" text-anchor="middle">✅ دستاوردها</text>

<g transform="translate(80,152)">
  <rect x="0" y="0" width="540" height="48" rx="8" fill="rgba(46,204,113,0.08)" stroke="rgba(46,204,113,0.12)" stroke-width="1"/>
  <text x="15" y="18" fill="#2ecc71" font-size="11" font-weight="900">۱. استعفای نخست‌وزیر عبدالمهدی (دسامبر ۲۰۱۹)</text>
  <text x="15" y="36" fill="rgba(255,255,255,0.5)" font-size="9">اولین بار: فشار خیابان = سقوط دولت</text>

  <rect x="0" y="54" width="540" height="48" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="72" fill="#2ecc71" font-size="11" font-weight="900">۲. قانون انتخابات جدید (۲۰۲۰)</text>
  <text x="15" y="90" fill="rgba(255,255,255,0.5)" font-size="9">حوزه فردی → شانس مستقلین بالا رفت</text>

  <rect x="0" y="108" width="540" height="48" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="126" fill="#2ecc71" font-size="11" font-weight="900">۳. ورود ≈۴۰ نماینده تشرینی به مجلس (۲۰۲۱)</text>
  <text x="15" y="144" fill="rgba(255,255,255,0.5)" font-size="9">تاریخی اما ناکافی (از ۳۲۹ کرسی)</text>

  <rect x="0" y="162" width="540" height="48" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="180" fill="#2ecc71" font-size="11" font-weight="900">۴. شکست روایت فرقه‌ای</text>
  <text x="15" y="198" fill="rgba(255,255,255,0.5)" font-size="9">اثبات: هویت ملی > هویت طایفه‌ای | محاصصه مشروعیت باخت</text>

  <rect x="0" y="216" width="540" height="48" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="234" fill="#2ecc71" font-size="11" font-weight="900">۵. بیداری مدنی نسل جدید</text>
  <text x="15" y="252" fill="rgba(255,255,255,0.5)" font-size="9">NGOها + رسانه مستقل + فعالان = سرمایه آینده</text>

  <rect x="0" y="270" width="540" height="48" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="288" fill="#2ecc71" font-size="11" font-weight="900">۶. افشای نقش ایران در افکار عمومی</text>
  <text x="15" y="306" fill="rgba(255,255,255,0.5)" font-size="9">آتش کنسولگری نجف = پیام: «ما می‌دانیم چه کسی حکومت واقعی است»</text>

  <rect x="0" y="324" width="540" height="48" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="342" fill="#2ecc71" font-size="11" font-weight="900">۷. الهام‌بخشی منطقه‌ای (لبنان اکتبر ۲۰۱۹)</text>
  <text x="15" y="360" fill="rgba(255,255,255,0.5)" font-size="9">«ثورة تشرين» → اعتراضات لبنان هم‌زمان شروع شد</text>
</g>

<!-- Score -->
<rect x="80" y="545" width="540" height="42" rx="8" fill="rgba(46,204,113,0.1)" stroke="rgba(46,204,113,0.2)" stroke-width="2"/>
<text x="350" y="570" fill="#2ecc71" font-size="14" font-weight="900" text-anchor="middle">دستاوردها: مهم اما ناکافی — تغییر فرهنگ بله، تغییر ساختار نه</text>

<!-- ====== MIDDLE: FAILURES ====== -->
<rect x="665" y="105" width="600" height="500" rx="14" fill="rgba(231,76,60,0.04)" stroke="rgba(231,76,60,0.12)" stroke-width="1" filter="url(#sh54)"/>
<text x="965" y="135" fill="#e74c3c" font-size="16" font-weight="900" text-anchor="middle">❌ شکست‌ها و ناکامی‌ها</text>

<g transform="translate(685,152)">
  <rect x="0" y="0" width="560" height="48" rx="8" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
  <text x="15" y="18" fill="#e74c3c" font-size="11" font-weight="900">۱. محاصصه شکست نخورد — فقط بازآرایی شد</text>
  <text x="15" y="36" fill="rgba(255,255,255,0.5)" font-size="9">الکاظمی → السودانی: هر دو محصول سیستم محاصصه</text>

  <rect x="0" y="54" width="560" height="48" rx="8" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="15" y="72" fill="#e74c3c" font-size="11" font-weight="900">۲. شبه‌نظامیان قدرتمندتر شدند</text>
  <text x="15" y="90" fill="rgba(255,255,255,0.5)" font-size="9">تشرین = بهانه تقویت PMF | اکنون: ≈۲۰۰K نیرو + بودجه رسمی</text>

  <rect x="0" y="108" width="560" height="48" rx="8" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="15" y="126" fill="#e74c3c" font-size="11" font-weight="900">۳. فساد بدتر شد</text>
  <text x="15" y="144" fill="rgba(255,255,255,0.5)" font-size="9">دزدی قرن (۲۰۲۲): $۲.۵B ناپدید شد! — بزرگ‌ترین سرقت تاریخ عراق</text>

  <rect x="0" y="162" width="560" height="48" rx="8" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="15" y="180" fill="#e74c3c" font-size="11" font-weight="900">۴. صفر پاسخگویی برای ۸۰۰ شهید</text>
  <text x="15" y="198" fill="rgba(255,255,255,0.5)" font-size="9">هیچ فرمانده‌ای محاکمه نشد — خون شهدا بر زمین ماند</text>

  <rect x="0" y="216" width="560" height="48" rx="8" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="15" y="234" fill="#e74c3c" font-size="11" font-weight="900">۵. کووید + سرکوب = پراکندگی جنبش</text>
  <text x="15" y="252" fill="rgba(255,255,255,0.5)" font-size="9">مارس ۲۰۲۰: کرونا = بهانه ایده‌آل برای پاکسازی میدان تحریر</text>

  <rect x="0" y="270" width="560" height="48" rx="8" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="15" y="288" fill="#e74c3c" font-size="11" font-weight="900">۶. ترور و ارعاب فعالان ادامه دارد</text>
  <text x="15" y="306" fill="rgba(255,255,255,0.5)" font-size="9">۲۰۲۰–۲۰۲۳: ده‌ها فعال ترور شدند — فضای ترس حاکم شد</text>

  <rect x="0" y="324" width="560" height="48" rx="8" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="15" y="342" fill="#e74c3c" font-size="11" font-weight="900">۷. نسل تشرین مهاجرت می‌کند</text>
  <text x="15" y="360" fill="rgba(255,255,255,0.5)" font-size="9">بسیاری از فعالان از ترس ترور، عراق را ترک کردند → فرار مغز نسل امید</text>
</g>

<!-- Score -->
<rect x="685" y="545" width="560" height="42" rx="8" fill="rgba(231,76,60,0.1)" stroke="rgba(231,76,60,0.2)" stroke-width="2"/>
<text x="965" y="570" fill="#e74c3c" font-size="14" font-weight="900" text-anchor="middle">شکست‌ها: ساختاری و عمیق — سیستم خود را ترمیم کرد</text>

<!-- ====== RIGHT: WHAT IS STILL ALIVE ====== -->
<rect x="1290" y="105" width="570" height="500" rx="14" fill="rgba(212,175,55,0.04)" stroke="rgba(212,175,55,0.12)" stroke-width="1" filter="url(#sh54)"/>
<text x="1575" y="135" fill="#d4af37" font-size="16" font-weight="900" text-anchor="middle">🔥 آنچه هنوز زنده است</text>

<g transform="translate(1310,155)">
  <rect x="0" y="0" width="530" height="55" rx="8" fill="rgba(212,175,55,0.08)" stroke="rgba(212,175,55,0.12)" stroke-width="1"/>
  <text x="265" y="22" fill="#d4af37" font-size="13" font-weight="900" text-anchor="middle">💡 آگاهی سیاسی نسل جدید</text>
  <text x="265" y="42" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">این نسل دیگر فریب محاصصه را نمی‌خورد</text>

  <rect x="0" y="62" width="530" height="55" rx="8" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
  <text x="265" y="84" fill="#d4af37" font-size="13" font-weight="900" text-anchor="middle">🏛️ حضور در مجلس و شوراها</text>
  <text x="265" y="104" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">≈۴۰ نماینده مستقل = پایه بلندمدت</text>

  <rect x="0" y="124" width="530" height="55" rx="8" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
  <text x="265" y="146" fill="#d4af37" font-size="13" font-weight="900" text-anchor="middle">📱 رسانه‌های مستقل و جامعه مدنی</text>
  <text x="265" y="166" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">صدها NGO + کانال + پادکست = صدای جایگزین</text>

  <rect x="0" y="186" width="530" height="55" rx="8" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
  <text x="265" y="208" fill="#d4af37" font-size="13" font-weight="900" text-anchor="middle">🎨 فرهنگ مقاومت (هنر + ادبیات)</text>
  <text x="265" y="228" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">گرافیتی، آهنگ‌ها، شعرها = حافظه ملی</text>

  <rect x="0" y="248" width="530" height="55" rx="8" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
  <text x="265" y="270" fill="#d4af37" font-size="13" font-weight="900" text-anchor="middle">🌱 تغییر دموگرافیک = تغییر حتمی</text>
  <text x="265" y="290" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">۷۰% جمعیت زیر ۳۰ = این نسل آینده عراق را تعیین می‌کند</text>
</g>

<!-- Historical quote -->
<rect x="1310" y="475" width="530" height="72" rx="10" fill="rgba(212,175,55,0.08)" stroke="rgba(212,175,55,0.15)" stroke-width="1"/>
<text x="1575" y="498" fill="#d4af37" font-size="13" font-weight="700" text-anchor="middle" font-style="italic">«تشرین نمُرد — تشرین بذر است»</text>
<text x="1575" y="518" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">— شعار دیوارنویسی بغداد ۲۰۲۱</text>
<text x="1575" y="538" fill="rgba(255,255,255,0.35)" font-size="9" text-anchor="middle">هر انقلابی ممکن است سرکوب شود — اما ایده‌ها نمی‌میرند</text>

<!-- ====== BOTTOM: COMPARATIVE ANALYSIS ====== -->
<rect x="60" y="625" width="1800" height="155" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh54)"/>
<text x="960" y="655" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">🔄 مقایسه تشرین با جنبش‌های مشابه</text>

<g transform="translate(90,670)">
  <!-- Tahrir Egypt -->
  <rect x="0" y="0" width="400" height="45" rx="6" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.1)" stroke-width="1"/>
  <text x="15" y="18" fill="#ff9800" font-size="10" font-weight="700">🇪🇬 مصر ۲۰۱۱: سقوط مبارک → اما: کودتا ۲۰۱۳ → سیسی</text>
  <text x="15" y="36" fill="rgba(255,255,255,0.4)" font-size="8">شباهت: انقلاب بدون ساختار جایگزین = بازگشت نظم قدیم</text>

  <!-- Hong Kong -->
  <rect x="420" y="0" width="400" height="45" rx="6" fill="rgba(0,180,216,0.06)" stroke="rgba(0,180,216,0.1)" stroke-width="1"/>
  <text x="435" y="18" fill="#00b4d8" font-size="10" font-weight="700">🇭🇰 هنگ‌کنگ ۲۰۱۹: ۰ کشته → توجه جهانی عظیم</text>
  <text x="435" y="36" fill="rgba(255,255,255,0.4)" font-size="8">تفاوت: تشرین ۸۰۰ کشته → سکوت جهانی (جان عراقی ارزان‌تر؟)</text>

  <!-- Iran 2022 -->
  <rect x="840" y="0" width="400" height="45" rx="6" fill="rgba(155,89,182,0.06)" stroke="rgba(155,89,182,0.1)" stroke-width="1"/>
  <text x="855" y="18" fill="#9b59b6" font-size="10" font-weight="700">🇮🇷 ایران ۱۴۰۱ (ژینا): سرکوب → اما: تغییر فرهنگی عمیق</text>
  <text x="855" y="36" fill="rgba(255,255,255,0.4)" font-size="8">شباهت: هر دو = نسل جوان vs سیستم مسلح | هر دو سرکوب شدند</text>

  <!-- Sudan -->
  <rect x="1260" y="0" width="400" height="45" rx="6" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="1275" y="18" fill="#e74c3c" font-size="10" font-weight="700">🇸🇩 سودان ۲۰۱۹: سقوط البشیر → اما: جنگ داخلی ۲۰۲۳</text>
  <text x="1275" y="36" fill="rgba(255,255,255,0.4)" font-size="8">درس: انقلاب بدون حذف ساختار نظامی = بازگشت خشونت</text>
</g>

<rect x="90" y="735" width="1700" height="30" rx="4" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
<text x="940" y="755" fill="#d4af37" font-size="10" font-weight="700" text-anchor="middle">💡 درس مشترک: انقلاب بدون سازمان + بدون جایگزین ساختاری = تغییر فرهنگی بله، تغییر سیاسی نه (هنوز)</text>

<!-- ====== BOTTOM NOTE ====== -->
<rect x="60" y="798" width="1800" height="55" rx="10" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.15)" stroke-width="1"/>
<text x="960" y="820" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📌 تشرین شکست خورد؟ خیر — تشرین هنوز در حال وقوع است. فقط سرعتش تغییر کرده.</text>
<text x="960" y="840" fill="rgba(255,255,255,0.4)" font-size="11" text-anchor="middle">۷۰% جمعیت عراق زیر ۳۰ سال = نسل تشرین. آنها فراموش نکرده‌اند. فقط منتظرند.</text>

<!-- Footer -->
<text x="60" y="42" fill="rgba(255,255,255,0.3)" font-size="13">SLIDE 54 / 60</text>
<text x="1860" y="42" fill="rgba(255,255,255,0.3)" font-size="13" text-anchor="end">فصل ۹: جنبش تشرین</text>
<text x="960" y="1065" fill="rgba(255,255,255,0.2)" font-size="11" text-anchor="middle">منابع: ICG, Chatham House, OHCHR, Iraqi Parliament Records, Al-Monitor, Middle East Eye | ۲۰۱۹-۲۰۲۳</text>
</svg>
'@
$slide54 | Out-File -FilePath "$slidePath\slide-54-tishreen-achievements-failures.svg" -Encoding utf8
Write-Host "✅ Created: slide-54-tishreen-achievements-failures.svg" -ForegroundColor Cyan


# ===== SLIDE 55: Civil Society & New Generation =====
$slide55 = @'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1920 1080" dir="rtl">
<defs>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Vazirmatn:wght@100;300;400;500;700;900&amp;display=swap');
    * { font-family: 'Vazirmatn', sans-serif; }
  </style>
  <linearGradient id="bg55" x1="0" y1="0" x2="1" y2="1">
    <stop offset="0%" stop-color="#0a0e27"/>
    <stop offset="50%" stop-color="#0d1333"/>
    <stop offset="100%" stop-color="#1a0a1e"/>
  </linearGradient>
  <filter id="sh55"><feDropShadow dx="0" dy="3" stdDeviation="8" flood-color="#000" flood-opacity="0.4"/></filter>
</defs>

<rect width="1920" height="1080" fill="url(#bg55)"/>

<!-- Header -->
<text x="960" y="45" fill="#fff" font-size="32" font-weight="900" text-anchor="middle">🌱 جامعه مدنی و نسل جدید عراق — بذر امید</text>
<text x="960" y="72" fill="#d4af37" font-size="15" font-weight="400" text-anchor="middle">نسلی که صدام را ندید — محاصصه را نمی‌پذیرد — و آینده‌اش را خودش می‌سازد</text>
<line x1="150" y1="88" x2="1770" y2="88" stroke="#d4af37" stroke-width="1" opacity="0.3"/>

<!-- ====== TOP: DEMOGRAPHICS = DESTINY ====== -->
<rect x="60" y="105" width="1800" height="180" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh55)"/>
<text x="960" y="135" fill="#d4af37" font-size="15" font-weight="700" text-anchor="middle">📊 دموگرافی = سرنوشت — عراق جوان‌ترین کشور منطقه</text>

<g transform="translate(100,155)">
  <rect x="0" y="0" width="280" height="60" rx="10" fill="rgba(46,204,113,0.1)" stroke="rgba(46,204,113,0.2)" stroke-width="1"/>
  <text x="140" y="22" fill="#2ecc71" font-size="24" font-weight="900" text-anchor="middle">۷۰%</text>
  <text x="140" y="42" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">زیر ۳۰ سال</text>
  <text x="140" y="54" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">≈۲۹M نفر از ۴۲M</text>

  <rect x="300" y="0" width="280" height="60" rx="10" fill="rgba(0,180,216,0.1)" stroke="rgba(0,180,216,0.2)" stroke-width="1"/>
  <text x="440" y="22" fill="#00b4d8" font-size="24" font-weight="900" text-anchor="middle">۶۰%</text>
  <text x="440" y="42" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">زیر ۲۵ سال</text>
  <text x="440" y="54" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">نسل پس از ۲۰۰۳</text>

  <rect x="600" y="0" width="280" height="60" rx="10" fill="rgba(255,152,0,0.1)" stroke="rgba(255,152,0,0.2)" stroke-width="1"/>
  <text x="740" y="22" fill="#ff9800" font-size="24" font-weight="900" text-anchor="middle">۴۰%</text>
  <text x="740" y="42" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">زیر ۱۵ سال</text>
  <text x="740" y="54" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">نسل بعد از داعش</text>

  <rect x="900" y="0" width="280" height="60" rx="10" fill="rgba(155,89,182,0.1)" stroke="rgba(155,89,182,0.2)" stroke-width="1"/>
  <text x="1040" y="22" fill="#9b59b6" font-size="24" font-weight="900" text-anchor="middle">۵۰M</text>
  <text x="1040" y="42" fill="rgba(255,255,255,0.6)" font-size="10" text-anchor="middle">جمعیت ۲۰۳۵</text>
  <text x="1040" y="54" fill="rgba(255,255,255,0.3)" font-size="8" text-anchor="middle">(از ۴۲M فعلی)</text>

  <rect x="1200" y="0" width="380" height="60" rx="10" fill="rgba(212,175,55,0.08)" stroke="rgba(212,175,55,0.15)" stroke-width="1"/>
  <text x="1390" y="22" fill="#d4af37" font-size="13" font-weight="700" text-anchor="middle">💡 این نسل صدام را ندیده</text>
  <text x="1390" y="42" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">فقط فساد و محاصصه دیده → می‌پرسد: چرا؟</text>
</g>

<text x="960" y="268" fill="rgba(255,255,255,0.4)" font-size="10" text-anchor="middle">⏰ در ۱۰ سال: نسل تشرین = اکثریت رأی‌دهنده + نیروی کار + فرهنگ‌ساز → تغییر اجتناب‌ناپذیر است</text>

<!-- ====== MIDDLE LEFT: CIVIL SOCIETY LANDSCAPE ====== -->
<rect x="60" y="305" width="580" height="370" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh55)"/>
<text x="350" y="335" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">🏛️ نقشه جامعه مدنی عراق — ۲۰۲۳</text>

<g transform="translate(80,352)">
  <rect x="0" y="0" width="540" height="42" rx="6" fill="rgba(46,204,113,0.08)" stroke="rgba(46,204,113,0.12)" stroke-width="1"/>
  <text x="15" y="17" fill="#2ecc71" font-size="11" font-weight="900">📋 NGOهای ثبت‌شده: ≈۴,۵۰۰</text>
  <text x="15" y="34" fill="rgba(255,255,255,0.4)" font-size="8">از ≈۱۰۰ در ۲۰۰۳ → رشد ۴۵ برابری | اما: ≈۷۰% ناکارآمد/وابسته</text>

  <rect x="0" y="48" width="540" height="42" rx="6" fill="rgba(0,180,216,0.06)" stroke="rgba(0,180,216,0.1)" stroke-width="1"/>
  <text x="15" y="65" fill="#00b4d8" font-size="11" font-weight="900">📱 رسانه‌های مستقل دیجیتال: ≈۲۰۰+</text>
  <text x="15" y="82" fill="rgba(255,255,255,0.4)" font-size="8">پادکست، یوتیوب، اینستاگرام — نسل Z عراقی = دیجیتال‌محور</text>

  <rect x="0" y="96" width="540" height="42" rx="6" fill="rgba(255,152,0,0.06)" stroke="rgba(255,152,0,0.1)" stroke-width="1"/>
  <text x="15" y="113" fill="#ff9800" font-size="11" font-weight="900">⚖️ سازمان‌های حقوق بشر: ≈۵۰ فعال</text>
  <text x="15" y="130" fill="rgba(255,255,255,0.4)" font-size="8">مستندسازی نقض حقوق + دادخواهی بین‌المللی | تحت تهدید مداوم</text>

  <rect x="0" y="144" width="540" height="42" rx="6" fill="rgba(155,89,182,0.06)" stroke="rgba(155,89,182,0.1)" stroke-width="1"/>
  <text x="15" y="161" fill="#9b59b6" font-size="11" font-weight="900">👩 سازمان‌های زنان: ≈۸۰</text>
  <text x="15" y="178" fill="rgba(255,255,255,0.4)" font-size="8">مبارزه با ازدواج کودک + قتل ناموسی + مشارکت سیاسی</text>

  <rect x="0" y="192" width="540" height="42" rx="6" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="15" y="209" fill="#e74c3c" font-size="11" font-weight="900">🎓 اتحادیه‌های دانشجویی مستقل: جدید</text>
  <text x="15" y="226" fill="rgba(255,255,255,0.4)" font-size="8">پس از تشرین: سازمان‌دهی دانشگاهی — هنوز ضعیف اما رو به رشد</text>

  <rect x="0" y="240" width="540" height="42" rx="6" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
  <text x="15" y="257" fill="#d4af37" font-size="11" font-weight="900">🎭 جنبش فرهنگی/هنری: قوی‌ترین</text>
  <text x="15" y="274" fill="rgba(255,255,255,0.4)" font-size="8">فیلم، تئاتر، موسیقی، گرافیتی = بازتولید هویت ملی فراطایفه‌ای</text>

  <rect x="0" y="288" width="540" height="28" rx="4" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="270" y="307" fill="#e74c3c" font-size="9" font-weight="700" text-anchor="middle">⚠️ تهدیدها: ترور + تهدید + وابستگی مالی به خارج + نفوذ حزبی</text>
</g>

<!-- ====== MIDDLE: WHAT THE NEW GENERATION WANTS ====== -->
<rect x="665" y="305" width="600" height="370" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh55)"/>
<text x="965" y="335" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📣 نسل تشرین چه می‌خواهد؟ (نظرسنجی ۲۰۲۲)</text>

<g transform="translate(690,355)">
  <!-- Jobs -->
  <text x="0" y="14" fill="rgba(255,255,255,0.6)" font-size="10" font-weight="700">شغل و معیشت</text>
  <rect x="140" y="1" width="420" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="140" y="1" width="390" height="20" rx="3" fill="rgba(231,76,60,0.4)"/>
  <text x="545" y="15" fill="#e74c3c" font-size="10" font-weight="900">۹۳%</text>

  <!-- End corruption -->
  <text x="0" y="38" fill="rgba(255,255,255,0.6)" font-size="10" font-weight="700">پایان فساد</text>
  <rect x="140" y="25" width="420" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="140" y="25" width="380" height="20" rx="3" fill="rgba(255,152,0,0.4)"/>
  <text x="535" y="39" fill="#ff9800" font-size="10" font-weight="900">۹۱%</text>

  <!-- End muhasasa -->
  <text x="0" y="62" fill="rgba(255,255,255,0.6)" font-size="10" font-weight="700">حذف محاصصه</text>
  <rect x="140" y="49" width="420" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="140" y="49" width="365" height="20" rx="3" fill="rgba(0,180,216,0.4)"/>
  <text x="520" y="63" fill="#00b4d8" font-size="10" font-weight="900">۸۷%</text>

  <!-- Services -->
  <text x="0" y="86" fill="rgba(255,255,255,0.6)" font-size="10" font-weight="700">خدمات (برق/آب)</text>
  <rect x="140" y="73" width="420" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="140" y="73" width="355" height="20" rx="3" fill="rgba(155,89,182,0.35)"/>
  <text x="510" y="87" fill="#9b59b6" font-size="10" font-weight="900">۸۵%</text>

  <!-- Sovereignty -->
  <text x="0" y="110" fill="rgba(255,255,255,0.6)" font-size="10" font-weight="700">حاکمیت ملی</text>
  <rect x="140" y="97" width="420" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="140" y="97" width="340" height="20" rx="3" fill="rgba(46,204,113,0.35)"/>
  <text x="495" y="111" fill="#2ecc71" font-size="10" font-weight="900">۸۱%</text>

  <!-- Disarm militias -->
  <text x="0" y="134" fill="rgba(255,255,255,0.6)" font-size="10" font-weight="700">خلع سلاح شبه‌نظامیان</text>
  <rect x="140" y="121" width="420" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="140" y="121" width="310" height="20" rx="3" fill="rgba(231,76,60,0.3)"/>
  <text x="465" y="135" fill="#e74c3c" font-size="10" font-weight="900">۷۴%</text>

  <!-- Accountability -->
  <text x="0" y="158" fill="rgba(255,255,255,0.6)" font-size="10" font-weight="700">محاکمه مسئولان</text>
  <rect x="140" y="145" width="420" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="140" y="145" width="290" height="20" rx="3" fill="rgba(212,175,55,0.3)"/>
  <text x="445" y="159" fill="#d4af37" font-size="10" font-weight="900">۶۹%</text>

  <!-- Freedom -->
  <text x="0" y="182" fill="rgba(255,255,255,0.6)" font-size="10" font-weight="700">آزادی بیان/مطبوعات</text>
  <rect x="140" y="169" width="420" height="20" rx="3" fill="rgba(255,255,255,0.03)"/>
  <rect x="140" y="169" width="270" height="20" rx="3" fill="rgba(0,180,216,0.25)"/>
  <text x="425" y="183" fill="#00b4d8" font-size="10" font-weight="900">۶۵%</text>
</g>

<rect x="690" y="575" width="550" height="85" rx="8" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
<text x="965" y="598" fill="#d4af37" font-size="12" font-weight="700" text-anchor="middle">💡 خلاصه: نسل جدید عراق خواسته‌هایش ساده و مدرن است</text>
<text x="965" y="618" fill="rgba(255,255,255,0.5)" font-size="10" text-anchor="middle">شغل + خدمات + عدالت + حاکمیت = حداقل‌های یک کشور عادی</text>
<text x="965" y="638" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="middle">هیچ‌کدام از این خواسته‌ها «انقلابی» نیست — مشکل سیستم است نه مردم</text>

<!-- ====== RIGHT: CHALLENGES & HOPE ====== -->
<rect x="1290" y="305" width="570" height="370" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh55)"/>
<text x="1575" y="335" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">⚡ چالش‌ها vs نقاط امید</text>

<!-- Challenges -->
<text x="1310" y="360" fill="#e74c3c" font-size="12" font-weight="900">⛔ چالش‌ها:</text>
<g transform="translate(1310,370)">
  <text x="0" y="15" fill="rgba(255,255,255,0.5)" font-size="10">▸ ترور و ارعاب مداوم فعالان</text>
  <text x="0" y="35" fill="rgba(255,255,255,0.5)" font-size="10">▸ مهاجرت نخبگان (فرار مغز نسل تشرین)</text>
  <text x="0" y="55" fill="rgba(255,255,255,0.5)" font-size="10">▸ بیکاری ۳۶% جوانان = ناامیدی</text>
  <text x="0" y="75" fill="rgba(255,255,255,0.5)" font-size="10">▸ نفوذ شبه‌نظامیان در دانشگاه‌ها</text>
  <text x="0" y="95" fill="rgba(255,255,255,0.5)" font-size="10">▸ سانسور و قطع اینترنت</text>
  <text x="0" y="115" fill="rgba(255,255,255,0.5)" font-size="10">▸ فقدان رهبری و سازمان‌دهی</text>
</g>

<!-- Hope -->
<text x="1310" y="505" fill="#2ecc71" font-size="12" font-weight="900">🌱 نقاط امید:</text>
<g transform="translate(1310,515)">
  <text x="0" y="15" fill="rgba(255,255,255,0.5)" font-size="10">▸ اکثریت جمعیتی = قدرت بالقوه عظیم</text>
  <text x="0" y="35" fill="rgba(255,255,255,0.5)" font-size="10">▸ آگاهی سیاسی بی‌سابقه (شکست روایت فرقه‌ای)</text>
  <text x="0" y="55" fill="rgba(255,255,255,0.5)" font-size="10">▸ شبکه‌سازی دیجیتال = سازمان‌دهی جدید</text>
  <text x="0" y="75" fill="rgba(255,255,255,0.5)" font-size="10">▸ حضور (هرچند محدود) در مجلس</text>
  <text x="0" y="95" fill="rgba(255,255,255,0.5)" font-size="10">▸ فرهنگ مقاومت (هنر + ادبیات + موسیقی)</text>
  <text x="0" y="115" fill="rgba(255,255,255,0.5)" font-size="10">▸ ارتباط با جنبش‌های منطقه‌ای (ایران، لبنان)</text>
</g>

<!-- Quote -->
<rect x="1310" y="640" width="530" height="22" rx="4" fill="rgba(212,175,55,0.06)"/>
<text x="1575" y="656" fill="#d4af37" font-size="9" font-weight="700" text-anchor="middle">«ما نسل تشرین هستیم — نه سنّی، نه شیعه — فقط عراقی» — دیوارنویسی بغداد</text>

<!-- ====== BOTTOM NOTE ====== -->
<rect x="60" y="695" width="1800" height="65" rx="10" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.15)" stroke-width="1"/>
<text x="960" y="718" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📌 جمع‌بندی فصل ۹: تشرین سرکوب شد — اما نسلی را بیدار کرد که دیگر نمی‌خوابد</text>
<text x="960" y="740" fill="rgba(255,255,255,0.4)" font-size="11" text-anchor="middle">سؤال فصل پایانی: آیا این نسل فرصت تغییر پیدا می‌کند؟ یا مثل نسل قبل، مهاجرت/سرکوب/فراموشی؟</text>

<!-- Footer -->
<text x="60" y="42" fill="rgba(255,255,255,0.3)" font-size="13">SLIDE 55 / 60</text>
<text x="1860" y="42" fill="rgba(255,255,255,0.3)" font-size="13" text-anchor="end">فصل ۹: جامعه مدنی</text>
<text x="960" y="1065" fill="rgba(255,255,255,0.2)" font-size="11" text-anchor="middle">منابع: UNDP Iraq Youth Survey 2022, ICG, Chatham House, COSIT, Al-Bayan Center | ۲۰۲۲-۲۰۲۳</text>
</svg>
'@
$slide55 | Out-File -FilePath "$slidePath\slide-55-civil-society-new-generation.svg" -Encoding utf8
Write-Host "✅ Created: slide-55-civil-society-new-generation.svg" -ForegroundColor Cyan


# ================================================================
#  BATCH 21 STATUS REPORT
# ================================================================

Write-Host ""
Write-Host "============================================================" -ForegroundColor Green
Write-Host "  BATCH 21 COMPLETE — Slides 51-55 (Chapter 9: Tishreen)" -ForegroundColor Green
Write-Host "  SAVE PATH: D:\Code\Articles\Iraq\slides\" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Green
Write-Host ""
Write-Host "  ✅ Slide 51: slide-51-tishreen-birth.svg" -ForegroundColor Cyan
Write-Host "     Ignition timeline, why Tishreen, unique features, slogans" -ForegroundColor DarkGray
Write-Host ""
Write-Host "  ✅ Slide 52: slide-52-protest-map-tahrir.svg" -ForegroundColor Cyan
Write-Host "     Protest map, Tahrir Republic, casualties by city, digital war" -ForegroundColor DarkGray
Write-Host ""
Write-Host "  ✅ Slide 53: slide-53-crackdown-snipers.svg" -ForegroundColor Cyan
Write-Host "     4 methods of suppression, prominent victims, accountability gap" -ForegroundColor DarkGray
Write-Host ""
Write-Host "  ✅ Slide 54: slide-54-tishreen-achievements-failures.svg" -ForegroundColor Cyan
Write-Host "     7 achievements, 7 failures, what's alive, comparative analysis" -ForegroundColor DarkGray
Write-Host ""
Write-Host "  ✅ Slide 55: slide-55-civil-society-new-generation.svg" -ForegroundColor Cyan
Write-Host "     Demographics, civil society map, youth demands, challenges vs hope" -ForegroundColor DarkGray
Write-Host ""
Write-Host "============================================================" -ForegroundColor Yellow
Write-Host "  IRAQ SLIDES PROJECT — STATUS REPORT v21" -ForegroundColor Yellow
Write-Host "  Batch 21 Complete (Slides 51-55)" -ForegroundColor Yellow
Write-Host "  COMPLETED: 55/60 slides (92%) ██████████████████░░" -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Yellow
Write-Host ""
Write-Host "  COMPLETED SLIDES: 55" -ForegroundColor Green
Write-Host "  REMAINING: 5 (FINAL BATCH!)" -ForegroundColor Yellow
Write-Host ""
Write-Host "  ALL CHAPTERS:" -ForegroundColor White
Write-Host "    Ch1  (Invasion):       01-05  ✅" -ForegroundColor Green
Write-Host "    Ch2  (Security):       06-10  ✅" -ForegroundColor Green
Write-Host "    Ch3  (Muhasasa):       08-12  ✅" -ForegroundColor Green
Write-Host "    Ch4  (Iran vs Iraq):   11-15  ✅" -ForegroundColor Green
Write-Host "    Ch5  (Public Opinion): 16-20  ✅" -ForegroundColor Green
Write-Host "    Ch6  (ISIS):           21-30  ✅" -ForegroundColor Green
Write-Host "    Ch7  (Actors):         31-40  ✅" -ForegroundColor Green
Write-Host "    Ch8  (Development):    41-50  ✅" -ForegroundColor Green
Write-Host "    Ch9  (Tishreen):       51-55  ✅ JUST COMPLETED!" -ForegroundColor Green
Write-Host "    Ch10 (Conclusion):     56-60  🔲 FINAL BATCH" -ForegroundColor Yellow
Write-Host ""
Write-Host "  ═══════════════════════════════════════════════════" -ForegroundColor Magenta
Write-Host "  🏁 FINAL BATCH (22): Slides 56-60 — CONCLUSION" -ForegroundColor Magenta
Write-Host "  ═══════════════════════════════════════════════════" -ForegroundColor Magenta
Write-Host ""
Write-Host "    56 — Lessons Learned: What Iraq Teaches the World" -ForegroundColor DarkGray
Write-Host "    57 — Who Is Accountable? (The Accountability Gap)" -ForegroundColor DarkGray
Write-Host "    58 — Future Scenarios: 3 Paths for Iraq" -ForegroundColor DarkGray
Write-Host "    59 — Iran Comparison: Final Analysis" -ForegroundColor DarkGray
Write-Host "    60 — Closing Slide: Legacy & Memorial" -ForegroundColor DarkGray
Write-Host ""
Write-Host "  Type 'Continue' for the FINAL BATCH..." -ForegroundColor White
```