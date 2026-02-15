# نصب
pip install -e ".[all]"

# بررسی سلامت
formatforge doctor

# تبدیل
formatforge convert ./article.tex --output ./output/

# اجرای کامل
formatforge run ./input/ --output ./output/ --target ./website/content/