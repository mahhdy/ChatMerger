$file = "D:\Code\Articles\foundational-politics.mdx"
$content = Get-Content -Path $file -Raw -Encoding UTF8

# 1) اضافه‌کردن بلوک نویسنده بعد از عنوان اصلی
$authorBlock = @'

<div className="flex items-center gap-4 my-6 p-4 bg-gray-50 dark:bg-gray-900 rounded-xl border border-gray-200 dark:border-gray-700">
<div className="w-12 h-12 bg-blue-900 text-white rounded-full flex items-center justify-center font-bold text-lg shrink-0">م.س</div>
<div>
<div className="font-bold text-gray-900 dark:text-gray-100">مهدی سالم</div>
<div className="text-sm text-gray-500 dark:text-gray-400">پژوهشگر سیاست تطبیقی و طراحی نهادی • بهار ۱۴۰۴</div>
</div>
</div>

'@

$content = $content -replace '(> — ویل کیملیکا\r?\n)', "`$1$authorBlock"

# 2) اضافه‌کردن بلوک پایانی نویسنده قبل از آخرین خط
$footerBlock = @'

---

<div className="bg-gradient-to-r from-blue-50 to-amber-50 dark:from-blue-950 dark:to-amber-950 rounded-2xl p-8 my-10 border border-blue-200 dark:border-blue-800">

### ✍️ درباره‌ی نویسنده

<div className="flex items-start gap-5 mt-4">
<div className="w-16 h-16 bg-blue-900 text-white rounded-full flex items-center justify-center font-bold text-xl shrink-0">م.س</div>
<div>

**مهدی سالم** — پژوهشگر حوزه‌ی سیاست تطبیقی، طراحی نهادی و مدیریت تنوع. علاقه‌مند به بررسی الگوهای حکمرانی دموکراتیک و ارائه‌ی راهکارهای عملی برای بهبود ساختارهای سیاسی در ایران.

این مقاله بخشی از پروژه‌ی پژوهشی «سیاست تأسیسی و مدیریت تنوع» است که با هدف غنی‌سازی گفت‌وگوی ملّی درباره‌ی آینده‌ی ایران تدوین شده.

📬 برای تماس و تبادل نظر: [وب‌سایت نویسنده]

</div>
</div>
</div>

'@

$content = $content -replace '(\*ویرایش اول — بهار ۱۴۰۴\*)', "`$1$footerBlock"

Set-Content -Path $file -Value $content -Encoding UTF8 -NoNewline
Write-Host "✅ نام نویسنده اضافه شد" -ForegroundColor Green