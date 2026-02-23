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