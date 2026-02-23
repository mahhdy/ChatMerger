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