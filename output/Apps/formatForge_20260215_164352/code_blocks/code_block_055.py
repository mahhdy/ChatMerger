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