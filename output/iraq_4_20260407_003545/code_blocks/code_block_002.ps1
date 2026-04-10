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
<text x="960" y="72" fill="#d4af37" font-size="15" font-weight="400" text-anchor="middle">۱۱ استان — همه جنوبی/مرکزی (شیعه‌نشین!) — شیعیان علیه حکومت شیعه</text>
<line x1="150" y1="88" x2="1770" y2="88" stroke="#d4af37" stroke-width="1" opacity="0.3"/>

<!-- ====== LEFT: PROTEST MAP (Schematic) ====== -->
<rect x="60" y="105" width="700" height="550" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh52)"/>
<text x="410" y="135" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">🗺️ نقشه شماتیک اعتراضات — اکتبر-دسامبر ۲۰۱۹</text>

<!-- Schematic Iraq outline (simplified) -->
<path d="M250,200 L350,170 L480,180 L560,220 L580,300 L600,380 L580,450 L530,520 L450,570 L380,600 L300,580 L250,530 L200,460 L180,380 L190,300 L220,240 Z" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.1)" stroke-width="1.5"/>

<!-- Kurdistan (not protesting) -->
<ellipse cx="420" cy="200" rx="80" ry="35" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.06)" stroke-width="1"/>
<text x="420" y="198" fill="rgba(255,255,255,0.25)" font-size="9" text-anchor="middle">کردستان</text>
<text x="420" y="212" fill="rgba(255,255,255,0.2)" font-size="7" text-anchor="middle">(بدون اعتراض)</text>

<!-- Sunni areas (limited) -->
<ellipse cx="320" cy="280" rx="55" ry="30" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.06)" stroke-width="1"/>
<text x="320" y="278" fill="rgba(255,255,255,0.25)" font-size="8" text-anchor="middle">انبار/نینوا</text>
<text x="320" y="292" fill="rgba(255,255,255,0.2)" font-size="7" text-anchor="middle">(حمایت اما کمتر)</text>

<!-- PROTEST CITIES (Red dots with sizes) -->
<!-- Baghdad (Largest) -->
<circle cx="400" cy="340" r="22" fill="rgba(231,76,60,0.3)" stroke="#e74c3c" stroke-width="2"/>
<circle cx="400" cy="340" r="8" fill="#e74c3c"/>
<text x="400" y="320" fill="#e74c3c" font-size="11" font-weight="900" text-anchor="middle">بغداد</text>
<text x="400" y="372" fill="rgba(255,255,255,0.5)" font-size="7" text-anchor="middle">۵۰۰K+ معترض</text>

<!-- Basra -->
<circle cx="520" cy="520" r="16" fill="rgba(231,76,60,0.25)" stroke="#e74c3c" stroke-width="1.5"/>
<circle cx="520" cy="520" r="5" fill="#e74c3c"/>
<text x="520" y="508" fill="#e74c3c" font-size="9" font-weight="700" text-anchor="middle">بصره</text>
<text x="520" y="544" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">۱۰۰K+</text>

<!-- Nasiriyah -->
<circle cx="450" cy="490" r="14" fill="rgba(231,76,60,0.25)" stroke="#e74c3c" stroke-width="1.5"/>
<circle cx="450" cy="490" r="5" fill="#e74c3c"/>
<text x="450" y="478" fill="#e74c3c" font-size="9" font-weight="700" text-anchor="middle">ناصریه</text>
<text x="450" y="510" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">خونین‌ترین!</text>

<!-- Najaf -->
<circle cx="360" cy="420" r="12" fill="rgba(255,152,0,0.25)" stroke="#ff9800" stroke-width="1.5"/>
<circle cx="360" cy="420" r="4" fill="#ff9800"/>
<text x="360" y="410" fill="#ff9800" font-size="9" font-weight="700" text-anchor="middle">نجف</text>
<text x="360" y="440" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">آتش کنسولگری</text>

<!-- Karbala -->
<circle cx="340" cy="380" r="12" fill="rgba(255,152,0,0.25)" stroke="#ff9800" stroke-width="1.5"/>
<circle cx="340" cy="380" r="4" fill="#ff9800"/>
<text x="310" y="380" fill="#ff9800" font-size="9" font-weight="700" text-anchor="end">کربلا</text>

<!-- Diwaniyah -->
<circle cx="380" cy="450" r="10" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
<circle cx="380" cy="450" r="3" fill="#e74c3c"/>
<text x="380" y="466" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">دیوانیه</text>

<!-- Hilla -->
<circle cx="370" cy="370" r="10" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
<text x="390" y="370" fill="rgba(255,255,255,0.4)" font-size="7">حلّه</text>

<!-- Amarah -->
<circle cx="490" cy="450" r="10" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
<text x="490" y="466" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">عماره</text>

<!-- Kut -->
<circle cx="460" cy="390" r="9" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
<text x="475" y="390" fill="rgba(255,255,255,0.4)" font-size="7">کوت</text>

<!-- Samawah -->
<circle cx="410" cy="510" r="9" fill="rgba(231,76,60,0.15)" stroke="#e74c3c" stroke-width="1"/>
<text x="410" y="525" fill="rgba(255,255,255,0.4)" font-size="7" text-anchor="middle">سماوه</text>

<!-- Legend -->
<g transform="translate(100,580)">
  <circle cx="8" cy="8" r="8" fill="rgba(231,76,60,0.3)" stroke="#e74c3c" stroke-width="1"/>
  <text x="22" y="12" fill="rgba(255,255,255,0.5)" font-size="8">اعتراض شدید (۱۰۰K+)</text>
  <circle cx="180" cy="8" r="5" fill="rgba(231,76,60,0.2)" stroke="#e74c3c" stroke-width="1"/>
  <text x="192" y="12" fill="rgba(255,255,255,0.5)" font-size="8">اعتراض فعال</text>
  <circle cx="320" cy="8" r="5" fill="rgba(255,255,255,0.05)" stroke="rgba(255,255,255,0.1)" stroke-width="1"/>
  <text x="332" y="12" fill="rgba(255,255,255,0.3)" font-size="8">بدون اعتراض</text>
</g>

<rect x="80" y="610" width="660" height="30" rx="4" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
<text x="410" y="630" fill="#e74c3c" font-size="10" font-weight="700" text-anchor="middle">⚡ نکته: تمام شهرهای معترض شیعه‌نشین هستند — شیعیان علیه حکومت شیعه قیام کردند</text>

<!-- ====== RIGHT TOP: TAHRIR REPUBLIC ====== -->
<rect x="785" y="105" width="575" height="290" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh52)"/>
<text x="1072" y="135" fill="#2ecc71" font-size="14" font-weight="900" text-anchor="middle">🏛️ «جمهوری تحریر» — دولت موازی مردمی</text>

<text x="805" y="162" fill="rgba(255,255,255,0.6)" font-size="11" font-weight="700">میدان تحریر بغداد: از میدان اعتراض → شهر مستقل</text>

<g transform="translate(805,175)">
  <rect x="0" y="0" width="255" height="42" rx="6" fill="rgba(46,204,113,0.08)" stroke="rgba(46,204,113,0.12)" stroke-width="1"/>
  <text x="127" y="17" fill="#2ecc71" font-size="10" font-weight="700" text-anchor="middle">📚 کتابخانه آزاد</text>
  <text x="127" y="33" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">اهدای هزاران کتاب</text>

  <rect x="270" y="0" width="255" height="42" rx="6" fill="rgba(0,180,216,0.08)" stroke="rgba(0,180,216,0.12)" stroke-width="1"/>
  <text x="397" y="17" fill="#00b4d8" font-size="10" font-weight="700" text-anchor="middle">🏥 بهداری صحرایی</text>
  <text x="397" y="33" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">داوطلبان پزشکی رایگان</text>

  <rect x="0" y="48" width="255" height="42" rx="6" fill="rgba(255,152,0,0.08)" stroke="rgba(255,152,0,0.12)" stroke-width="1"/>
  <text x="127" y="65" fill="#ff9800" font-size="10" font-weight="700" text-anchor="middle">🍞 آشپزخانه عمومی</text>
  <text x="127" y="81" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">غذای رایگان برای معترضان</text>

  <rect x="270" y="48" width="255" height="42" rx="6" fill="rgba(155,89,182,0.08)" stroke="rgba(155,89,182,0.12)" stroke-width="1"/>
  <text x="397" y="65" fill="#9b59b6" font-size="10" font-weight="700" text-anchor="middle">🎨 گالری هنر خیابانی</text>
  <text x="397" y="81" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">نقاشی دیواری + موسیقی زنده</text>

  <rect x="0" y="96" width="255" height="42" rx="6" fill="rgba(231,76,60,0.06)" stroke="rgba(231,76,60,0.1)" stroke-width="1"/>
  <text x="127" y="113" fill="#e74c3c" font-size="10" font-weight="700" text-anchor="middle">📡 رادیوی تحریر</text>
  <text x="127" y="129" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">پخش زنده اخبار اعتراضات</text>

  <rect x="270" y="96" width="255" height="42" rx="6" fill="rgba(212,175,55,0.06)" stroke="rgba(212,175,55,0.1)" stroke-width="1"/>
  <text x="397" y="113" fill="#d4af37" font-size="10" font-weight="700" text-anchor="middle">🛡️ نگهبانی داوطلبانه</text>
  <text x="397" y="129" fill="rgba(255,255,255,0.4)" font-size="8" text-anchor="middle">حفاظت ۲۴ ساعته میدان</text>
</g>

<rect x="805" y="325" width="530" height="52" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.12)" stroke-width="1"/>
<text x="1070" y="348" fill="#2ecc71" font-size="11" font-weight="700" text-anchor="middle">💡 «جمهوری تحریر» نشان داد: عراقیان می‌توانند بدون محاصصه زندگی کنند</text>
<text x="1070" y="368" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="middle">سنی و شیعه کنار هم غذا پختند، زخمی‌ها را درمان کردند، و کتاب خواندند</text>

<!-- ====== RIGHT BOTTOM: NASIRIYAH - BLOODIEST CITY ====== -->
<rect x="785" y="410" width="575" height="245" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh52)"/>
<text x="1072" y="440" fill="#e74c3c" font-size="14" font-weight="900" text-anchor="middle">💀 ناصریه: خونین‌ترین شهر تشرین</text>

<g transform="translate(805,455)">
  <rect x="0" y="0" width="170" height="60" rx="8" fill="rgba(231,76,60,0.1)" stroke="rgba(231,76,60,0.15)" stroke-width="1"/>
  <text x="85" y="22" fill="#e74c3c" font-size="18" font-weight="900" text-anchor="middle">۱۰۰+</text>
  <text x="85" y="42" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">کشته در ناصریه</text>
  <text x="85" y="54" fill="rgba(255,255,255,0.3)" font-size="7" text-anchor="middle">فقط در یک شهر</text>

  <rect x="185" y="0" width="170" height="60" rx="8" fill="rgba(255,152,0,0.1)" stroke="rgba(255,152,0,0.15)" stroke-width="1"/>
  <text x="270" y="22" fill="#ff9800" font-size="18" font-weight="900" text-anchor="middle">۲۸ نوامبر</text>
  <text x="270" y="42" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">کشتار ناصریه</text>
  <text x="270" y="54" fill="rgba(255,255,255,0.3)" font-size="7" text-anchor="middle">۴۶ کشته در ۱ روز</text>

  <rect x="370" y="0" width="170" height="60" rx="8" fill="rgba(155,89,182,0.08)" stroke="rgba(155,89,182,0.12)" stroke-width="1"/>
  <text x="455" y="22" fill="#9b59b6" font-size="18" font-weight="900" text-anchor="middle">صفر</text>
  <text x="455" y="42" fill="rgba(255,255,255,0.5)" font-size="9" text-anchor="middle">محاکمه عاملان</text>
  <text x="455" y="54" fill="rgba(255,255,255,0.3)" font-size="7" text-anchor="middle">مصونیت کامل</text>
</g>

<text x="805" y="535" fill="rgba(255,255,255,0.5)" font-size="10">شهود: نیروهای ویژه با لباس شخصی + تک‌تیراندازان روی پشت‌بام‌ها</text>
<text x="805" y="555" fill="rgba(255,255,255,0.5)" font-size="10">ناصریه = زادگاه ابراهیم الجعفری (نخست‌وزیر سابق) — اما فقیرترین شهرهای عراق</text>
<text x="805" y="575" fill="rgba(255,255,255,0.4)" font-size="9">آتش‌سوزی کنسولگری ایران در نجف (نوامبر ۲۰۱۹) = پیام مستقیم به تهران</text>

<rect x="805" y="590" width="530" height="50" rx="6" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
<text x="1070" y="610" fill="#e74c3c" font-size="10" font-weight="700" text-anchor="middle">⚠️ ۲۸ نوامبر ۲۰۱۹ = «پنجشنبه خونین» ناصریه</text>
<text x="1070" y="628" fill="rgba(255,255,255,0.4)" font-size="9" text-anchor="middle">بدترین کشتار غیرنظامیان از زمان صدام — توسط «حکومت منتخب دموکراتیک»!</text>

<!-- ====== FAR RIGHT: SOCIAL MEDIA ROLE ====== -->
<rect x="1385" y="105" width="475" height="550" rx="14" fill="rgba(255,255,255,0.04)" stroke="rgba(255,255,255,0.08)" stroke-width="1" filter="url(#sh52)"/>
<text x="1622" y="135" fill="#d4af37" font-size="14" font-weight="700" text-anchor="middle">📱 شبکه‌های اجتماعی و سانسور</text>

<g transform="translate(1405,155)">
  <rect x="0" y="0" width="435" height="52" rx="8" fill="rgba(231,76,60,0.08)" stroke="rgba(231,76,60,0.12)" stroke-width="1"/>
  <text x="15" y="20" fill="#e74c3c" font-size="12" font-weight="900">🚫 قطع اینترنت: ۴ بار در ۳ ماه</text>
  <text x="15" y="40" fill="rgba(255,255,255,0.5)" font-size="9">طولانی‌ترین: ۲۰ روز متوالی! (اکتبر ۲۰۱۹)</text>

  <rect x="0" y="60" width="435" height="52" rx="8" fill="rgba(255,152,0,0.08)" stroke="rgba(255,152,0,0.12)" stroke-width="1"/>
  <text x="15" y="80" fill="#ff9800" font-size="12" font-weight="900">🔒 VPN: ابزار حیاتی</text>
  <text x="15" y="100" fill="rgba(255,255,255,0.5)" font-size="9">معترضان با VPN + بلوتوث ویدئوها را منتشر کردند</text>

  <rect x="0" y="120" width="435" height="52" rx="8" fill="rgba(0,180,216,0.08)" stroke="rgba(0,180,216,0.12)" stroke-width="1"/>
  <text x="15" y="140" fill="#00b4d8" font-size="12" font-weight="900">📲 تلگرام: کانال اصلی هماهنگی</text>
  <text x="15" y="160" fill="rgba(255,255,255,0.5)" font-size="9">صدها کانال با میلیون‌ها عضو — سازمان‌دهی افقی</text>

  <rect x="0" y="180" width="435" height="52" rx="8" fill="rgba(155,89,182,0.08)" stroke="rgba(155,89,182,0.12)" stroke-width="1"/>
  <text x="15" y="200" fill="#9b59b6" font-size="12" font-weight="900">🎥 لایو استریم: شاهدان عینی</text>
  <text x="15" y="220" fill="rgba(255,255,255,0.5)" font-size="9">ویدئوهای تیراندازی واقعی — دولت نتوانست انکار کند</text>

  <rect x="0" y="240" width="435" height="52" rx="8" fill="rgba(46,204,113,0.06)" stroke="rgba(46,204,113,0.1)" stroke-width="1"/>
  <text x="15" y="260" fill="#2ecc71" font-size="12" font-weight="700">🌍 توجه جهانی (اما ناکافی)</text>
  <text x="15" y="280" fill="rgba(255,255,255,0.5)" font-size="9">UN, HRW, AI بیانیه دادند — اما هیچ اقدام عملی نشد</text>
</g>

<!-- Internet shutdown chart -->
<rect x="1405" y="465" width="435" height="85" rx="8" fill="rgba(255,255,255,0.02)" stroke="rgba(255,255,255,0.04)" stroke-width="1"/>
<text x="1622" y="488" fill="rgba(255,255,255,0.5)" font-size="10" font-weight="700" text-anchor="middle">📊 دوره‌های قطع اینترنت ۲۰۱۹</text>

<g transform="translate(1420,500)">
  <rect x="0" y="0" width="100" height="10" rx="2" fill="#e74c3c" opacity="0.5"/>
  <text x="110" y="9" fill="rgba(255,255,255,0.4)" font-size="7">۲-۷ اکتبر (