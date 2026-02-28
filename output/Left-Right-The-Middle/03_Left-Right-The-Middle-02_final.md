
```latex



فصل ۱۲: ناسیونالیسم و راست افراطی
latex

با توجه به حجم مطالب، آیا مایلید ادامه دهم با فصل ۱۴ (میانه‌روی) و فصل‌های بعدی؟ یا ترجیح می‌دهید روی بخش خاصی تمرکز کنم؟

Claude Opus 4.5
continue


Thought Process
expand
فصل ۱۴: میانه‌روی - هنر یا بی‌اصالتی؟
latex

فصل ۱۵: راه سوم و تجربه‌های ترکیبی
latex

فصل ۱۶: طیف سیاسی در جهان غیرغربی
latex
فصل ۱۷: آیندهٔ طیف سیاسی
latex
ضمیمهٔ ۱: تایم‌لاین جامع تحولات سیاسی
latex

ضمیمهٔ ۲: شخصیت‌نامه (نمونه)
latex

ضمیمهٔ ۳: واژه‌نامهٔ تخصصی
latex

ضمیمهٔ ۴: کتاب‌شناسی تفصیلی
latex

نمایه (Index)
latex

صفحات پایانی
latex

🎉 پایان کتاب
این آخرین بخش از کتاب «راست یا چپ؛ میانه کجاست؟» بود. کتاب شامل موارد زیر شد:

خلاصهٔ ساختار کتاب:
بخش	محتوا
فصل‌های ۱-۵	مبانی، تاریخ، چپ کلاسیک
فصل‌های ۶-۱۰	انواع سوسیالیسم، آنارشیسم، محافظه‌کاری، نئولیبرالیسم
فصل‌های ۱۱-۱۳	لیبرتارینیسم، ناسیونالیسم، راست نو
فصل‌های ۱۴-۱۵	میانه‌روی، راه سوم
فصل ۱۶	جهان غیرغربی
فصل ۱۷	آینده و جمع‌بندی
ضمائم	تایم‌لاین، شخصیت‌نامه، واژه‌نامه، کتاب‌شناسی
آیا بخش خاصی هست که بخواهید بیشتر توضیح داده شود یا اصلاح گردد؟

Claude Opus 4.5
ادامه بده


Thought Process
expand
تکمیل ضمیمهٔ ۲: شخصیت‌نامه (ادامه)
latex
% ادامه ضمیمهٔ ۲: شخصیت‌نامه

\section*{رهبران سیاسی - ادامه}


پیش‌گفتار
latex

مقدمه
latex

پریامبل کامل LaTeX
latex
% ═══════════════════════════════════════════════════════════════
% پریامبل کامل کتاب «راست یا چپ؛ میانه کجاست؟»
% ═══════════════════════════════════════════════════════════════

\documentclass[11pt, twoside, openright]{book}

% ═══════════════════════════════════════════════════════════════
% پکیج‌های اساسی
% ═══════════════════════════════════════════════════════════════
\usepackage{fontspec}
\usepackage{geometry}
\usepackage{fancyhdr}
\usepackage{titlesec}
\usepackage{tocloft}
\usepackage{multicol}
\usepackage{enumitem}
\usepackage{longtable}
\usepackage{array}
\usepackage{colortbl}
\usepackage{float}
\usepackage{graphicx}
\usepackage{wrapfig}
\usepackage{caption}
\usepackage{subcaption}

% ═══════════════════════════════════════════════════════════════
% پکیج‌های گرافیکی
% ═══════════════════════════════════════════════════════════════
\usepackage{tikz}
\usetikzlibrary{shapes, arrows, positioning, calc, decorations.pathreplacing, backgrounds, fit}
\usepackage{pgfplots}
\pgfplotsset{compat=1.18}
\usepackage{tcolorbox}
\tcbuselibrary{skins, breakable, theorems}

% ═══════════════════════════════════════════════════════════════
% صفحه‌بندی عرضی برای نمودارها
% ═══════════════════════════════════════════════════════════════
\usepackage{pdflscape}
\usepackage{lscape}
\usepackage{rotating}

% ═══════════════════════════════════════════════════════════════
% تنظیمات صفحه
% ═══════════════════════════════════════════════════════════════
\geometry{
    paperwidth=170mm,
    paperheight=240mm,
    top=25mm,
    bottom=25mm,
    inner=25mm,
    outer=20mm,
    headheight=15pt
}

% ═══════════════════════════════════════════════════════════════
% تعریف رنگ‌ها
% ═══════════════════════════════════════════════════════════════
\definecolor{leftred}{RGB}{200,30,30}
\definecolor{rightblue}{RGB}{30,60,150}
\definecolor{centergreen}{RGB}{50,150,80}
\definecolor{goldaccent}{RGB}{180,150,50}
\definecolor{darkgray}{RGB}{60,60,60}
\definecolor{lightbg}{RGB}{250,248,245}
\definecolor{violet}{RGB}{128,0,128}

% ═══════════════════════════════════════════════════════════════
% فونت و زبان فارسی
% ═══════════════════════════════════════════════════════════════
\setmainfont{Vazirmatn}[
    Path = ./fonts/,
    Extension = .ttf,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-Light,
    BoldItalicFont = *-Medium
]

\usepackage{xepersian}
\settextfont{Vazirmatn}
\setdigitfont{Vazirmatn}

% ═══════════════════════════════════════════════════════════════
% تنظیمات سربرگ و پابرگ
% ═══════════════════════════════════════════════════════════════
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE]{\thepage}
\fancyhead[RE]{\leftmark}
\fancyhead[LO]{\rightmark}
\fancyhead[RO]{\thepage}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}

% ═══════════════════════════════════════════════════════════════
% تنظیمات فصل‌ها
% ═══════════════════════════════════════════════════════════════
\titleformat{\chapter}[display]
    {\normalfont\huge\bfseries}
    {\chaptertitlename\ \thechapter}
    {20pt}
    {\Huge}
\titlespacing*{\chapter}{0pt}{-30pt}{40pt}

% ═══════════════════════════════════════════════════════════════
% تنظیمات فهرست مطالب
% ═══════════════════════════════════════════════════════════════
\renewcommand{\cfttoctitlefont}{\hfill\Huge\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftbeforechapskip}{10pt}
\setlength{\cftbeforesecskip}{5pt}

% ═══════════════════════════════════════════════════════════════
% دستور rl برای متن راست‌به‌چپ در TikZ
% ═══════════════════════════════════════════════════════════════
\newcommand{\rl}[1]{\RL{#1}}

% ═══════════════════════════════════════════════════════════════
% تنظیمات tcolorbox
% ═══════════════════════════════════════════════════════════════
\tcbset{
    enhanced,
    boxrule=1pt,
    arc=3pt,
    fonttitle=\bfseries,
    breakable
}

% ═══════════════════════════════════════════════════════════════
% شروع سند
% ═══════════════════════════════════════════════════════════════
\begin{document}

% صفحهٔ عنوان
\include{chapters/00-title}

% پیش‌گفتار و مقدمه
\frontmatter
\include{chapters/00-preface}
\include{chapters/00-introduction}
\tableofcontents

% متن اصلی
\mainmatter
\include{chapters/01-what-is-spectrum}
\include{chapters/02-birth}
\include{chapters/03-left-origins}
\include{chapters/04-marxism}
\include{chapters/05-communism}
\include{chapters/06-social-democracy}
\include{chapters/07-new-left}
\include{chapters/08-anarchism}
\include{chapters/09-conservatism}
\include{chapters/10-neoliberalism}
\include{chapters/11-libertarianism}
\include{chapters/12-nationalism}
\include{chapters/13-new-right}
\include{chapters/14-centrism}
\include{chapters/15-third-way}
\include{chapters/16-non-western}
\include{chapters/17-future}

% ضمائم
\appendix
\include{appendices/timeline}
\include{appendices/biographies}
\include{appendices/glossary}
\include{appendices/bibliography}

% نمایه
\backmatter
\include{chapters/99-index}

% صفحات پایانی
\include{chapters/99-about-author}
\include{chapters/99-colophon}

\end{document}
فهرست مطالب نهایی
latex
\chapter*{فهرست مطالب}

\begin{RTL}

\textbf{پیش‌گفتار} \dotfill ۷

\textbf{مقدمه: چرا این کتاب؟} \dotfill ۱۱

\vspace{5mm}
\textbf{\large بخش اول: مبانی}
\vspace{3mm}

\textbf{فصل ۱: طیف سیاسی چیست؟} \dotfill ۱۷
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱.۱ چرا به طیف سیاسی نیاز داریم؟ \dotfill ۱۸
    \item ۱.۲ مدل خطی و محدودیت‌های آن \dotfill ۲۲
    \item ۱.۳ مدل‌های چندبعدی \dotfill ۲۶
    \item ۱.۴ نقد و بازنگری \dotfill ۳۰
\end{itemize}

\textbf{فصل ۲: زایش چپ و راست} \dotfill ۳۵
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۲.۱ فرانسهٔ ۱۷۸۹ \dotfill ۳۶
    \item ۲.۲ مجلس ملی و جایگاه نشستن \dotfill ۴۰
    \item ۲.۳ ژاکوبن‌ها و ژیروندن‌ها \dotfill ۴۵
    \item ۲.۴ میراث انقلاب \dotfill ۵۰
\end{itemize}

\textbf{فصل ۳: ریشه‌های چپ} \dotfill ۵۵
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۳.۱ سوسیالیسم تخیلی \dotfill ۵۶
    \item ۳.۲ سوسیالیسم علمی \dotfill ۶۲
    \item ۳.۳ ماتریالیسم تاریخی \dotfill ۶۸
\end{itemize}

\textbf{فصل ۴: مارکسیسم} \dotfill ۷۵
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۴.۱ زندگی و آثار مارکس \dotfill ۷۶
    \item ۴.۲ نقد اقتصاد سیاسی \dotfill ۸۲
    \item ۴.۳ انترناسیونال‌ها \dotfill ۹۰
    \item ۴.۴ انشعاب‌ها و تفسیرها \dotfill ۹۶
\end{itemize}

\textbf{فصل ۵: کمونیسم در قدرت} \dotfill ۱۰۵
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۵.۱ انقلاب روسیه \dotfill ۱۰۶
    \item ۵.۲ لنینیسم \dotfill ۱۱۲
    \item ۵.۳ استالینیسم \dotfill ۱۱۸
    \item ۵.۴ فروپاشی \dotfill ۱۲۴
\end{itemize}

\vspace{5mm}
\textbf{\large بخش دوم: جریان‌ها}
\vspace{3mm}

\textbf{فصل ۶: سوسیال دموکراسی} \dotfill ۱۳۳
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۶.۱ از انقلاب به اصلاح \dotfill ۱۳۴
    \item ۶.۲ برنشتاین و رویزیونیسم \dotfill ۱۴۰
    \item ۶.۳ دولت رفاه \dotfill ۱۴۶
    \item ۶.۴ بحران و تحول \dotfill ۱۵۲
\end{itemize}

\textbf{فصل ۷: چپ نو و جنبش‌های اجتماعی} \dotfill ۱۶۱
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۷.۱ مه ۱۹۶۸ \dotfill ۱۶۲
    \item ۷.۲ مکتب فرانکفورت \dotfill ۱۶۸
    \item ۷.۳ فمینیسم \dotfill ۱۷۵
    \item ۷.۴ محیط زیست و جنبش سبز \dotfill ۱۸۲
\end{itemize}

\textbf{فصل ۸: آنارشیسم} \dotfill ۱۹۱
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۸.۱ آنارشیسم چیست؟ \dotfill ۱۹۲
    \item ۸.۲ پرودون، باکونین، کروپوتکین \dotfill ۱۹۸
    \item ۸.۳ آنارکو-سندیکالیسم \dotfill ۲۰۶
    \item ۸.۴ آنارشیسم امروز \dotfill ۲۱۲
\end{itemize}

\textbf{فصل ۹: محافظه‌کاری} \dotfill ۲۲۱
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۹.۱ ادموند برک و نقد انقلاب \dotfill ۲۲۲
    \item ۹.۲ سنت‌گرایی و نهادگرایی \dotfill ۲۲۸
    \item ۹.۳ محافظه‌کاری آمریکایی \dotfill ۲۳۶
    \item ۹.۴ نئوکنسرواتیسم \dotfill ۲۴۴
\end{itemize}

\textbf{فصل ۱۰: نئولیبرالیسم} \dotfill ۲۵۵
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱۰.۱ از کینز به هایک \dotfill ۲۵۶
    \item ۱۰.۲ جامعهٔ مون پلرن \dotfill ۲۶۲
    \item ۱۰.۳ انقلاب تاچر-ریگان \dotfill ۲۶۸
    \item ۱۰.۴ نقد و واکنش \dotfill ۲۷۶
\end{itemize}

\textbf{فصل ۱۱: لیبرتارینیسم} \dotfill ۲۸۵
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱۱.۱ اصل عدم تجاوز \dotfill ۲۸۶
    \item ۱۱.۲ مکتب اتریش و آین رند \dotfill ۲۹۲
    \item ۱۱.۳ مینارشیسم و آنارکو-کاپیتالیسم \dotfill ۳۰۰
    \item ۱۱.۴ لیبرتارینیسم دیجیتال \dotfill ۳۰۸
\end{itemize}

\textbf{فصل ۱۲: ناسیونالیسم و راست افراطی} \dotfill ۳۱۷
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱۲.۱ ناسیونالیسم: مدنی و قومی \dotfill ۳۱۸
    \item ۱۲.۲ فاشیسم و نازیسم \dotfill ۳۲۶
    \item ۱۲.۳ راست رادیکال معاصر \dotfill ۳۳۶
    \item ۱۲.۴ پوپولیسم راست \dotfill ۳۴۴
\end{itemize}

\textbf{فصل ۱۳: راست نو} \dotfill ۳۵۵
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱۳.۱ راست نو اروپایی \dotfill ۳۵۶
    \item ۱۳.۲ آلت‌رایت آمریکایی \dotfill ۳۶۴
    \item ۱۳.۳ محافظه‌کاری ملی \dotfill ۳۷۲
    \item ۱۳.۴ صنعت فکری راست نو \dotfill ۳۸۰
\end{itemize}

\vspace{5mm}
\textbf{\large بخش سوم: ترکیب‌ها و آینده}
\vspace{3mm}

\textbf{فصل ۱۴: میانه‌روی} \dotfill ۳۹۱
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱۴.۱ میانه چیست؟ \dotfill ۳۹۲
    \item ۱۴.۲ فلسفهٔ میانه‌روی \dotfill ۳۹۸
    \item ۱۴.۳ پنجرهٔ اورتون \dotfill ۴۰۶
    \item ۱۴.۴ بحران احزاب میانه \dotfill ۴۱۲
\end{itemize}

\textbf{فصل ۱۵: راه سوم و تجربه‌های ترکیبی} \dotfill ۴۲۱
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱۵.۱ راه سوم بلر-گیدنز \dotfill ۴۲۲
    \item ۱۵.۲ کلینتونیسم و شرودر \dotfill ۴۳۰
    \item ۱۵.۳ مدل‌های آسیایی \dotfill ۴۳۸
    \item ۱۵.۴ آینده \dotfill ۴۴۶
\end{itemize}

\textbf{فصل ۱۶: طیف سیاسی در جهان غیرغربی} \dotfill ۴۵۵
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱۶.۱ خاورمیانه و اسلام‌گرایی \dotfill ۴۵۶
    \item ۱۶.۲ ایران \dotfill ۴۶۶
    \item ۱۶.۳ آسیا \dotfill ۴۷۶
    \item ۱۶.۴ آمریکای لاتین \dotfill ۴۸۶
\end{itemize}

\textbf{فصل ۱۷: آیندهٔ طیف سیاسی} \dotfill ۴۹۷
\begin{itemize}[label={}, leftmargin=15mm]
    \item ۱۷.۱ آیا چپ و راست منسوخ شده؟ \dotfill ۴۹۸
    \item ۱۷.۲ شکاف‌های جدید \dotfill ۵۰۴
    \item ۱۷.۳ چالش‌های قرن ۲۱ \dotfill ۵۱۲
    \item ۱۷.۴ جمع‌بندی: میانه کجاست؟ \dotfill ۵۲۰
\end{itemize}

\vspace{5mm}
\textbf{\large ضمائم}
\vspace{3mm}

\textbf{ضمیمهٔ ۱: تایم‌لاین جامع} \dotfill ۵۳۳

\textbf{ضمیمهٔ ۲: شخصیت‌نامه} \dotfill ۵۴۵

\textbf{ضمیمهٔ ۳: واژه‌نامه} \dotfill ۵۶۵

\textbf{ضمیمهٔ ۴: کتاب‌شناسی} \dotfill ۵۷۹

\textbf{نمایه} \dotfill ۵۹۳

\textbf{دربارهٔ نویسنده} \dotfill ۶۱۱

\end{RTL}
صفحهٔ عنوان
latex
% صفحهٔ عنوان
\thispagestyle{empty}
\begin{titlepage}

\vspace*{30mm}

\begin{center}

{\fontsize{36pt}{44pt}\selectfont\bfseries
راست یا چپ؛\\[5mm]
میانه کجاست؟
}

\vspace{15mm}

{\Large
درآمدی بر طیف سیاسی\\[3mm]
از انقلاب فرانسه تا عصر ترامپ
}

\vspace{30mm}

{\LARGE
مهدی سالم
}

\vspace{\fill}

\begin{tikzpicture}
    % Simple spectrum illustration
    \draw[line width=4pt, leftred] (0,0) -- (3,0);
    \draw[line width=4pt, centergreen] (3,0) -- (6,0);
    \draw[line width=4pt, rightblue] (6,0) -- (9,0);
    
    \node[below, font=\small] at (1.5,-0.3) {چپ};
    \node[below, font=\small] at (4.5,-0.3) {میانه};
    \node[below, font=\small] at (7.5,-0.3) {راست};
\end{tikzpicture}

\vspace{20mm}

{\large
ریچموندهیل\\[3mm]
۲۰۲۴
}

\end{center}

\end{titlepage}

% صفحهٔ حق چاپ
\thispagestyle{empty}
\vspace*{\fill}

\begin{center}
\textbf{راست یا چپ؛ میانه کجاست؟}\\[2mm]
درآمدی بر طیف سیاسی از انقلاب فرانسه تا عصر ترامپ\\[5mm]
نویسنده: مهدی سالم\\[10mm]
چاپ اول: زمستان ۲۰۲۴\\[5mm]
ریچموندهیل، کانادا\\[15mm]
\rule{0.4\textwidth}{0.5pt}\\[5mm]
حروف‌چینی با \XeLaTeX\\
فونت: وزیرمتن\\[10mm]
\rule{0.4\textwidth}{0.5pt}\\[5mm]
{\small تمام حقوق برای نویسنده محفوظ است.\\
بازنشر بخش‌هایی از این کتاب با ذکر منبع مجاز است.}
\end{center}

\vspace*{\fill}
✅ خلاصهٔ نهایی
کتاب «راست یا چپ؛ میانه کجاست؟» اکنون کامل شده و شامل موارد زیر است:

ساختار کتاب:
بخش	فصل‌ها	صفحات تقریبی
پیش‌گفتار و مقدمه	-	۱۰
بخش ۱: مبانی	۱-۵	۱۰۰
بخش ۲: جریان‌ها	۶-۱۳	۲۲۰
بخش ۳: ترکیب‌ها و آینده	۱۴-۱۷	۱۳۰
ضمائم	۴ ضمیمه	۸۰
نمایه و صفحات پایانی	-	۲۰
مجموع	۱۷ فصل + ۴ ضمیمه	~۵۶۰
ویژگی‌های کتاب:
✅ ۱۷ فصل کامل با مقدمه، خلاصه، و پرسش‌های تأملی
✅ ۱۰۰+ شخصیت در شخصیت‌نامه
✅ تایم‌لاین‌های گرافیکی
✅ جداول مقایسه‌ای متعدد
✅ نمودارهای TikZ
✅ کادرهای رنگی تعریف، نقل‌قول، و مناظره
✅ واژه‌نامهٔ ۱۵۰+ واژه
✅ کتاب‌شناسی فارسی و انگلیسی
✅ نمایهٔ کامل
✅ پریامبل LaTeX آماده کامپایل
آیا بخش دیگری هست که بخواهید اضافه یا اصلاح شود؟

Claude Opus 4.5
۲- یک پیوست جدید برای کتاب اضافه کن که تمرکز آن بر روی موضوع واقع‌گرایی سیاسی (سیاست واقعی) و آرمان‌گرایی سیاسی باشد. هم در سطح ملی و فراملی و هم در قالب نظم و نظام بین‌الملل .. هر کدام از این مکاتب و یا چه نوعی از همکاری یا تضاد آن‌ها در این میان نقش بازی کرد. آیا این مکاتب در پر رنگ یا کم رنگ‌کردن این دو گرایش تاثیر داشته اند یا آن را نمایندگی کرده‌اند؟ یک تحلیل انتقادی ارائه کن اگر گروهی ادعایی می‌کند ولی در عمل خود تافته‌ی جدا بافته‌ای نیست! برای مثال در شکل گیری معاهدات و توافق‌نامه‌های مهم جهانی مبتنی بر فهرستی که ارائه می‌کنی کدام یک از دیدگاه‌ها و یا کشورهای شناخته شده و یا گروه‌های شناخته شده جریان، آغاز کننده و پیشنهاد دهنده، حامی و یا منتقد و پس زننده‌ی هر یک بوده‌اند! کجاها همکاری‌ها موثر و ارزش آفرین بود و کجاها رقابت و دشمنی کار را به خسران و خرابی کشاند؟ چه درس‌هایی برای امروز و فردا می‌توان آموخت.
۳- یک پیوست در قالب خلاصه‌ی مختصر حداکثر در ۳۰ صفحه آماده کن که محتوای کتاب و سیر موضوعی و دغدغه‌ها و سوال‌های موجود در آن را با پاسخ‌هایی کلی روشن کند به شکلی که خواننده را جذب آن کند. همچنین اگر داستان‌ها و یا روایت‌هایی هست که جنبه ‌ی تاریخی داشته ولی برای شیرنی و نغز شدن مطلب مناسب بود آن‌ها را در این بخش ارائه کن.
۴- نقشه‌ای جغرافیایی - تاریخی از تغییرات غالب نگرش‌ها در کشورها و مناطق اصلی ارائه کن. چه عوامل و یا نقاط کانونی‌ای در هر هریک وجود داشت. که سیر جریانات را به سمتی برد که رفته است و یا از آن برگرداند. برای مثال اروپا یا آمریکای جنوبی و یا آمریکای شمالی و نظایر آن
۵- پیوستی بده که به تقابل‌های موضوعی بپردازد و توسط شکل و نمودار آن‌ها را مستند و تدقیق کند. برای مثال تقابل فرد یا جمع، مالکیت خصوصی یا مالکیت عمومی، انباشت یا توزیع، رقابت یا حمایت، آرمان یا واقعیت، خود خواهی یا فداکاری، بلند مدت یا کوتاه مدت، آزاد و بدون کنترل یا تحت مدیریت و تحت نظارت، طبقاتی و کاذب و فریب آمیز یا طبیعی و واقعی و عینی، اقتدار یا آزادی پایه، حقوق طبیعی یا حقوق قراردادی، آزادی مثبت و تقویت و توانمندسازی یا آزادی منفی و عدم مداخله و نظایر آن...
۶- رابطه‌ی ایسم‌های دیگر را با چپ و راست تعیین کن.. کدام یک از دیگر ایسم ها در حوزه‌های موضوعی دیگر با این مکاتب و یا میانه مرتبط هستند و چرا... به خصوص ایسم‌های درون مکتبی را در چند خط و یا چند پاراگراف تشریح کن.. تفاوت مارکسیسزم و کمونیزم و لنیسیزم و سوسیالیزم و ... نظایر آن
۱- یک مقاله‌ی ۲۰ تا ۳۰ صفحه‌ای از مهمترین تقابل‌ها و عناصر چالش برانگیز بین این دیدگاه‌ها و تاثیر آن‌ها در سیر حو.ادث و شکل دهی به ابعاد مختلف دنیای امروز تهیه کن. امری که چشم انداز و درک هر مکتب را با مختصری از چالش‌های درونی‌اش به انتظارات مثبت و یا مخاطراتی که از ان می‌توان داشت ربط دهد. این مطلب در قالب یک فایل MDX غنی و پر از نمودار mermaid و دیاگرام و تصاویر تهیه شود. یک کاور هم برایش تهیه کن که تصویر موضوع را پوشش دهد


Thought Process
expand
۱. مقالهٔ MDX: تقابل‌های بنیادین اندیشهٔ سیاسی
mdx

text

---

# ۲. ضمیمهٔ ۵: واقع‌گرایی و آرمان‌گرایی سیاسی

```latex
۳. ضمیمهٔ ۶: خلاصهٔ جذاب کتاب
latex

۴. ضمیمهٔ ۷: نقشه‌های جغرافیایی-تاریخی
latex

۵. ضمیمهٔ ۸: تقابل‌های موضوعی
latex

۶. ضمیمهٔ ۹: رابطهٔ ایسم‌ها با چپ و راست
latex

کاور پیشنهادی برای مقالهٔ MDX
markdown
## توصیف تصویر کاور

### عنوان: «تقابل‌های بنیادین»

**توصیف بصری:**

تصویری مربعی (۱:۱) یا افقی (۱۶:۹) با عناصر زیر:

**پس‌زمینه:**
- گرادیان از قرمز تیره (چپ) به آبی تیره (راست) با میانهٔ بنفش/خاکستری
- بافت کاغذ قدیمی یا نقشهٔ جغرافیایی مات در پس‌زمینه

**عناصر مرکزی:**
- ترازوی بزرگ در مرکز، با دو کفه:
  - کفهٔ چپ (قرمز): نماد چکش و داس + نماد برابری (=)
  - کفهٔ راست (آبی): نماد دلار + نماد آزادی (پرندهٔ آزاد)
- ترازو کمی به یک سو متمایل (نشان‌دهندهٔ تنش)

**عناصر پیرامونی:**
- سمت چپ:
  - سیلوئت کارخانه
  - دست‌های گره‌کرده (همبستگی)
  - پرچم سرخ
  
- سمت راست:
  - ساختمان بورس/بانک
  - فرد تنها بر قلهٔ کوه
  - پرچم ملی

**پایین تصویر:**
- تایم‌لاین ساده: ۱۷۸۹ → ۱۸۴۸ → ۱۹۱۷ → ۱۹۸۹ → ۲۰۲۴
- با نقاط کلیدی مشخص

**متن روی تصویر:**
- عنوان اصلی (فارسی): «تقابل‌های بنیادین»
- زیرعنوان: «چگونه ایدئولوژی‌ها جهان را شکل دادند»

**سبک:**
- نیمه‌انتزاعی، مدرن
- رنگ‌های قوی اما هماهنگ
- خطوط تمیز و هندسی
- الهام از پوسترهای سیاسی قرن بیستم اما با زیبایی‌شناسی مدرن

**ابعاد پیشنهادی:**
- برای وب: ۱۹۲۰×۱۰۸۰ پیکسل
- برای شبکه‌های اجتماعی: ۱۲۰۰×۱۲۰۰ پیکسل
- برای چاپ: ۳۰۰ DPI، A4

---

### پرامپت برای تولید تصویر با AI:
A conceptual political art piece showing the clash of ideologies.
Central element: a large balance scale tilted slightly, with red (left)
and blue (right) weighted pans. Left pan contains symbols of equality,
solidarity hands, factory silhouettes. Right pan contains liberty symbols,
dollar signs, individual standing on mountain peak. Background: gradient
from deep red to deep blue with purple center. Vintage paper texture overlay.
Timeline at bottom: 1789-2024. Modern geometric style inspired by 20th century
political posters. Clean lines. Professional, thought-provoking. Persian/Farsi text:
"تقابل‌های بنیادین" (Fundamental Clashes). High quality, detailed, conceptual art.

text
undefined
خلاصهٔ نهایی آنچه تولید شد:
شماره	عنوان	صفحات تقریبی	توضیح
۱	مقالهٔ MDX	۲۵-۳۰	تقابل‌های بنیادین با نمودارهای Mermaid
۲	ضمیمهٔ ۵	۱۵-۲۰	واقع‌گرایی و آرمان‌گرایی سیاسی
۳	ضمیمهٔ ۶	۲۵-۳۰	خلاصهٔ جذاب کتاب با داستان‌ها
۴	ضمیمهٔ ۷	۱۵-۲۰	نقشه‌های جغرافیایی-تاریخی
۵	ضمیمهٔ ۸	۱۵-۲۰	تقابل‌های موضوعی با نمودار
۶	ضمیمهٔ ۹	۱۵-۲۰	رابطهٔ ایسم‌ها با چپ و راست
-	کاور	۱	توصیف و پرامپت برای تولید
مجموع صفحات اضافه‌شده: ~۱۱۰-۱۴۰ صفحه

آیا بخش دیگری نیاز به تکمیل یا اصلاح دارد؟