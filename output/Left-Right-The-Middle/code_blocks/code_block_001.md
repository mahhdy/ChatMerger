۱. کامپایلر: XeLaTeX (نه pdfLaTeX)
۲. فونت: Vazirmatn (نه BNazanin یا IRNazanin)
۳. xepersian: حتماً آخرین پکیج باشد
۴. amssymb: برای \checkmark لازم است

۵. در TikZ:
   ❌ از \\ در node استفاده نشود
   ✅ به‌جای آن از tabular:
      \node {
          \begin{tabular}{c}
          خط اول\\
          خط دوم
          \end{tabular}
      };

۶. رنگ در TikZ:
   ❌ \node[mycolor] یا \draw[mycolor]
   ✅ \node[text=mycolor] و \draw[color=mycolor]

۷. در pgfplots:
   ✅ \addplot[color=mycolor, ...] coordinates {...};

۸. در tcolorbox:
   ❌ before upper={\itshape}
   ✅ داخل کادر از \textit{} استفاده کنید
9. italic: فونت Vazirmatn italic ندارد (warning را نادیده بگیرید)