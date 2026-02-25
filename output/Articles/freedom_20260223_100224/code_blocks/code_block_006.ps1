# ──────────────────────────────────────────────────────────
# part2.ps1 — بخش دوم: هفت موج تحول (کامل)
# ──────────────────────────────────────────────────────────

$projectDir = "$env:USERPROFILE\Desktop\Freedom_Article"
if (-not (Test-Path $projectDir)) { New-Item -ItemType Directory -Path $projectDir | Out-Null }

$part2 = @'

<!-- ═══════════════════ SECTION 2 ═══════════════════ -->
<section id="sec2">
<h2 class="section-title"><span class="num">۲</span> هفت موج تحول در مفهوم آزادی</h2>

<div class="info-box">
  <strong>&#127754; روش‌شناسی &laquo;موج&raquo;:</strong>
  تاریخ تعبیرسازی از آزادی را به هفت &laquo;موج&raquo; تقسیم می‌کنیم.
  هر موج در پاسخ به <em>بحرانی تاریخی</em> و در <em>جدالی فکری</em> شکل گرفته
  و <em>نتایج نهادی</em> مشخصی داشته است:
  <strong>زمینه‌ها &rarr; نظریه &rarr; نتایج &rarr; نقد</strong>.
</div>

<div class="diagram-wrapper">
  <div class="diagram-title">نمای کلی: هفت موج و جریان تحول</div>
  <pre class="mermaid">
flowchart LR
    W1["&#127754; موج ۱\nباستان\n500 BCE"]
    W2["&#127754; موج ۲\nقرون وسطی\n400-1400"]
    W3["&#127754; موج ۳\nمدرن اولیه\n1500-1750"]
    W4["&#127754; موج ۴\nقرن ۱۹\n1800-1900"]
    W5["&#127754; موج ۵\nاواسط ق۲۰\n1940-1970"]
    W6["&#127754; موج ۶\nاواخر ق۲۰\n1970-2000"]
    W7["&#127754; موج ۷\nقرن ۲۱\n2000+"]

    W1 ==> W2 ==> W3 ==> W4 ==> W5 ==> W6 ==> W7

    style W1 fill:#1a5276,color:#fff
    style W2 fill:#7d3c98,color:#fff
    style W3 fill:#b7950b,color:#fff
    style W4 fill:#b03a2e,color:#fff
    style W5 fill:#148f77,color:#fff
    style W6 fill:#2e86c1,color:#fff
    style W7 fill:#17a589,color:#fff
  </pre>
</div>

<!-- ════════ WAVE 1 ════════ -->
<div class="wave-card" id="wave1" style="border-right-color:#1a5276;">
  <div class="wave-num" style="color:#1a5276;">۱</div>
  <h3>موج اول: از بردگی تا شهروندی <span class="badge badge-blue">یونان و روم باستان &#8226; ۵۰۰ ق.م&ndash;۳۰۰ م</span></h3>

  <h4>&#128204; زمینه‌ی تاریخی</h4>
  <p>
    در یونان باستان، آزادی (<em>eleutheria</em>) پیش از آنکه مفهومی فلسفی باشد،
    <strong>وضعیتی اجتماعی&ndash;حقوقی</strong> بود: آزاد کسی بود که برده نبود.
    جنگ‌های ایران و یونان (۴۹۰&ndash;۴۷۹ ق.م) نخستین بار تمایز &laquo;آزاد/بنده&raquo; را
    به سطح گفتمان سیاسی آورد. هرودوت یونانیان را &laquo;آزاد&raquo; و ایرانیان را
    &laquo;بندگان شاه&raquo; خواند&mdash;تقابلی که بیش از واقعیت، ابزار هویت‌سازی بود
    (ر.ک. <a href="#appA">پیوست الف</a> برای نقد این روایت از منظر ایرانشهری).
  </p>

  <h4>&#128218; نظریه‌ها</h4>
  <table>
    <thead><tr><th>متفکر</th><th>تعبیر آزادی</th><th>اثر کلیدی</th><th>گزاره‌ی محوری</th></tr></thead>
    <tbody>
      <tr><td>ارسطو</td><td>مشارکت سیاسی</td><td><em>سیاست</em></td><td>آزادی = به‌نوبت فرمان‌دادن و فرمان‌بردن (۱۳۱۷a)</td></tr>
      <tr><td>افلاطون</td><td>خودبسندگی نفس</td><td><em>جمهور</em> کتاب ۴</td><td>آزادی = حکومت عقل بر شهوت و غضب</td></tr>
      <tr><td>اپیکتتوس</td><td>آزادی درونی</td><td><em>گفتارها</em></td><td>آزاد کسی است که فقط به آنچه در اختیار اوست بیندیشد</td></tr>
      <tr><td>سیسرو</td><td>وضعیت حقوقی</td><td><em>درباره‌ی جمهوری</em></td><td>Libertas = عدم وابستگی به اراده‌ی خودسرانه‌ی دیگری</td></tr>
    </tbody>
  </table>

  <h4>&#9940; دشمن مفهومی</h4>
  <p><span class="badge badge-red">بردگی (douleia)</span> <span class="badge badge-red">استبداد (tyrannis)</span> <span class="badge badge-red">بربریت</span></p>

  <h4>&#128200; نتایج و نقد</h4>
  <div class="card accent-primary">
    <strong>نتایج نهادی:</strong> دموکراسی آتنی، جمهوری روم، حقوق شهروندی.<br/>
    <strong>نقد اصلی:</strong> آزادی یونانی <em>انحصاری</em> بود&mdash;بردگان، زنان، و بیگانگان محروم بودند.
    آزادی رواقی جهان‌شمول بود ولی با <em>پذیرش وضع موجود</em> و کناره‌گیری از سیاست همراه بود.
  </div>
</div>

<!-- ════════ WAVE 2 ════════ -->
<div class="wave-card" id="wave2" style="border-right-color:#7d3c98;">
  <div class="wave-num" style="color:#7d3c98;">۲</div>
  <h3>موج دوم: اختیار و اراده <span class="badge badge-purple">قرون وسطی &#8226; ۴۰۰&ndash;۱۴۰۰ م</span></h3>

  <h4>&#128204; زمینه‌ی تاریخی</h4>
  <p>
    با ظهور مسیحیت و اسلام، پرسش از آزادی از حوزه‌ی <em>سیاسی</em> به حوزه‌ی
    <strong>الهیاتی و متافیزیکی</strong> منتقل شد. مسئله‌ی محوری این بود:
    اگر خداوند عالِم مطلق و قادر مطلق است، انسان چگونه می‌تواند <em>مختار</em> باشد؟
    این پرسش در مسیحیت به مسئله‌ی <em>liberum arbitrium</em> (اختیار آزاد) و
    در اسلام به جدال <em>جبر و اختیار</em> (قدریه، جبریه، اشاعره، معتزله) انجامید.
  </p>

  <h4>&#128218; نظریه‌ها</h4>
  <table>
    <thead><tr><th>متفکر</th><th>سنت</th><th>تعبیر آزادی</th><th>گزاره‌ی محوری</th></tr></thead>
    <tbody>
      <tr><td>آگوستین</td><td>مسیحی</td><td>اختیار آزاد</td><td>اراده آزاد است ولی به‌دلیل گناه اولیه به سوی شر تمایل دارد؛ نجات فقط با فیض الهی ممکن است</td></tr>
      <tr><td>آکویناس</td><td>مسیحی</td><td>قانون طبیعی + اختیار</td><td>عقل انسان قادر به کشف قانون طبیعی است؛ آزادی = انتخاب مطابق عقل و قانون الهی</td></tr>
      <tr><td>معتزله</td><td>اسلامی</td><td>عدل و اختیار</td><td>انسان خالق افعال خویش است؛ بدون اختیار، عدالت الهی بی‌معنا می‌شود</td></tr>
      <tr><td>اشاعره</td><td>اسلامی</td><td>کسب</td><td>خداوند خالق فعل است؛ انسان &laquo;کاسب&raquo; فعل است (نظریه‌ی کسب)</td></tr>
      <tr><td>غزالی</td><td>اسلامی&ndash;عرفانی</td><td>آزادی = بندگی خدا</td><td>آزادی حقیقی رهایی از بندگی نَفس و سلوک به‌سوی خداست</td></tr>
      <tr><td>مولانا</td><td>عرفان اسلامی</td><td>رهایی روح</td><td>&laquo;من بنده‌ی آنم که آزادی دهد&raquo;&mdash;رهایی در فنای فی‌الله</td></tr>
    </tbody>
  </table>

  <h4>&#9940; دشمن مفهومی</h4>
  <p>
    <span class="badge badge-red">جبر (determinism)</span>
    <span class="badge badge-red">گناه / نَفس</span>
    <span class="badge badge-red">جهل و غفلت</span>
  </p>

  <h4>&#128200; نتایج و نقد</h4>
  <div class="card accent-primary">
    <strong>نتایج:</strong> مفهوم <em>وجدان آزاد</em> (آزادی درونی ایمان)،
    زمینه‌سازی برای &laquo;آزادی وجدان&raquo; دوره‌ی مدرن، عرفان به‌مثابه تجربه‌ی رهایی.<br/>
    <strong>نقد:</strong> آزادی به حوزه‌ی <em>درونی/متافیزیکی</em> محدود ماند.
    نظام‌های سیاسی قرون‌وسطایی (فئودالیسم، خلافت) به‌ندرت آزادی سیاسی فراهم می‌کردند.
    عرفان با همه‌ی زیبایی‌اش، گاه به <strong>بی‌اعتنایی به ستم سیاسی</strong> منجر شد.
  </div>
</div>

<!-- ════════ WAVE 3 ════════ -->
<div class="wave-card" id="wave3" style="border-right-color:#b7950b;">
  <div class="wave-num" style="color:#b7950b;">۳</div>
  <h3>موج سوم: حقوق طبیعی و قرارداد اجتماعی <span class="badge badge-gold">مدرن اولیه &#8226; ۱۵۰۰&ndash;۱۷۸۹</span></h3>

  <h4>&#128204; زمینه‌ی تاریخی</h4>
  <p>
    اصلاحات دینی (لوتر، ۱۵۱۷)، جنگ‌های مذهبی اروپا، انقلاب باشکوه انگلستان (۱۶۸۸)،
    و عصر روشنگری بستر تحول بزرگی شدند. پرسش محوری این بود:
    <strong>مشروعیت حکومت از کجا می‌آید؟</strong> و <strong>حدود اقتدار دولت بر فرد کجاست؟</strong>
    آزادی از حوزه‌ی الهیات به حوزه‌ی <em>حقوق طبیعی و فلسفه‌ی سیاسی</em> بازگشت.
  </p>

  <h4>&#128218; نظریه‌ها</h4>
  <table>
    <thead><tr><th>متفکر</th><th>تعبیر آزادی</th><th>اثر کلیدی</th><th>گزاره‌ی محوری</th></tr></thead>
    <tbody>
      <tr><td>هابز (۱۶۵۱)</td><td>عدم مانع خارجی</td><td><em>لویاتان</em></td><td>آزادی = نبودِ موانع بیرونیِ حرکت. در وضع طبیعی آزادی مطلق ولی ناامن است.</td></tr>
      <tr><td>لاک (۱۶۸۹)</td><td>حقوق طبیعی + رضایت</td><td><em>دو رساله در حکومت</em></td><td>آزادی = عدم تابعیتِ اراده‌ی خودسرانه‌ی دیگری + حقوق زندگی، آزادی، و مالکیت</td></tr>
      <tr><td>اسپینوزا (۱۶۷۷)</td><td>آزادی عقلانی</td><td><em>اخلاق</em></td><td>آزاد کسی است که فقط از ضرورت طبیعت خود عمل کند = شناخت عقلانی</td></tr>
      <tr><td>روسو (۱۷۶۲)</td><td>خودقانون‌گذاری</td><td><em>قرارداد اجتماعی</em></td><td>&laquo;اطاعت از قانونی که خود وضع کرده‌ای، آزادی است&raquo;</td></tr>
      <tr><td>کانت (۱۷۸۵)</td><td>خودآیینی عقل</td><td><em>بنیاد مابعدالطبیعه‌ی اخلاق</em></td><td>آزادی = عمل بر طبق قانونی که عقل عملی خودْ وضع می‌کند (خودآیینی)</td></tr>
    </tbody>
  </table>

  <div class="diagram-wrapper">
    <div class="diagram-title">جریان تأثیر و تأثر در موج سوم</div>
    <pre class="mermaid">
flowchart LR
    LUTHER["لوتر\nآزادی وجدان\n1517"] --> LOCKE
    GROTIUS["گروتیوس\nحقوق طبیعی\n1625"] --> HOBBES
    GROTIUS --> LOCKE

    HOBBES["هابز\nعدم مانع\n1651"] --> LOCKE["لاک\nحقوق طبیعی\n1689"]
    HOBBES --> ROUSSEAU

    LOCKE --> ROUSSEAU["روسو\nاراده عمومی\n1762"]
    LOCKE --> AMER["انقلاب آمریکا\n1776"]

    SPINOZA["اسپینوزا\nآزادی عقلانی\n1677"] --> KANT

    ROUSSEAU --> KANT["کانت\nخودآیینی\n1785"]
    ROUSSEAU --> FRENCH["انقلاب فرانسه\n1789"]

    LOCKE --> FRENCH
    KANT --> HEGEL["هگل ← موج ۴"]

    style HOBBES fill:#d6eaf8,stroke:#2980b9
    style LOCKE fill:#d4efdf,stroke:#27ae60
    style ROUSSEAU fill:#fdebd0,stroke:#f39c12
    style KANT fill:#e8daef,stroke:#8e44ad
    style SPINOZA fill:#d0ece7,stroke:#1abc9c
    style LUTHER fill:#fadbd8,stroke:#e74c3c
    style GROTIUS fill:#f5eef8,stroke:#9b59b6
    style AMER fill:#fef9e7,stroke:#f1c40f,stroke-width:3px
    style FRENCH fill:#fef9e7,stroke:#f1c40f,stroke-width:3px
    </pre>
    <div class="diagram-caption">شکل ۲&ndash;۲: شبکه‌ی تأثیر و تأثر متفکران موج سوم و پیوند آن‌ها با انقلاب‌های بزرگ</div>
  </div>

  <h4>&#9940; دشمن مفهومی</h4>
  <p>
    <span class="badge badge-red">استبداد مطلقه (absolutism)</span>
    <span class="badge badge-red">تعصب مذهبی (intolerance)</span>
    <span class="badge badge-red">اقتدار خودسرانه (arbitrary power)</span>
  </p>

  <h4>&#128200; نتایج و نقد</h4>
  <div class="card accent-gold">
    <strong>نتایج نهادی:</strong> اعلامیه‌ی حقوق ویرجینیا (۱۷۷۶)، اعلامیه‌ی حقوق بشر و شهروند فرانسه (۱۷۸۹)، قانون اساسی آمریکا (Bill of Rights, ۱۷۹۱).<br/>
    <strong>تنش درونی:</strong> تقابل هابز (آزادی = عدم مانع، سازگار با دولت قوی) و لاک (آزادی = محدودیت دولت) هسته‌ی جدال لیبرالیسم و اقتدارگرایی شد.<br/>
    <strong>نقد:</strong> روسو و کانت آزادی را &laquo;اخلاقی&raquo; کردند و راه را برای سوءاستفاده‌ی احتمالی باز کردند: اگر &laquo;آزادی واقعی = اطاعت از اراده‌ی عمومی&raquo;، می‌توان کسی را &laquo;مجبور به آزاد بودن&raquo; کرد &mdash; هشداری که برلین دو قرن بعد جدی گرفت.
  </div>
</div>

<!-- ════════ WAVE 4 ════════ -->
<div class="wave-card" id="wave4" style="border-right-color:#b03a2e;">
  <div class="wave-num" style="color:#b03a2e;">۴</div>
  <h3>موج چهارم: فردیت و رهایی <span class="badge badge-red">قرن نوزدهم &#8226; ۱۸۰۰&ndash;۱۹۰۰</span></h3>

  <h4>&#128204; زمینه‌ی تاریخی</h4>
  <p>
    انقلاب صنعتی، ظهور طبقه‌ی کارگر، شهرنشینی انبوه، و استعمار اروپایی
    بافت جدیدی به مسئله‌ی آزادی بخشید. از یک سو، <strong>لیبرال‌ها</strong> (میل، کنستان، توکویل)
    نگران سلطه‌ی اکثریت و دولت بر فرد بودند؛ از سوی دیگر، <strong>سوسیالیست‌ها</strong> (مارکس، انگلس)
    آزادی صوری لیبرالی را &laquo;بورژوایی&raquo; و فریبکارانه می‌دانستند.
    بنیامین کنستان (۱۸۱۹) نخستین بار تمایز &laquo;آزادی قدما&raquo; (مشارکت سیاسی) و
    &laquo;آزادی متأخران&raquo; (عدم مداخله) را صورت‌بندی کرد.
  </p>

  <h4>&#128218; نظریه‌ها</h4>
  <table>
    <thead><tr><th>متفکر</th><th>تعبیر</th><th>اثر</th><th>گزاره‌ی محوری</th></tr></thead>
    <tbody>
      <tr><td>کنستان (۱۸۱۹)</td><td>آزادی متأخران</td><td><em>درباره آزادی قدما و متأخران</em></td><td>آزادی مدرن = بهره‌مندی آرام از استقلال خصوصی، نه مشارکت مستقیم</td></tr>
      <tr><td>هگل (۱۸۲۱)</td><td>خودتحقق‌بخشی</td><td><em>فلسفه‌ی حق</em></td><td>آزادی نه در انزوا بلکه در نهادهای اخلاقی (خانواده، جامعه مدنی، دولت) محقق می‌شود</td></tr>
      <tr><td>میل (۱۸۵۹)</td><td>فردیت + عدم آسیب</td><td><em>درباره‌ی آزادی</em></td><td>تنها دلیل مشروع برای محدود کردن آزادی فرد، جلوگیری از آسیب به دیگران است</td></tr>
      <tr><td>مارکس (۱۸۴۴)</td><td>رهایی از بیگانگی</td><td><em>دست‌نوشته‌های اقتصادی-فلسفی</em></td><td>آزادی بورژوایی صوری است؛ آزادی واقعی = رهایی از استثمار و ازخودبیگانگی</td></tr>
      <tr><td>نیچه (۱۸۸۶)</td><td>خلق ارزش</td><td><em>فراسوی نیک و بد</em></td><td>آزادی = قدرت خلق ارزش‌های نو؛ &laquo;آزاد برای چه؟&raquo; مهم‌تر از &laquo;آزاد از چه؟&raquo;</td></tr>
      <tr><td>گرین (۱۸۸۶)</td><td>آزادی مثبت</td><td><em>سخنرانی درباره مبانی تعهد سیاسی</em></td><td>آزادی = توانایی واقعی برای انجام آنچه ارزش انجام دادن دارد</td></tr>
    </tbody>
  </table>

  <div class="diagram-wrapper">
    <div class="diagram-title">دوگانه‌ی بزرگ قرن نوزدهم: فرد در برابر ساختار</div>
    <pre class="mermaid">
flowchart TB
    subgraph LEFT["&#128308; سنت چپ: رهایی ساختاری"]
        MARX["مارکس\nرهایی طبقاتی"]
        ENGELS["انگلس\nازخودبیگانگی"]
        BAKUNIN["باکونین\nآزادی آنارشیستی"]
    end
    subgraph RIGHT["&#128309; سنت لیبرال: فردیت"]
        CONSTANT["کنستان\nآزادی متأخران"]
        TOCQ["توکویل\nخطر استبداد اکثریت"]
        MILL["میل\nاصل آسیب"]
    end
    subgraph CENTER["&#128994; سنت ایدآلیستی: تلفیق"]
        HEGEL["هگل\nخودتحقق در نهادها"]
        GREEN["گرین\nآزادی مثبت"]
    end

    LEFT ---|"نقد"| RIGHT
    RIGHT ---|"نقد"| LEFT
    CENTER ---|"تلفیق"| LEFT
    CENTER ---|"تلفیق"| RIGHT

    style LEFT fill:#fadbd8,stroke:#e74c3c,stroke-width:2px
    style RIGHT fill:#d6eaf8,stroke:#2980b9,stroke-width:2px
    style CENTER fill:#d4efdf,stroke:#27ae60,stroke-width:2px
    style MARX fill:#f1948a,stroke:#cb4335,color:#fff
    style MILL fill:#85c1e9,stroke:#2e86c1,color:#fff
    style HEGEL fill:#82e0aa,stroke:#28b463,color:#fff
    </pre>
    <div class="diagram-caption">شکل ۲&ndash;۳: تقابل بنیادین قرن نوزدهم: آزادی فردی (لیبرال) در مقابل رهایی ساختاری (چپ) و تلاش ایدآلیست‌ها برای تلفیق</div>
  </div>

  <h4>&#9940; دشمن مفهومی</h4>
  <p>
    <span class="badge badge-red">استبداد اکثریت (tyranny of majority)</span>
    <span class="badge badge-red">استثمار (exploitation)</span>
    <span class="badge badge-red">ازخودبیگانگی (alienation)</span>
    <span class="badge badge-red">یکسان‌سازی (conformity)</span>
  </p>

  <h4>&#128200; نتایج و نقد</h4>
  <div class="card accent-right">
    <strong>نتایج:</strong> حق رأی عمومی (تدریجی)، قانون‌گذاری کار، نهضت‌های کارگری، لغو برده‌داری.<br/>
    <strong>تنش پایدار:</strong> آیا آزادیِ واقعی، <em>عدم مداخله</em> است (میل) یا <em>شرایط مادی رشد</em> (مارکس، گرین)؟ این تنش تا امروز ادامه دارد.<br/>
    <strong>نقد مارکس به لیبرال‌ها:</strong> &laquo;آزادی بورژوایی = آزادیِ مالکیت خصوصی = آزادیِ استثمار.&raquo;<br/>
    <strong>نقد میل به اکثریت‌گرایان:</strong> &laquo;استبداد اجتماعی ممکن است از استبداد سیاسی هم خطرناک‌تر باشد.&raquo;
  </div>
</div>

<!-- ════════ WAVE 5 ════════ -->
<div class="wave-card" id="wave5" style="border-right-color:#148f77;">
  <div class="wave-num" style="color:#148f77;">۵</div>
  <h3>موج پنجم: آزادی منفی در برابر مثبت <span class="badge badge-green">اواسط قرن بیستم &#8226; ۱۹۴۰&ndash;۱۹۷۰</span></h3>

  <h4>&#128204; زمینه‌ی تاریخی</h4>
  <p>
    جنگ جهانی دوم، ظهور توتالیتاریسم (فاشیسم و استالینیسم)، و آغاز جنگ سرد
    بحران عمیقی در اندیشه‌ی آزادی ایجاد کرد. چگونه ایدئولوژی‌هایی که مدعی
    &laquo;آزادی واقعی&raquo; بودند (مارکسیسم-لنینیسم، فاشیسم)، به بدترین اشکال بردگی انجامیدند؟
    <strong>آیزایا برلین</strong> در سخنرانی مشهور خود (۱۹۵۸) پاسخی تأثیرگذار داد.
  </p>

  <h4>&#128218; نظریه‌ها</h4>
  <table>
    <thead><tr><th>متفکر</th><th>تعبیر</th><th>اثر</th><th>گزاره‌ی محوری</th></tr></thead>
    <tbody>
      <tr><td>برلین (۱۹۵۸)</td><td>منفی vs مثبت</td><td><em>دو مفهوم آزادی</em></td><td>آزادی منفی = &laquo;آزادی از&raquo; مداخله؛ مثبت = &laquo;آزادی برای&raquo; خودحکمرانی. مثبت مستعد سوءاستفاده‌ی توتالیتر.</td></tr>
      <tr><td>سارتر (۱۹۴۳)</td><td>انتخاب وجودی</td><td><em>هستی و نیستی</em></td><td>&laquo;انسان محکوم به آزادی است&raquo;&mdash;آزادی ذات آگاهی است، نه حقی اعطاشده.</td></tr>
      <tr><td>آرنت (۱۹۵۸/۱۹۶۱)</td><td>کنش سیاسی</td><td><em>وضع بشر</em> / <em>میان گذشته و آینده</em></td><td>آزادی نه در فکر بلکه در <em>کنش</em> با دیگران در فضای عمومی تحقق می‌یابد.</td></tr>
      <tr><td>هایک (۱۹۶۰)</td><td>عدم اجبار</td><td><em>قانون اساسی آزادی</em></td><td>آزادی = وضعیتی که شخص تابع اجبار خودسرانه‌ی دیگری نباشد.</td></tr>
      <tr><td>مک‌کالوم (۱۹۶۷)</td><td>ساختار سه‌گانه</td><td>مقاله‌ی <em>Negative and Positive Freedom</em></td><td>تمایز منفی/مثبت کاذب است: هر آزادی دارای X (فاعل)، Y (مانع)، Z (هدف) است.</td></tr>
    </tbody>
  </table>

  <div class="diagram-wrapper">
    <div class="diagram-title">دوگانه‌ی برلین و واکنش‌ها</div>
    <pre class="mermaid">
flowchart TB
    BERLIN["&#11088; برلین 1958\nدو مفهوم آزادی"]

    BERLIN --> NEG["&#128309; آزادی منفی\nFreedom FROM\nعدم مداخله"]
    BERLIN --> POS["&#128994; آزادی مثبت\nFreedom TO\nخودحکمرانی"]

    POS --> DANGER["&#9888; خطر:\nمجبور کردن به آزادی\nتوتالیتاریسم"]

    NEG --> HAYEK["هایک\nعدم اجبار"]
    NEG --> NOZICK2["نوزیک ← موج ۶"]

    POS --> TAYLOR2["تیلور ← موج ۶\nدفاع از مثبت"]
    POS --> MACCALLUM["مک‌کالوم\nنقد دوگانه"]

    SARTRE["سارتر\nآزادی وجودی"] --- BERLIN
    ARENDT["آرنت\nکنش سیاسی"] --- BERLIN

    style BERLIN fill:#1a5276,color:#fff,stroke:#154360,stroke-width:3px
    style NEG fill:#d6eaf8,stroke:#2980b9,stroke-width:2px
    style POS fill:#d4efdf,stroke:#27ae60,stroke-width:2px
    style DANGER fill:#fadbd8,stroke:#e74c3c,stroke-width:2px
    style HAYEK fill:#eaf2f8,stroke:#5dade2
    style SARTRE fill:#e8daef,stroke:#8e44ad
    style ARENDT fill:#fdebd0,stroke:#f39c12
    style MACCALLUM fill:#fef9e7,stroke:#f1c40f
    </pre>
    <div class="diagram-caption">شکل ۲&ndash;۴: تمایز برلین بین آزادی منفی و مثبت و شبکه‌ی واکنش‌ها</div>
  </div>

  <h4>&#9940; دشمن مفهومی</h4>
  <p>
    <span class="badge badge-red">توتالیتاریسم</span>
    <span class="badge badge-red">پدرسالاری دولتی (paternalism)</span>
    <span class="badge badge-red">ایدئولوژی مطلق‌انگار</span>
    <span class="badge badge-red">بدایمانی (bad faith)</span>
  </p>

  <h4>&#128200; نتایج و نقد</h4>
  <div class="card accent-green">
    <strong>تأثیر عظیم:</strong> تمایز برلین به &laquo;ابزار استاندارد&raquo; فلسفه‌ی سیاسی تبدیل شد و تا دهه‌ها بحث‌ها را قالب‌بندی کرد.<br/>
    <strong>نقدها:</strong>
    (۱) مک‌کالوم: تمایز منفی/مثبت یک طیف است، نه دوگانه؛
    (۲) تیلور: آزادی منفی نمی‌تواند ارزش‌ها را تبیین کند (مقاله‌ی &laquo;?What's Wrong with Negative Liberty&raquo;، ۱۹۷۹)؛
    (۳) سنت جمهوری‌خواهانه (پتیت، اسکینر): برلین &laquo;سومین مفهوم&raquo; (عدم سلطه) را نادیده گرفته.
  </div>
</div>

<!-- ════════ WAVE 6 ════════ -->
<div class="wave-card" id="wave6" style="border-right-color:#2e86c1;">
  <div class="wave-num" style="color:#2e86c1;">۶</div>
  <h3>موج ششم: توانمندی، شناسایی، عدم سلطه <span class="badge badge-blue">اواخر قرن بیستم &#8226; ۱۹۷۰&ndash;۲۰۰۰</span></h3>

  <h4>&#128204; زمینه‌ی تاریخی</h4>
  <p>
    جنبش‌های حقوق مدنی، فمینیسم، ضداستعمار، و فروپاشی شوروی
    نشان دادند که نه &laquo;عدم مداخله&raquo; و نه &laquo;خودحکمرانی&raquo; به‌تنهایی کافی نیست.
    گروه‌هایی که رسماً آزاد بودند، عملاً از <em>سلطه</em>، <em>تحقیر</em>،
    و <em>محرومیت از توانمندی‌ها</em> رنج می‌بردند. سه رویکرد جدید ظاهر شد.
  </p>

  <h4>&#128218; سه شاخه‌ی نوظهور</h4>

  <div class="card accent-primary">
    <h4>الف) آزادی جمهوری‌خواهانه: عدم سلطه (Pettit, Skinner)</h4>
    <p>
      <strong>فیلیپ پتیت</strong> (<em>Republicanism</em>, 1997) استدلال کرد که آزادی نه عدم مداخله بلکه
      <strong>عدم سلطه</strong> (non-domination) است: وضعیتی که هیچ‌کس قدرت مداخله‌ی
      خودسرانه در زندگی شما را نداشته باشد، حتی اگر واقعاً مداخله نکند.
      تمایز کلیدی: <em>بنده‌ی اربابِ مهربان هم آزاد نیست</em>، زیرا ارباب
      <em>قدرت</em> مداخله را دارد.
    </p>
  </div>

  <div class="card accent-green">
    <h4>ب) رویکرد توانمندی (Sen, Nussbaum)</h4>
    <p>
      <strong>آمارتیا سن</strong> (<em>Development as Freedom</em>, 1999) آزادی را
      <strong>مجموعه‌ی توانمندی‌های واقعی</strong> (substantive freedoms) تعریف کرد:
      آنچه یک شخص واقعاً <em>قادر به انجام و بودنش</em> است.
      فقر، بیماری، و بی‌سوادی حتی بدون مداخله‌ی فعال، آزادی را سلب می‌کنند.
      <strong>مارتا نوسبام</strong> فهرستی از ده توانمندی محوری پیشنهاد کرد.
    </p>
  </div>

  <div class="card accent-gold">
    <h4>ج) آزادی به‌مثابه شناسایی (Taylor, Honneth)</h4>
    <p>
      <strong>چارلز تیلور</strong> (<em>Sources of the Self</em>, 1989) و
      <strong>اکسل هونت</strong> (<em>The Struggle for Recognition</em>, 1995)
      نشان دادند که آزادی مستلزم <em>شناسایی</em> (recognition) اجتماعی است.
      کسی که از نظر فرهنگی نادیده انگاشته یا تحقیر شود، حتی با حقوق صوری برابر، آزاد نیست.
    </p>
  </div>

  <div class="diagram-wrapper">
    <div class="diagram-title">سه شاخه‌ی نوظهور و نسبت آن‌ها با دوگانه‌ی برلین</div>
    <pre class="mermaid">
flowchart TB
    BERLIN_LEGACY["میراث برلین\nمنفی vs مثبت"]

    BERLIN_LEGACY --> REP_NEW["&#128992; عدم سلطه\nپتیت & اسکینر\n= سومین مفهوم"]
    BERLIN_LEGACY --> CAP["&#128311; توانمندی\nسن & نوسبام\n= آزادی واقعی"]
    BERLIN_LEGACY --> REC["&#128154; شناسایی\nتیلور & هونت\n= بُعد فرهنگی"]

    REP_NEW --> SYNTH["&#11088; تلفیق معاصر:\nآزادی = عدم سلطه\n+ توانمندی واقعی\n+ شناسایی اجتماعی"]
    CAP --> SYNTH
    REC --> SYNTH

    RAWLS["رالز\nعدالت به‌مثابه انصاف\n1971"] --> CAP
    RAWLS --> REP_NEW

    FOUCAULT["فوکو\nقدرت / مقاومت"] --> REP_NEW
    FOUCAULT --> BUTLER_NEW["باتلر\n← موج ۷"]

    style BERLIN_LEGACY fill:#5d6d7e,color:#fff
    style REP_NEW fill:#fdebd0,stroke:#f39c12,stroke-width:2px
    style CAP fill:#d0ece7,stroke:#1abc9c,stroke-width:2px
    style REC fill:#d6eaf8,stroke:#2980b9,stroke-width:2px
    style SYNTH fill:#d4efdf,stroke:#27ae60,stroke-width:3px
    style RAWLS fill:#e8daef,stroke:#8e44ad
    style FOUCAULT fill:#fadbd8,stroke:#e74c3c
    </pre>
    <div class="diagram-caption">شکل ۲&ndash;۵: سه رویکرد نوظهور و مسیر به‌سوی تلفیق معاصر</div>
  </div>

  <h4>&#9940; دشمن مفهومی</h4>
  <p>
    <span class="badge badge-red">سلطه (domination)</span>
    <span class="badge badge-red">محرومیت (deprivation)</span>
    <span class="badge badge-red">تحقیر / نادیده‌انگاری (misrecognition)</span>
    <span class="badge badge-red">ظلم ساختاری (structural injustice)</span>
  </p>
</div>

<!-- ════════ WAVE 7 ════════ -->
<div class="wave-card" id="wave7" style="border-right-color:#17a589;">
  <div class="wave-num" style="color:#17a589;">۷</div>
  <h3>موج هفتم: دیجیتال، بوم‌شناختی، پسااستعماری <span class="badge badge-green">قرن بیست‌ویکم &#8226; ۲۰۰۰+</span></h3>

  <h4>&#128204; زمینه‌ی تاریخی</h4>
  <p>
    اینترنت، هوش مصنوعی، بحران آب‌وهوا، جنبش‌های #MeToo و Black Lives Matter،
    و افول هژمونی غربی چشم‌اندازهای تازه‌ای گشوده‌اند.
    آزادی اکنون باید در قلمرو <em>دیجیتال</em>، <em>بوم‌شناختی</em>، و
    <em>پسااستعماری</em> نیز بازاندیشی شود.
  </p>

  <h4>&#128218; مسائل نوظهور</h4>
  <table>
    <thead><tr><th>حوزه</th><th>متفکر/جنبش</th><th>مسئله</th><th>تعبیر آزادی</th></tr></thead>
    <tbody>
      <tr><td>دیجیتال</td><td>لسیگ، بنکلر، زوبوف</td><td>نظارت فراگیر، الگوریتم‌ها</td><td>آزادی = عدم کنترل الگوریتمی + حاکمیت بر داده‌ی شخصی</td></tr>
      <tr><td>بوم‌شناختی</td><td>نظریه‌ی سبز، نِس</td><td>بحران آب‌وهوا</td><td>آزادی بشر بدون آزادی بوم‌شناختی (شکوفایی طبیعت) پایدار نیست</td></tr>
      <tr><td>پسااستعماری</td><td>فانون، اسپیواک، مبمبه</td><td>میراث استعمار</td><td>آزادی = رهایی از ساختارهای استعماری ذهنی و مادی</td></tr>
      <tr><td>اپیستمیک</td><td>فریکر</td><td>بی‌عدالتی شناختی</td><td>آزادی = توانایی شنیده‌شدن و تولید دانش</td></tr>
      <tr><td>رابطه‌ای</td><td>اوشانا، مک‌کنزی</td><td>خودآیینی در بافت اجتماعی</td><td>آزادی فردی فقط در <em>روابط</em> مناسب ممکن است</td></tr>
    </tbody>
  </table>

  <h4>&#9940; دشمن مفهومی</h4>
  <p>
    <span class="badge badge-red">نظارت الگوریتمی (surveillance capitalism)</span>
    <span class="badge badge-red">بحران آب‌وهوا</span>
    <span class="badge badge-red">نواستعمار</span>
    <span class="badge badge-red">بی‌عدالتی شناختی (epistemic injustice)</span>
    <span class="badge badge-red">اتمیزه‌شدن اجتماعی</span>
  </p>

  <div class="diagram-wrapper">
    <div class="diagram-title">پنج مرز نوظهور آزادی در قرن ۲۱</div>
    <pre class="mermaid">
flowchart TB
    CENTER_21["&#127758; آزادی در قرن ۲۱"]

    CENTER_21 --> DIG["&#128187; دیجیتال\nCode is Law\nLessig / Zuboff"]
    CENTER_21 --> ECO["&#127793; بوم‌شناختی\nEcological Freedom\nNaess / Green Theory"]
    CENTER_21 --> POST["&#127758; پسااستعماری\nDecolonial Liberation\nFanon / Mbembe"]
    CENTER_21 --> EPIST["&#128218; اپیستمیک\nEpistemic Justice\nFricker"]
    CENTER_21 --> REL["&#129309; رابطه‌ای\nRelational Autonomy\nOshana / Mackenzie"]

    DIG --> CHALLENGE["&#9888; چالش مشترک:\nآیا چارچوب‌های قرن ۱۷-۲۰\nبرای مسائل قرن ۲۱ کافی‌اند؟"]
    ECO --> CHALLENGE
    POST --> CHALLENGE
    EPIST --> CHALLENGE
    REL --> CHALLENGE

    style CENTER_21 fill:#17a589,color:#fff,stroke:#138d75,stroke-width:3px
    style DIG fill:#d6eaf8,stroke:#2980b9
    style ECO fill:#d4efdf,stroke:#27ae60
    style POST fill:#fdebd0,stroke:#f39c12
    style EPIST fill:#e8daef,stroke:#8e44ad
    style REL fill:#fadbd8,stroke:#e74c3c
    style CHALLENGE fill:#fef9e7,stroke:#f1c40f,stroke-width:3px
    </pre>
    <div class="diagram-caption">شکل ۲&ndash;۶: پنج مرز نوظهور بازاندیشی آزادی و پرسش مشترک: آیا چارچوب‌های موجود کفایت می‌کنند؟</div>
  </div>
</div>

<!-- خلاصه‌ی تطبیقی هفت موج -->
<h3>جدول تطبیقی هفت موج</h3>
<div style="overflow-x:auto;">
<table>
<thead>
<tr>
  <th>موج</th><th>دوره</th><th>پرسش محوری</th><th>تعبیر غالب</th><th>دشمن اصلی</th><th>نتیجه‌ی نهادی</th>
</tr>
</thead>
<tbody>
<tr style="border-right:4px solid #1a5276;">
  <td><strong>۱</strong></td><td>باستان</td><td>چه کسی آزاد است؟</td><td>عدم بردگی + مشارکت</td><td>بردگی</td><td>دموکراسی آتن</td>
</tr>
<tr style="border-right:4px solid #7d3c98;">
  <td><strong>۲</strong></td><td>قرون وسطی</td><td>اراده آزاد است؟</td><td>اختیار الهی</td><td>جبر / گناه</td><td>الهیات اختیار</td>
</tr>
<tr style="border-right:4px solid #b7950b;">
  <td><strong>۳</strong></td><td>مدرن اولیه</td><td>حد دولت کجاست؟</td><td>حقوق طبیعی + رضایت</td><td>استبداد مطلقه</td><td>انقلاب‌ها و قوانین</td>
</tr>
<tr style="border-right:4px solid #b03a2e;">
  <td><strong>۴</strong></td><td>قرن ۱۹</td><td>آزادی صوری یا واقعی؟</td><td>فردیت / رهایی طبقاتی</td><td>استثمار + یکسان‌سازی</td><td>جنبش‌های کارگری</td>
</tr>
<tr style="border-right:4px solid #148f77;">
  <td><strong>۵</strong></td><td>اواسط ق۲۰</td><td>منفی یا مثبت؟</td><td>منفی vs مثبت</td><td>توتالیتاریسم</td><td>حقوق بشر جهانی</td>
</tr>
<tr style="border-right:4px solid #2e86c1;">
  <td><strong>۶</strong></td><td>اواخر ق۲۰</td><td>عدم مداخله کافی است؟</td><td>عدم سلطه + توانمندی</td><td>سلطه ساختاری</td><td>توسعه‌ی انسانی</td>
</tr>
<tr style="border-right:4px solid #17a589;">
  <td><strong>۷</strong></td><td>قرن ۲۱</td><td>آزادی در عصر دیجیتال؟</td><td>دیجیتال + بوم‌شناختی</td><td>نظارت الگوریتمی</td><td>GDPR و جنبش‌ها</td>
</tr>
</tbody>
</table>
</div>

</section>
'@

[System.IO.File]::WriteAllText("$projectDir\part2.html", $part2, [System.Text.Encoding]::UTF8)
Write-Host "Part 2 written to $projectDir\part2.html" -ForegroundColor Green