# ──────────────────────────────────────────────────────────
# part4_continued.ps1 — ادامه‌ی بخش ۴ + بخش ۵ و ۶
# ──────────────────────────────────────────────────────────

$projectDir = "$env:USERPROFILE\Desktop\Freedom_Article"
if (-not (Test-Path $projectDir)) { New-Item -ItemType Directory -Path $projectDir | Out-Null }

$part4c = @'

<!-- ادامه 4.6.2 پسااستعماری -->
<p>
  <strong>فرانتس فانون</strong> (<em>دوزخیان زمین</em>, 1961) آزادی را
  <strong>رهایی همزمان مادی و روانی</strong> از استعمار دانست.
  استعمار فقط سرزمین را اشغال نمی‌کند؛ <em>ذهن</em> و <em>هویت</em> مستعمَر را نیز
  تسخیر می‌کند. آزادی مستلزم &laquo;خلق انسان نو&raquo; است.
</p>
<blockquote style="border-right:4px solid var(--clr-accent); padding:1rem 1.5rem; background:#fdedec; border-radius:0 var(--radius) var(--radius) 0; margin:1rem 0; font-style:italic;">
  &laquo;استعمارزدایی همیشه پدیده‌ای خشن است&hellip;
  استعمارزدایی واقعاً خلق انسان‌های نو است.&raquo;
  <footer style="font-style:normal; font-size:.85rem; color:var(--clr-muted); margin-top:.5rem;">
    &mdash; Fanon, <em>The Wretched of the Earth</em> (1961), p. 35.
  </footer>
</blockquote>

<p>
  <strong>گایاتری اسپیواک</strong> (&laquo;آیا فرودست می‌تواند سخن بگوید؟&raquo;, 1988)
  پرسید: حتی پس از استقلال سیاسی، آیا فرودستان (subaltern) واقعاً &laquo;صدا&raquo; دارند؟
  آزادی مستلزم <em>عاملیت شناختی</em> (epistemic agency) است: توانایی سخن‌گفتن
  و شنیده‌شدن در ساختارهای دانش.
</p>

<p>
  <strong>آشیل مبمبه</strong> (<em>Necropolitics</em>, 2003) مفهوم &laquo;نکروسیاست&raquo;
  (سیاست مرگ) را معرفی کرد: در جهان پسااستعماری، حاکمیت نه فقط بر زندگی
  بلکه بر <em>مرگ</em> اِعمال می‌شود. آزادی در برابر نکروسیاست = حق زیستن.
</p>

<div class="diagram-wrapper">
  <div class="diagram-title">نقشه‌ی تعابیر فمینیستی و پسااستعماری آزادی</div>
  <pre class="mermaid">
flowchart TB
    subgraph FEM["&#9792; تعابیر فمینیستی"]
        F_PAT["پیتمن\nنقد قرارداد جنسی\n1988"]
        F_REL["اوشانا & مک‌کنزی\nخودآیینی رابطه‌ای\n2000s"]
        F_BUT["باتلر\nمقاومت پرفورماتیو\n1990-2004"]
        F_HOOKS["بل هوکس\nآزادی تقاطعی\n1984"]
    end
    subgraph POST["&#127758; تعابیر پسااستعماری"]
        P_FAN["فانون\nرهایی‌ + خلق انسان نو\n1961"]
        P_SPI["اسپیواک\nعاملیت فرودست\n1988"]
        P_MBE["مبمبه\nدر برابر نکروسیاست\n2003"]
        P_SAI["سعید\nنقد شرق‌شناسی\n1978"]
    end

    FEM --> SHARED["&#11088; وجه مشترک:\nآزادی مستلزم نقد\nساختارهای قدرت\nنامرئی است"]
    POST --> SHARED

    style FEM fill:#f5eef8,stroke:#9b59b6,stroke-width:2px
    style POST fill:#fdebd0,stroke:#f39c12,stroke-width:2px
    style SHARED fill:#d4efdf,stroke:#27ae60,stroke-width:3px
    style F_BUT fill:#e8daef,stroke:#8e44ad
    style P_FAN fill:#fadbd8,stroke:#e74c3c
  </pre>
  <div class="diagram-caption">شکل ۴&ndash;۳: تعابیر فمینیستی و پسااستعماری و وجه مشترک آنها: نقد قدرت نامرئی</div>
</div>

<!-- ──── 4.7 Capability ──── -->
<h3 id="sec4-7">۴.۷ رویکرد توانمندی: سن و نوسبام</h3>

<h4>۴.۷.۱ آمارتیا سن: توسعه به‌مثابه آزادی</h4>
<p>
  آمارتیا سن در <em>Development as Freedom</em> (1999) استدلال کرد که آزادی
  هم <strong>هدف نهایی</strong> و هم <strong>ابزار اصلی</strong> توسعه است.
  آزادی = مجموعه‌ی <strong>توانمندی‌ها</strong> (capabilities) و
  <strong>عملکردها</strong> (functionings) که شخص واقعاً در دسترس دارد.
</p>
<p>سن پنج نوع آزادی ابزاری را شناسایی کرد:</p>
<table>
  <thead><tr><th>#</th><th>نوع آزادی ابزاری</th><th>توضیح</th></tr></thead>
  <tbody>
    <tr><td>۱</td><td>آزادی‌های سیاسی</td><td>حق رأی، آزادی بیان، مطبوعات</td></tr>
    <tr><td>۲</td><td>تسهیلات اقتصادی</td><td>دسترسی به بازار، اعتبار، اشتغال</td></tr>
    <tr><td>۳</td><td>فرصت‌های اجتماعی</td><td>آموزش، بهداشت</td></tr>
    <tr><td>۴</td><td>تضمین‌های شفافیت</td><td>اعتماد، صداقت، ضد فساد</td></tr>
    <tr><td>۵</td><td>امنیت حمایتی</td><td>شبکه‌های تأمین اجتماعی</td></tr>
  </tbody>
</table>

<h4>۴.۷.۲ مارتا نوسبام: ده توانمندی محوری</h4>
<p>
  نوسبام (<em>Women and Human Development</em>, 2000) فهرستی از ده توانمندی
  محوری پیشنهاد کرد که هر حکومت عادلی باید تضمین کند:
</p>
<table>
  <thead><tr><th>#</th><th>توانمندی</th><th>توضیح مختصر</th></tr></thead>
  <tbody>
    <tr><td>۱</td><td>زندگی</td><td>زیستن تا پایان عمر طبیعی</td></tr>
    <tr><td>۲</td><td>سلامت جسمانی</td><td>بهداشت، تغذیه، مسکن</td></tr>
    <tr><td>۳</td><td>تمامیت جسمانی</td><td>امنیت از خشونت، آزادی جنسی</td></tr>
    <tr><td>۴</td><td>حواس، تخیل، اندیشه</td><td>آموزش، آزادی بیان و دین</td></tr>
    <tr><td>۵</td><td>عواطف</td><td>دلبستگی، عشق، غم بدون ترس</td></tr>
    <tr><td>۶</td><td>عقل عملی</td><td>تصور خیر و برنامه‌ریزی زندگی</td></tr>
    <tr><td>۷</td><td>وابستگی اجتماعی</td><td>زیستن با دیگران، عزت نفس</td></tr>
    <tr><td>۸</td><td>سایر گونه‌ها</td><td>رابطه با طبیعت و حیوانات</td></tr>
    <tr><td>۹</td><td>بازی</td><td>خنده، تفریح، فراغت</td></tr>
    <tr><td>۱۰</td><td>کنترل بر محیط</td><td>مشارکت سیاسی + مالکیت</td></tr>
  </tbody>
</table>

<div class="card accent-green">
  <h4>&#128161; اهمیت رویکرد توانمندی</h4>
  <p>
    رویکرد توانمندی <strong>پلی</strong> بین آزادی منفی و مثبت می‌زند:
    هم حقوق فردی (عدم مداخله) را می‌پذیرد و هم شرایط مادی و اجتماعی
    (توانمندسازی) را ضروری می‌داند. از این رو، به <em>شاخص توسعه‌ی انسانی</em>
    (HDI) سازمان ملل بدل شد و تأثیر عملی عظیمی داشت.
  </p>
</div>

<!-- ──── 4.8 Analytical Comparison ──── -->
<h3 id="sec4-8">۴.۸ مقایسه‌ی تحلیلی و منطقی</h3>

<p>
  اکنون می‌توانیم هفت تعبیر اصلی را بر اساس معیارهای تحلیلی مقایسه کنیم.
  از ساختار سه‌گانه‌ی مک‌کالوم (X از Y آزاد است تا Z) به‌عنوان چارچوب استفاده می‌کنیم:
</p>

<div style="overflow-x:auto;">
<table>
  <thead>
    <tr>
      <th style="min-width:120px;">تعبیر</th>
      <th>X (فاعل)</th>
      <th>Y (مانع/دشمن)</th>
      <th>Z (هدف)</th>
      <th>سطح تحلیل</th>
      <th>انسان‌شناسی زیربنایی</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background:#eaf2f8;">
      <td><strong>منفی (برلین)</strong></td>
      <td>فرد</td>
      <td>مداخله‌ی عمدی دیگران</td>
      <td>هر عملی</td>
      <td>سیاسی</td>
      <td>فرد عقلانی خودبسنده</td>
    </tr>
    <tr style="background:#eafaf1;">
      <td><strong>مثبت (کانت/تیلور)</strong></td>
      <td>خودِ عقلانی/اصیل</td>
      <td>امیال غیرعقلانی، فریب</td>
      <td>زندگی اصیل/اخلاقی</td>
      <td>اخلاقی-روانی</td>
      <td>انسان دوپاره (عقل/میل)</td>
    </tr>
    <tr style="background:#fef9e7;">
      <td><strong>جمهوری‌خواهانه (پتیت)</strong></td>
      <td>شهروند</td>
      <td>قدرت خودسرانه (سلطه)</td>
      <td>زیستن بدون ترس</td>
      <td>نهادی-حقوقی</td>
      <td>انسان آسیب‌پذیر در روابط قدرت</td>
    </tr>
    <tr style="background:#fdedec;">
      <td><strong>مارکسیستی</strong></td>
      <td>طبقه‌ی کارگر / نوع بشر</td>
      <td>استثمار، ازخودبیگانگی</td>
      <td>خلاقیت آزاد، رشد همه‌جانبه</td>
      <td>اقتصادی-ساختاری</td>
      <td>انسان = موجود خلاق کارورز</td>
    </tr>
    <tr style="background:#f4ecf7;">
      <td><strong>اگزیستانسیال (سارتر)</strong></td>
      <td>آگاهی (pour-soi)</td>
      <td>بدایمانی، شیءوارگی</td>
      <td>انتخاب اصیل</td>
      <td>هستی‌شناختی</td>
      <td>انسان = آگاهی بدون ذات</td>
    </tr>
    <tr style="background:#d0ece7;">
      <td><strong>توانمندی (سن)</strong></td>
      <td>هر شخص</td>
      <td>محرومیت، فقر، تبعیض</td>
      <td>عملکردهای ارزشمند</td>
      <td>چندبُعدی</td>
      <td>انسان = عامل فعال نیازمند شرایط</td>
    </tr>
    <tr style="background:#f5eef8;">
      <td><strong>انتقادی/پسا (فوکو)</strong></td>
      <td>سوژه‌ی تاریخی</td>
      <td>انقیاد، هنجارسازی</td>
      <td>خودآفرینی، پَرِّزیا</td>
      <td>تبارشناختی</td>
      <td>سوژه = محصول/مقاومت‌کننده‌ی قدرت</td>
    </tr>
  </tbody>
</table>
</div>

<div class="diagram-wrapper">
  <div class="diagram-title">مقایسه‌ی رادار: هفت تعبیر بر اساس پنج معیار</div>
  <pre class="mermaid">
%%{init: {'theme': 'base', 'themeVariables': {'primaryColor': '#1a5276'}}}%%
quadrantChart
    title Conceptual Space of Freedom Theories
    x-axis Individual Focus --> Structural Focus
    y-axis Formal/Legal --> Substantive/Material
    quadrant-1 Positive-Substantive
    quadrant-2 Negative-Formal
    quadrant-3 Structural-Formal
    quadrant-4 Structural-Substantive
    Berlin: [0.2, 0.25]
    Hayek: [0.15, 0.2]
    Kant: [0.35, 0.55]
    Taylor: [0.4, 0.65]
    Pettit: [0.55, 0.45]
    Rawls: [0.5, 0.6]
    Sen: [0.6, 0.8]
    Marx: [0.85, 0.85]
    Sartre: [0.25, 0.7]
    Arendt: [0.5, 0.55]
    Foucault: [0.75, 0.7]
    Nussbaum: [0.6, 0.85]
  </pre>
  <div class="diagram-caption">شکل ۴&ndash;۴: فضای مفهومی نظریه‌های آزادی. محور افقی: تمرکز فردی ← ساختاری. محور عمودی: صوری/حقوقی ← مادی/واقعی.</div>
</div>

</section>

<!-- ═══════════════════ SECTION 5 ═══════════════════ -->
<section id="sec5">
<h2 class="section-title"><span class="num">۵</span> مفاهیم مجاور و مکمل آزادی</h2>

<div class="info-box">
  آزادی هرگز به‌تنهایی فهمیده نمی‌شود. مجموعه‌ای از مفاهیم مجاور وجود دارند
  که بدون توجه به آن‌ها، تحلیل آزادی ناقص می‌ماند.
</div>

<div class="diagram-wrapper">
  <div class="diagram-title">نقشه‌ی مفهومی: آزادی و مفاهیم مجاور</div>
  <pre class="mermaid">
mindmap
  root((FREEDOM))
    Justice
      Rawls: Priority of liberty
      Relationship: Are freedom and equality compatible?
    Equality
      Formal equality of rights
      Substantive equality of opportunity
      Tension: Liberty vs Equality
    Autonomy
      Kant: Moral autonomy
      Relational autonomy
      Political self-determination
    Power
      Foucault: Power/Knowledge
      Domination vs Authority
      Empowerment
    Rights
      Natural rights - Locke
      Human rights - UN 1948
      Positive vs Negative rights
    Democracy
      Participatory - Aristotle/Arendt
      Representative - Mill
      Deliberative - Habermas
    Dignity
      Kant: Inherent worth
      Nussbaum: Capabilities floor
    Responsibility
      Sartre: Freedom = Responsibility
      Levinas: Responsibility for the Other
    Recognition
      Hegel: Master-Slave
      Taylor: Politics of Recognition
      Honneth: Struggle for Recognition
    Security
      Hobbes: Security vs Freedom
      Arendt: Freedom requires worldly stability
    Solidarity
      Marx: Class solidarity
      Durkheim: Organic solidarity
      Tension: Individual freedom vs Collective bonds
  </pre>
  <div class="diagram-caption">شکل ۵&ndash;۱: نقشه‌ی ذهنی مفاهیم مجاور و مکمل آزادی</div>
</div>

<h3>۵.۱ فهرست تشریحی مفاهیم مجاور</h3>

<div class="card accent-primary">
  <h4>&#9878; عدالت (Justice)</h4>
  <p>
    <strong>پرسش محوری:</strong> آیا آزادی و عدالت همیشه سازگارند؟
    <strong>رالز</strong> (1971) استدلال کرد که &laquo;اصل اول&raquo; عدالت
    تقدم آزادی‌های پایه بر عدالت توزیعی است&mdash;ولی آزادی بدون
    حداقلی از عدالت توزیعی بی‌معناست (اصل تفاوت).
    <strong>نوزیک</strong> در مقابل: هر توزیعی که نتیجه‌ی مبادله‌ی آزادانه باشد عادلانه است.
    <strong>سن</strong>: عدالت = گسترش توانمندی‌ها = آزادی. عدالت و آزادی یکی‌اند.
  </p>
</div>

<div class="card accent-green">
  <h4>&#9878; برابری (Equality)</h4>
  <p>
    <strong>تنش کلاسیک:</strong> آیا آزادی و برابری تضاد دارند؟
    <strong>راست:</strong> برابری‌سازی اجباری، آزادی را نقض می‌کند (هایک).
    <strong>چپ:</strong> نابرابری شدید خود نفی آزادی است (مارکس).
    <strong>میانه:</strong> برابری فرصت (نه نتیجه) با آزادی سازگار است (رالز).
    <strong>سن:</strong> &laquo;برابری چه چیزی؟&raquo;&mdash;باید در توانمندی‌ها برابری خواست.
  </p>
</div>

<div class="card accent-gold">
  <h4>&#9878; خودآیینی (Autonomy)</h4>
  <p>
    مفهومی نزدیک‌تر از عدالت به آزادی. خودآیینی = <em>خودقانون‌گذاری</em>.
    تفاوت ظریف: آزادی ممکن است بیرونی باشد (نبودِ مانع)
    ولی خودآیینی همیشه <em>درونی</em> است (حکومت عقل بر میل).
    خودآیینی رابطه‌ای (مک‌کنزی) نشان داد که خودآیینی فردی
    محصول شرایط اجتماعی مناسب است.
  </p>
</div>

<div class="card accent-right">
  <h4>&#9878; قدرت (Power)</h4>
  <p>
    <strong>فوکو:</strong> قدرت نه فقط سرکوب‌گر بلکه <em>تولیدکننده</em> است&mdash;سوژه‌ها را می‌سازد.
    آزادی نه &laquo;بیرون&raquo; قدرت بلکه <em>در درون</em> روابط قدرت و به‌شکل مقاومت ممکن است.
    <strong>لوکس</strong> (<em>Power: A Radical View</em>, 1974/2005): بُعد سوم قدرت = شکل‌دهی به خواست‌ها.
    اگر خواست‌های شما توسط قدرت شکل گرفته، عدم مداخله کافی نیست.
  </p>
</div>

<div class="card accent-primary">
  <h4>&#9878; حقوق (Rights)</h4>
  <p>
    آزادی و حقوق گاه یکی انگاشته می‌شوند ولی تفاوت مهمی دارند.
    حقوق = <em>ادعاهای قانونی/اخلاقی</em> علیه دیگران.
    آزادی = <em>وضعیتِ</em> فاعل. حق آزادی بیان = ادعای من علیه دولت
    که مداخله نکند. اما ممکن است حقی داشته باشم و هنوز آزاد نباشم
    (مثلاً حق کار دارم ولی کاری نیست).
  </p>
</div>

<div class="card accent-green">
  <h4>&#9878; دموکراسی (Democracy)</h4>
  <p>
    آیا دموکراسی شرط آزادی است یا برعکس؟
    <strong>آرنت:</strong> آزادی فقط در مشارکت سیاسی ممکن است (دموکراسی شرط).
    <strong>برلین:</strong> لزوماً نه&mdash;دموکراسی ممکن است به استبداد اکثریت بینجامد.
    <strong>هابرماس:</strong> دموکراسی مشورتی = تحقق &laquo;آزادی ارتباطی&raquo;.
  </p>
</div>

<div class="card accent-gold">
  <h4>&#9878; کرامت (Dignity)</h4>
  <p>
    <strong>کانت:</strong> انسان غایت‌فی‌ذاته است و کرامت ذاتی دارد.
    کرامت <em>بنیاد</em> آزادی است: چون انسان کرامت دارد، باید آزاد باشد.
    ماده‌ی ۱ اعلامیه‌ی جهانی حقوق بشر (۱۹۴۸): &laquo;تمام افراد بشر آزاد و با کرامت و حقوق برابر زاده می‌شوند.&raquo;
  </p>
</div>

<div class="card accent-right">
  <h4>&#9878; مسئولیت (Responsibility)</h4>
  <p>
    <strong>سارتر:</strong> آزادی و مسئولیت دو روی یک سکه‌اند.
    <strong>لویناس:</strong> مسئولیت نامتناهی در برابر &laquo;دیگری&raquo;
    حتی پیش از آزادی می‌آید&mdash;اخلاق مقدم بر هستی‌شناسی است.
    <strong>یوناس:</strong> مسئولیت در برابر نسل‌های آینده حدّ آزادی کنونی ماست.
  </p>
</div>

<div class="card accent-primary">
  <h4>&#9878; شناسایی (Recognition)</h4>
  <p>
    <strong>هگل:</strong> دیالکتیک ارباب-بنده نشان‌دهنده‌ی نیاز متقابل به شناسایی.
    <strong>تیلور:</strong> &laquo;سیاست شناسایی&raquo;&mdash;هویت‌ها باید به رسمیت شناخته شوند.
    <strong>هونت:</strong> سه حوزه‌ی شناسایی: عشق، حقوق، و ارج‌گذاری اجتماعی.
    بدون شناسایی، آزادی ناقص است.
  </p>
</div>

<div class="card accent-green">
  <h4>&#9878; امنیت (Security)</h4>
  <p>
    <strong>هابز:</strong> امنیت مقدم بر آزادی است&mdash;بدون امنیت، آزادی بی‌معناست.
    <strong>برلین:</strong> امنیت و آزادی ممکن است تعارض داشته باشند.
    بحث‌های پس از ۱۱ سپتامبر: چقدر آزادی را می‌توان به‌نام امنیت قربانی کرد؟
  </p>
</div>

<div class="card accent-gold">
  <h4>&#9878; همبستگی (Solidarity)</h4>
  <p>
    آیا آزادی فردی با همبستگی جمعی سازگار است؟
    <strong>مارکس:</strong> همبستگی طبقاتی شرط رهایی.
    <strong>دورکیم:</strong> همبستگی ارگانیک (تقسیم کار) بستر آزادی مدرن.
    <strong>رورتی:</strong> همبستگی نه بر اصول جهان‌شمول بلکه بر &laquo;حساسیت به درد دیگران&raquo; بنا شود.
  </p>
</div>

</section>

<!-- ═══════════════════ SECTION 6 ═══════════════════ -->
<section id="sec6">
<h2 class="section-title"><span class="num">۶</span> جدول آثار اصلی نظریه‌پردازان</h2>

<div class="info-box">
  جدول زیر برای مطالعه‌ی بیشتر و تحقیق عمیق‌تر تهیه شده است.
  آثار به ترتیب تاریخی مرتب شده‌اند.
</div>

<div style="overflow-x:auto;">
<table>
  <thead>
    <tr>
      <th style="min-width:110px;">نظریه‌پرداز</th>
      <th style="min-width:200px;">اثر اصلی</th>
      <th>سال</th>
      <th>تعبیر آزادی</th>
      <th>زبان اصلی</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>افلاطون</td><td><em>Politeia</em> (جمهور)</td><td>~380 ق.م</td><td>خودبسندگی نفس</td><td>یونانی</td></tr>
    <tr><td>ارسطو</td><td><em>Politics</em> (سیاست)</td><td>~335 ق.م</td><td>مشارکت سیاسی</td><td>یونانی</td></tr>
    <tr><td>اپیکتتوس</td><td><em>Discourses</em> (گفتارها)</td><td>~108 م</td><td>آزادی درونی</td><td>یونانی</td></tr>
    <tr><td>آگوستین</td><td><em>De Libero Arbitrio</em></td><td>395</td><td>اختیار آزاد</td><td>لاتین</td></tr>
    <tr><td>غزالی</td><td><em>احیاء علوم‌الدین</em></td><td>~1100</td><td>بندگی خدا = آزادی</td><td>عربی</td></tr>
    <tr><td>آکویناس</td><td><em>Summa Theologiae</em></td><td>1265-74</td><td>قانون طبیعی + اختیار</td><td>لاتین</td></tr>
    <tr><td>هابز</td><td><em>Leviathan</em></td><td>1651</td><td>عدم مانع خارجی</td><td>انگلیسی</td></tr>
    <tr><td>اسپینوزا</td><td><em>Ethica</em></td><td>1677</td><td>آزادی عقلانی</td><td>لاتین</td></tr>
    <tr><td>لاک</td><td><em>Two Treatises of Government</em></td><td>1689</td><td>حقوق طبیعی + رضایت</td><td>انگلیسی</td></tr>
    <tr><td>روسو</td><td><em>Du Contrat Social</em></td><td>1762</td><td>خودقانون‌گذاری</td><td>فرانسوی</td></tr>
    <tr><td>کانت</td><td><em>Grundlegung zur Metaphysik der Sitten</em></td><td>1785</td><td>خودآیینی عقل عملی</td><td>آلمانی</td></tr>
    <tr><td>کنستان</td><td><em>De la libert&eacute; des Anciens&hellip;</em></td><td>1819</td><td>آزادی متأخران</td><td>فرانسوی</td></tr>
    <tr><td>هگل</td><td><em>Grundlinien der Philosophie des Rechts</em></td><td>1821</td><td>خودتحقق‌بخشی در Sittlichkeit</td><td>آلمانی</td></tr>
    <tr><td>مارکس</td><td><em>&Ouml;konomisch-philosophische Manuskripte</em></td><td>1844</td><td>رهایی از ازخودبیگانگی</td><td>آلمانی</td></tr>
    <tr><td>میل</td><td><em>On Liberty</em></td><td>1859</td><td>فردیت + عدم آسیب</td><td>انگلیسی</td></tr>
    <tr><td>نیچه</td><td><em>Jenseits von Gut und B&ouml;se</em></td><td>1886</td><td>خلق ارزش</td><td>آلمانی</td></tr>
    <tr><td>گرین</td><td><em>Lectures on Political Obligation</em></td><td>1886</td><td>آزادی مثبت</td><td>انگلیسی</td></tr>
    <tr><td>فروم</td><td><em>Escape from Freedom</em></td><td>1941</td><td>آزادی مثبت vs گریز</td><td>انگلیسی</td></tr>
    <tr><td>سارتر</td><td><em>L'&Ecirc;tre et le N&eacute;ant</em></td><td>1943</td><td>انتخاب وجودی</td><td>فرانسوی</td></tr>
    <tr><td>آرنت</td><td><em>The Human Condition</em></td><td>1958</td><td>کنش سیاسی</td><td>انگلیسی</td></tr>
    <tr><td>برلین</td><td><em>Two Concepts of Liberty</em></td><td>1958</td><td>منفی vs مثبت</td><td>انگلیسی</td></tr>
    <tr><td>هایک</td><td><em>The Constitution of Liberty</em></td><td>1960</td><td>عدم اجبار</td><td>انگلیسی</td></tr>
    <tr><td>فانون</td><td><em>Les Damn&eacute;s de la Terre</em></td><td>1961</td><td>رهایی استعماری</td><td>فرانسوی</td></tr>
    <tr><td>مارکوزه</td><td><em>One-Dimensional Man</em></td><td>1964</td><td>رهایی از سرکوب مازاد</td><td>انگلیسی</td></tr>
    <tr><td>مک‌کالوم</td><td><em>Negative and Positive Freedom</em></td><td>1967</td><td>ساختار سه‌گانه</td><td>انگلیسی</td></tr>
    <tr><td>رالز</td><td><em>A Theory of Justice</em></td><td>1971</td><td>آزادی‌های پایه‌ی برابر</td><td>انگلیسی</td></tr>
    <tr><td>نوزیک</td><td><em>Anarchy, State, and Utopia</em></td><td>1974</td><td>مالکیت بر خود</td><td>انگلیسی</td></tr>
    <tr><td>فوکو</td><td><em>Surveiller et Punir</em></td><td>1975</td><td>مقاومت / خودآفرینی</td><td>فرانسوی</td></tr>
    <tr><td>تیلور</td><td><em>What's Wrong with Negative Liberty?</em></td><td>1979</td><td>ارزیابی قوی</td><td>انگلیسی</td></tr>
    <tr><td>اسپیواک</td><td><em>Can the Subaltern Speak?</em></td><td>1988</td><td>عاملیت فرودست</td><td>انگلیسی</td></tr>
    <tr><td>پتیت</td><td><em>Republicanism</em></td><td>1997</td><td>عدم سلطه</td><td>انگلیسی</td></tr>
    <tr><td>سن</td><td><em>Development as Freedom</em></td><td>1999</td><td>توانمندی واقعی</td><td>انگلیسی</td></tr>
    <tr><td>نوسبام</td><td><em>Women and Human Development</em></td><td>2000</td><td>ده توانمندی محوری</td><td>انگلیسی</td></tr>
    <tr><td>فریکر</td><td><em>Epistemic Injustice</em></td><td>2007</td><td>عدالت شناختی</td><td>انگلیسی</td></tr>
    <tr><td>هونت</td><td><em>Freedom's Right</em></td><td>2014</td><td>شناسایی متقابل</td><td>آلمانی</td></tr>
    <tr><td>لسیگ</td><td><em>Code: Version 2.0</em></td><td>2006</td><td>آزادی دیجیتال</td><td>انگلیسی</td></tr>
  </tbody>
</table>
</div>

</section>
'@

[System.IO.File]::WriteAllText("$projectDir\part4c.html", $part4c, [System.Text.Encoding]::UTF8)
Write-Host "Part 4-continued + Sections 5-6 written to $projectDir\part4c.html" -ForegroundColor Green