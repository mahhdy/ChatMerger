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