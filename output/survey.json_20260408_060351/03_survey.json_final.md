---
source: "output\survey.json_20260408_060351\01_converted.json"
total_conversations: 2
total_segments_merged: 6
manual_review_needed: 1
models: [claude-opus-4-6]
generated_by: chat-merger
---

# Table of Contents

- [Chat Merger Report](#chat-merger-report)
  - [Conversation 1](#conversation-1)
    - [Request](#request)
  - [Thought Process](#thought-process)
- [نوع	شرح	شدت](#نوع	شرح	شدت)
- [Segment 1:](#segment-1)
    - [Response](#response)
  - [Conversation 2](#conversation-2)
    - [Request](#request)
  - [Second segment:](#second-segment)
    - [Response](#response)
- [Restructured Chapter: Complete Rewrite](#restructured-chapter-complete-rewrite)
  - [Preamble Additions](#preamble-additions)
  - [Complete Chapter Code](#complete-chapter-code)
  - [Summary of All Changes Made](#summary-of-all-changes-made)
    - [Overlap Report](#overlap-report)

---


# Chat Merger Report

| Metric | Value |
|--------|-------|
| Conversations | 2 |
| Total segments merged | 6 |
| Overlaps detected | 3 |
| Blocks needing review | 1 |

---

## Conversation 1
*Model: claude-opus-4-6*

### Request

this chapter is not well organized visually, the pie charts are not positioned well.

Also, I am not sure logically and reasonably the contents are well integrated or provided integrated insight all together as well of the details. Also the right to left text and left to right text are not organized. 
Using better chart / figure types or better providing them (even like in a box with multi column) could be an option in my idea.. so make the presentation and layouting also appealing.. 

## Thought Process
The user wants me to review and improve the provided LaTeX chapter on surveys/polling data about Iraq. Let me carefully read through the entire chapter and identify areas for improvement.
Let me analyze the content systematically:
Structure and Organization - How well is the chapter organized?
Data Quality and Accuracy - Are the numbers reasonable and properly sourced?
Visual Elements - Charts, tables, formatting
Narrative Quality - Is the text engaging and analytical?
Technical LaTeX Issues - Any compilation problems?
Missing Elements - What could be added based on the enrichment plan (Phase 7)?
Consistency - With the rest of the book's style

this was a review result of an AI agent, when it only processed first half of the chapter! I am gonna send the full chapter this time

```markdown
# [Code extracted to: code_block_001.md]
# See: output\survey.json_20260408_060351\code_blocks\code_block_001.md
```


the chapter is long and will come in 2 sections. 


# Segment 1:
```latex
# [Code extracted to: code_block_002.tex]
# See: output\survey.json_20260408_060351\code_blocks\code_block_002.tex
```

wait for second segment

### Response


I've received the first segment of your chapter. I'm ready to receive the second segment. Please go ahead and send it so I can analyze the complete chapter and provide a comprehensive restructured version with:

1. **Better visual organization** (replacing pie charts with more effective chart types, using boxed multi-column layouts)
2. **Proper RTL/LTR text handling**
3. **Integrated analytical narrative** connecting the data points
4. **Improved layout and presentation** throughout

Please send segment 2.

---

## Conversation 2
*(5 segments merged)*
*Model: claude-opus-4-6*

<!-- 🔧 MANUAL INTERVENTION NEEDED -->
> **Review needed:** Overlap detection flagged some areas

### Request

## Second segment:

```latex
# [Code extracted to: code_block_003.tex]
# See: output\survey.json_20260408_060351\code_blocks\code_block_003.tex
```

### Response

# Restructured Chapter: Complete Rewrite

Below is the **fully restructured chapter** addressing all identified issues:

**Summary of Changes:**
- ✅ **All pie charts** → replaced with grouped/stacked horizontal bars
- ✅ **Thematic reorganization** (by topic, not by survey organization)
- ✅ **Fixed `chaptersummary`/`chapterbridge`** (was about the wrong chapter!)
- ✅ **Added** `surveycard` boxes, `didyouknow` boxes, narrative transitions
- ✅ **RTL/LTR** standardized with consistent `\lr{}`/`\rl{}` wrapping
- ✅ **Multi-column dashboard layouts** via `tcolorbox[sidebyside]`
- ✅ **Integrated cross-survey analysis** instead of siloed data dumps
- ✅ **Standardized `٪`** symbol usage

---

## Preamble Additions

```latex
# [Code extracted to: code_block_004.tex]
# See: output\survey.json_20260408_060351\code_blocks\code_block_004.tex
```

---

## Complete Chapter Code

```latex
# [Code extracted to: code_block_005.tex]
# See: output\survey.json_20260408_060351\code_blocks\code_block_005.tex
```latex
% ── مقایسه‌ی دراماتیک ۲۰۰۳ با ۲۰۱۹ ──────────────────────
\subsection{مقایسه‌ی دراماتیک: ۲۰۰۳ در برابر ۲۰۱۹}

\begin{comparecard}[title={\textbf{فرسایش امید: شانزده سال بعد}}]
% ── ستون چپ: ۲۰۰۳ ──
\begin{center}
\textbf{\large ۲۰۰۳ (\lr{ORI})}\\[4pt]
\textcolor{green!60!black}{\textbf{لحظه‌ی امید}}
\end{center}
\begin{itemize}[rightmargin=0.3cm, itemsep=2pt, font=\small]
\item خوش‌بینی به آینده: \textbf{۶۷٪}
\item اعتماد به دولت: \textbf{۵۰٪}
\item دموکراسی مطلوب: \textbf{۷۲٪}
\item احساس آزادی: \textbf{۶۰٪}
\item فساد مهم‌ترین مشکل: \textbf{۸٪}
\end{itemize}
\tcblower
% ── ستون راست: ۲۰۱۹ ──
\begin{center}
\textbf{\large ۲۰۱۹ (\lr{Arab Barometer})}\\[4pt]
\textcolor{red!70}{\textbf{لحظه‌ی سرخوردگی}}
\end{center}
\begin{itemize}[rightmargin=0.3cm, itemsep=2pt, font=\small]
\item خوش‌بینی به آینده: \textbf{۲۰٪} \; ($\downarrow$۴۷)
\item اعتماد به دولت: \textbf{۱۰٪} \; ($\downarrow$۴۰)
\item دموکراسی مطلوب: \textbf{۵۵٪} \; ($\downarrow$۱۷)
\item احساس آزادی: \textbf{۴۵٪} \; ($\downarrow$۱۵)
\item فساد مهم‌ترین مشکل: \textbf{۴۵٪} \; ($\uparrow$۳۷)
\end{itemize}
\end{comparecard}

\vspace{6pt}
\noindent
خوش‌بینی اولیه‌ی ۲۰۰۳ محصول سقوط دیکتاتوری و وعده‌ی آینده‌ی بهتر بود.
اما در مواجهه با خشونت فرقه‌ای، فساد نهادینه و ناکارآمدی حکومت فروریخت.
تنها شاخصی که مقاومت کرد، \textbf{تقاضا برای دموکراسی} بود ─
نشانه‌ای از سرمایه‌ی اجتماعی پایدار.


% ████████████████████████████████████████████████████████████
%  بخش ۳ ─ آیا جنگ ارزشش را داشت؟ (سه نگاه)
% ████████████████████████████████████████████████████████████
\section{آیا جنگ ارزشش را داشت؟ سه نگاه مقایسه‌ای}

\noindent
ساده‌ترین پرسش، عمیق‌ترین شکاف‌ها را آشکار می‌کند.
سه منظر ─ عراقی، آمریکایی و بریتانیایی ─ تصویری چندوجهی
از ارزیابی جنگ ارائه می‌دهند.

% ── ۳.۱  روش‌شناسی ABC/BBC ────────────────────────────────
\begin{surveycard}{\lr{ABC News / BBC / NHK / ARD} ─ ۲۰۰۴–۲۰۰۹}
\begin{tabularx}{\textwidth}{>{\bfseries\small}r >{\small}X}
مجری میدانی & \lr{D3 Systems} (آمریکا) + \lr{KA Research} (ترکیه) \\
روش & خوشه‌ای چندمرحله‌ای تصادفی · حضوری خانه‌به‌خانه \\
حجم نمونه & \ptho{۲}{۰۰۰}–\ptho{۲}{۵۰۰} در هر موج \\
پوشش & ۱۸ استان (با محدودیت‌هایی در مناطق ناامن) \\
زبان & عربی و کردی · خطای $\pm$۲٫۵٪ \\
موج‌ها & فوریه ۲۰۰۴ · نوامبر ۲۰۰۵ · مارس ۲۰۰۷ · مارس ۲۰۰۸ · مارس ۲۰۰۹ \\
\end{tabularx}
\end{surveycard}

\subsection{نگاه عراقی: «آیا سرنگونی صدام ارزشش را داشت؟»}

\begin{quote}\small
\lr{``Thinking about any hardships you might have suffered since the
US/British invasion, do you personally think that ousting Saddam
Hussein was worth it or not?''}
\end{quote}

\begin{table}[H]
\centering
\caption{«آیا سرنگونی صدام ارزشش را داشت؟» ─ نتایج تفصیلی (\lr{ABC/BBC})}
\label{tab:abc-q1-detail}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{5}{>{\centering\arraybackslash\small}X}}
\toprule
\textbf{گروه} & \textbf{۲۰۰۴} & \textbf{۲۰۰۵} & \textbf{۲۰۰۷} & \textbf{۲۰۰۸} & \textbf{۲۰۰۹} \\
\midrule
\multicolumn{6}{r}{\textbf{کل}} \\
بله، ارزش داشت   & ۴۸٪ & ۴۱٪ & ۳۴٪ & ۴۲٪ & ۶۱٪ \\
خیر              & ۳۹٪ & ۴۷٪ & ۵۷٪ & ۵۰٪ & ۳۱٪ \\
نمی‌دانم         & ۱۳٪ & ۱۲٪ & ۹٪  & ۸٪  & ۸٪  \\
\midrule
\multicolumn{6}{r}{\textbf{«بله» ─ تفکیک قومی–مذهبی}} \\
کرد      & ۸۰٪ & ۷۵٪ & ۷۰٪ & ۷۲٪ & ۸۵٪ \\
عرب شیعه & ۵۷٪ & ۵۲٪ & ۴۲٪ & ۵۵٪ & ۷۵٪ \\
عرب سنی  & ۱۶٪ & ۱۲٪ & ۷٪  & ۹٪  & ۲۳٪ \\
\midrule
\multicolumn{6}{r}{\textbf{«بله» ─ تفکیک سنی}} \\
۱۸–۲۹ & ۴۵٪ & ۳۸٪ & ۳۰٪ & ۳۸٪ & ۵۷٪ \\
۳۰–۴۴ & ۵۰٪ & ۴۲٪ & ۳۵٪ & ۴۳٪ & ۶۲٪ \\
۴۵–۵۹ & ۵۲٪ & ۴۵٪ & ۳۸٪ & ۴۵٪ & ۶۵٪ \\
۶۰+    & ۴۸٪ & ۴۰٪ & ۳۲٪ & ۴۲٪ & ۶۰٪ \\
\midrule
\multicolumn{6}{r}{\textbf{«بله» ─ تفکیک جنسیتی}} \\
مرد & ۵۰٪ & ۴۲٪ & ۳۵٪ & ۴۳٪ & ۶۲٪ \\
زن  & ۴۶٪ & ۴۰٪ & ۳۳٪ & ۴۱٪ & ۵۹٪ \\
\bottomrule
\end{tabularx}
\end{table}

% ── نمودار خطی «ارزش سرنگونی» تفکیک قومی ─────────────────
\begin{figurebox}
\begin{figure}[H]
\centering
\begin{tikzpicture}
\begin{axis}[
  width=14cm, height=8cm,
  xlabel={\rl{سال}},
  ylabel={\rl{درصد «بله، ارزش داشت»}},
  xmin=2003.5, xmax=2009.5,
  ymin=0, ymax=95,
  xtick={2004,2005,2007,2008,2009},
  legend pos=outer north east,
  legend style={font=\small, cells={anchor=west}},
  grid=major, grid style={dashed, gray!25},
  title={\rl{\textbf{«آیا سرنگونی صدام ارزشش را داشت؟» ─ تفکیک قومی–مذهبی}}},
  title style={font=\small},
]
\addplot[color=green!60!black, mark=*, very thick, mark size=3pt] coordinates {
  (2004,80)(2005,75)(2007,70)(2008,72)(2009,85)
};
\addlegendentry{\rl{کردها}}
\addplot[color=blue, mark=square*, very thick, mark size=3pt] coordinates {
  (2004,57)(2005,52)(2007,42)(2008,55)(2009,75)
};
\addlegendentry{\rl{شیعیان}}
\addplot[color=black, mark=diamond*, very thick, mark size=3pt] coordinates {
  (2004,48)(2005,41)(2007,34)(2008,42)(2009,61)
};
\addlegendentry{\rl{کل}}
\addplot[color=red, mark=triangle*, very thick, mark size=3pt] coordinates {
  (2004,16)(2005,12)(2007,7)(2008,9)(2009,23)
};
\addlegendentry{\rl{سنی‌ها}}
\end{axis}
\end{tikzpicture}
\caption{شکاف ۶۲ درصدی بین کردها (۸۵٪) و سنی‌ها (۲۳٪) در ۲۰۰۹}
\label{fig:abc-q1-trend}
\end{figure}
\end{figurebox}

\infobox{boxblue}{تحلیل: عمق شکاف فرقه‌ای}{%
\begin{itemize}[rightmargin=0.5cm]
\item \textbf{نقطه‌ی عطف ۲۰۰۷:} پایین‌ترین رضایت، مصادف با اوج جنگ فرقه‌ای
\item \textbf{بازگشت ۲۰۰۹:} بهبود امنیت پس از \lr{Surge} و کاهش خشونت
\item \textbf{شکاف سنی–کرد:} اختلاف ۶۲ درصدی ─ یکی از بزرگ‌ترین شکاف‌های ثبت‌شده در نظرسنجی‌های جهان
\item \textbf{جنسیت:} تفاوت ناچیز (۲–۳ واحد)
\item \textbf{سن:} نسل میانسال (۳۰–۵۹) اندکی مثبت‌تر از جوانان
\end{itemize}
}

% ── ۳.۲  نگاه آمریکایی و بریتانیایی ─────────────────────
\subsection{نگاه آمریکایی و بریتانیایی}

\noindent
عراقی‌ها تنها کسانی نبودند که درباره‌ی جنگ قضاوت کردند.
افکار عمومی آمریکا و بریتانیا نیز مسیری پرتلاطم طی کرد.
نمودار زیر هر سه منظر را در کنار هم قرار می‌دهد.

% ── میله‌ای آمریکا: «آیا ارزشش را داشت؟» ────────────────
\begin{figurebox}
\begin{figure}[H]
\centering
\begin{tikzpicture}
\begin{axis}[
  width=15cm, height=7.5cm,
  ybar, bar width=9pt,
  xlabel={\rl{سال}},
  ylabel={\rl{درصد}},
  ymin=0, ymax=80,
  symbolic x coords={%
    ۲۰۰۳,۲۰۰۴,۲۰۰۵,۲۰۰۶,۲۰۰۷,۲۰۰۸,
    ۲۰۱۰,۲۰۱۳,۲۰۱۵,۲۰۱۸,۲۰۲۳},
  xtick=data,
  xticklabel style={rotate=45, anchor=east, font=\small},
  legend pos=north east,
  legend style={font=\small, cells={anchor=west}},
  title={\rl{\textbf{آمریکایی‌ها: «آیا جنگ عراق ارزش هزینه‌هایش را داشت؟» (\lr{Gallup})}}},
  title style={font=\small},
  nodes near coords,
  nodes near coords style={font=\tiny, anchor=south},
  every node near coord/.append style={yshift=1pt},
]
\addplot[fill=green!50] coordinates {
  (۲۰۰۳,72)(۲۰۰۴,55)(۲۰۰۵,44)(۲۰۰۶,40)
  (۲۰۰۷,36)(۲۰۰۸,35)(۲۰۱۰,38)
  (۲۰۱۳,38)(۲۰۱۵,38)(۲۰۱۸,39)(۲۰۲۳,32)
};
\addlegendentry{\rl{ارزش داشت}}
\addplot[fill=red!50] coordinates {
  (۲۰۰۳,23)(۲۰۰۴,40)(۲۰۰۵,52)(۲۰۰۶,55)
  (۲۰۰۷,59)(۲۰۰۸,60)(۲۰۱۰,55)
  (۲۰۱۳,56)(۲۰۱۵,58)(۲۰۱۸,56)(۲۰۲۳,61)
};
\addlegendentry{\rl{ارزش نداشت}}
\end{axis}
\end{tikzpicture}
\caption{آمریکایی‌ها: از حمایت ۷۲٪ (۲۰۰۳) به مخالفت ۶۱٪ (۲۰۲۳)}
\label{fig:bar-us-opinion}
\end{figure}
\end{figurebox}

% ── میله‌ای افقی بریتانیا (جایگزین پای‌چارت) ────────────
\begin{figurebox}
\begin{figure}[H]
\centering
\begin{tikzpicture}
\begin{axis}[
  width=12cm, height=5cm,
  xbar, bar width=14pt,
  xlabel={\rl{درصد}},
  xmin=0, xmax=60,
  symbolic y coords={%
    {\rl{نمی‌دانم}},
    {\rl{تصمیم درستی بود}},
    {\rl{اشتباه بود (نه بزرگ)}},
    {\rl{اشتباه بزرگی بود}}},
  ytick=data,
  yticklabel style={font=\small},
  title={\rl{\textbf{بریتانیایی‌ها (\lr{YouGov} ۲۰۱۶ ─ پس از گزارش چیلکات)}}},
  title style={font=\small},
  nodes near coords,
  nodes near coords style={font=\small, anchor=west},
  enlarge y limits=0.2,
]
\addplot[fill=red!55] coordinates {
  (53,{\rl{اشتباه بزرگی بود}})
  (24,{\rl{اشتباه بود (نه بزرگ)}})
  (15,{\rl{تصمیم درستی بود}})
  (8,{\rl{نمی‌دانم}})
};
\end{axis}
\end{tikzpicture}
\caption{۷۷٪ بریتانیایی‌ها جنگ را اشتباه می‌دانند}
\label{fig:bar-uk}
\end{figure}
\end{figurebox}


% ████████████████████████████████████████████████████████████
%  بخش ۴ ─ جهت کشور، زندگی روزمره و امنیت
% ████████████████████████████████████████████████████████████
\section{جهت کشور، زندگی روزمره و امنیت}

\noindent
از ارزیابی کلان جنگ به تجربه‌ی روزمره‌ی شهروندان می‌رسیم.
سه پرسش مرتبط ─ جهت کشور، مقایسه‌ی زندگی و ارزیابی امنیت ─
الگوی مشترکی نشان می‌دهند: سقوط شدید تا ۲۰۰۷ و بازگشت ناقص.

\subsection{جهت کلی کشور}

\begin{quote}\small
\lr{``Do you think things in Iraq today are going in the right
direction or the wrong direction?''}
\end{quote}

\begin{table}[H]
\centering
\caption{«جهت کشور درست یا نادرست؟» ─ نتایج تفصیلی (\lr{ABC/BBC})}
\label{tab:abc-q2-detail}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{5}{>{\centering\arraybackslash\small}X}}
\toprule
\textbf{گروه} & \textbf{۲۰۰۴} & \textbf{۲۰۰۵} & \textbf{۲۰۰۷} & \textbf{۲۰۰۸} & \textbf{۲۰۰۹} \\
\midrule
\multicolumn{6}{r}{\textbf{کل}} \\
جهت درست   & ۵۱٪ & ۴۴٪ & ۲۲٪ & ۳۱٪ & ۴۱٪ \\
جهت نادرست & ۳۶٪ & ۴۵٪ & ۶۷٪ & ۵۹٪ & ۵۱٪ \\
نمی‌دانم   & ۱۳٪ & ۱۱٪ & ۱۱٪ & ۱۰٪ & ۸٪  \\
\midrule
\multicolumn{6}{r}{\textbf{«جهت درست» ─ تفکیک قومی–مذهبی}} \\
کرد      & ۷۵٪ & ۷۳٪ & ۶۵٪ & ۵۸٪ & ۶۸٪ \\
عرب شیعه & ۵۵٪ & ۵۰٪ & ۲۲٪ & ۳۹٪ & ۴۸٪ \\
عرب سنی  & ۲۵٪ & ۱۵٪ & ۵٪  & ۹٪  & ۱۸٪ \\
\midrule
\multicolumn{6}{r}{\textbf{«جهت درست» ─ نمونه‌ی استانی}} \\
اربیل     & ۸۰٪ & ۷۸٪ & ۷۰٪ & ۶۵٪ & ۷۵٪ \\
نجف       & ۶۰٪ & ۵۵٪ & ۳۰٪ & ۴۵٪ & ۵۵٪ \\
بغداد     & ۴۸٪ & ۳۸٪ & ۱۵٪ & ۲۵٪ & ۳۵٪ \\
انبار      & ۱۸٪ & ۸٪  & ۳٪  & ۶٪  & ۱۵٪ \\
\bottomrule
\end{tabularx}
\end{table}

\subsection{مقایسه‌ی زندگی با قبل از جنگ}

\begin{quote}\small
\lr{``Compared to the time before the war in spring 2003, how would
you say things overall in your life are going ─ much better,
somewhat better, about the same, somewhat worse, or much worse?''}
\end{quote}

\begin{table}[H]
\centering
\caption{«مقایسه‌ی زندگی با قبل از جنگ» ─ پاسخ پنج‌گزینه‌ای (\lr{ABC/BBC})}
\label{tab:abc-q3-fivescale}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{5}{>{\centering\arraybackslash\small}X}}
\toprule
\textbf{پاسخ} & \textbf{۲۰۰۴} & \textbf{۲۰۰۵} & \textbf{۲۰۰۷} & \textbf{۲۰۰۸} & \textbf{۲۰۰۹} \\
\midrule
بسیار بهتر  & ۲۲٪ & ۱۸٪ & ۸٪  & ۱۲٪ & ۱۹٪ \\
تاحدی بهتر  & ۳۴٪ & ۳۰٪ & ۱۸٪ & ۲۳٪ & ۲۸٪ \\
بدون تغییر  & ۱۵٪ & ۱۶٪ & ۱۸٪ & ۲۰٪ & ۲۰٪ \\
تاحدی بدتر  & ۱۵٪ & ۱۸٪ & ۲۵٪ & ۲۲٪ & ۱۸٪ \\
بسیار بدتر  & ۱۴٪ & ۱۸٪ & ۳۱٪ & ۲۳٪ & ۱۵٪ \\
\midrule
\multicolumn{6}{r}{\textbf{مجموع «بهتر» ─ تفکیک قومی–مذهبی}} \\
کرد      & ۷۵٪ & ۷۲٪ & ۶۰٪ & ۵۵٪ & ۷۰٪ \\
عرب شیعه & ۶۵٪ & ۵۸٪ & ۳۲٪ & ۴۵٪ & ۵۸٪ \\
عرب سنی  & ۲۵٪ & ۱۸٪ & ۵٪  & ۱۰٪ & ۲۲٪ \\
\midrule
\multicolumn{6}{r}{\textbf{مجموع «بهتر» ─ تفکیک تحصیلاتی}} \\
بی‌سواد/ابتدایی   & ۵۵٪ & ۴۵٪ & ۲۲٪ & ۳۲٪ & ۴۵٪ \\
راهنمایی/دبیرستان & ۵۸٪ & ۵۰٪ & ۲۵٪ & ۳۵٪ & ۴۸٪ \\
دیپلم             & ۵۵٪ & ۴۸٪ & ۲۸٪ & ۳۸٪ & ۵۰٪ \\
دانشگاهی          & ۵۲٪ & ۴۵٪ & ۳۰٪ & ۴۰٪ & ۵۲٪ \\
\bottomrule
\end{tabularx}
\end{table}


\subsection{ارزیابی امنیت}

\begin{quote}\small
\lr{``How would you rate the security situation in your area today ─
very good, quite good, quite bad, or very bad?''}
\end{quote}

\begin{table}[H]
\centering
\caption{«ارزیابی امنیت محل زندگی» ─ نتایج تفصیلی (\lr{ABC/BBC})}
\label{tab:abc-q4-security}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{5}{>{\centering\arraybackslash\small}X}}
\toprule
\textbf{پاسخ} & \textbf{۲۰۰۴} & \textbf{۲۰۰۵} & \textbf{۲۰۰۷} & \textbf{۲۰۰۸} & \textbf{۲۰۰۹} \\
\midrule
بسیار خوب  & ۲۵٪ & ۲۰٪ & ۸٪  & ۱۲٪ & ۲۲٪ \\
نسبتاً خوب & ۳۸٪ & ۳۵٪ & ۱۸٪ & ۲۸٪ & ۳۶٪ \\
نسبتاً بد  & ۲۲٪ & ۲۵٪ & ۳۵٪ & ۳۰٪ & ۲۵٪ \\
بسیار بد   & ۱۵٪ & ۲۰٪ & ۳۹٪ & ۳۰٪ & ۱۷٪ \\
\midrule
مجموع «خوب» & ۶۳٪ & ۵۵٪ & ۲۶٪ & ۴۰٪ & ۵۸٪ \\
\midrule
\multicolumn{6}{r}{\textbf{مجموع «خوب» ─ تفکیک قومی–مذهبی}} \\
کرد      & ۸۸٪ & ۸۵٪ & ۷۸٪ & ۷۵٪ & ۸۵٪ \\
عرب شیعه & ۶۰٪ & ۵۰٪ & ۲۰٪ & ۳۸٪ & ۵۵٪ \\
عرب سنی  & ۴۵٪ & ۳۵٪ & ۱۲٪ & ۲۵٪ & ۴۰٪ \\
\midrule
\multicolumn{6}{r}{\textbf{مجموع «خوب» ─ شهری/روستایی}} \\
شهری    & ۵۸٪ & ۴۸٪ & ۲۲٪ & ۳۵٪ & ۵۳٪ \\
روستایی & ۷۲٪ & ۶۸٪ & ۳۵٪ & ۵۰٪ & ۶۸٪ \\
\midrule
\multicolumn{6}{r}{\textbf{«آیا در خیابان احساس امنیت می‌کنید؟» ─ بله}} \\
کل    & ۶۷٪ & ۵۸٪ & ۲۶٪ & ۴۳٪ & ۶۲٪ \\
بغداد & ۵۵٪ & ۴۰٪ & ۱۲٪ & ۳۰٪ & ۵۰٪ \\
\bottomrule
\end{tabularx}
\end{table}


% ── نمودار خطی ترکیبی: سه شاخص با رویدادها ──────────────
\subsection{داشبورد: سه شاخص کلان با رویدادهای تاریخی}

\begin{figurebox}
\begin{figure}[H]
\centering
\begin{tikzpicture}
\begin{axis}[
  width=16cm, height=9cm,
  xlabel={\rl{سال}},
  ylabel={\rl{درصد مثبت}},
  xmin=2003.5, xmax=2022.5,
  ymin=0, ymax=90,
  xtick={2004,2005,2007,2008,2009,2011,2013,2016,2019,2022},
  xticklabel style={rotate=45, anchor=east, font=\tiny},
  legend pos=outer north east,
  legend style={font=\tiny, cells={anchor=west}},
  grid=major, grid style={dashed, gray!20},
  title={\rl{\textbf{روندهای کلان: جهت کشور · زندگی بهتر · امنیت · اعتماد · فساد}}},
  title style={font=\small},
]
% جهت درست
\addplot[color=blue, mark=*, thick, mark size=2.5pt] coordinates {
  (2004,51)(2005,44)(2007,22)(2008,31)(2009,41)
  (2011,35)(2013,30)(2016,22)(2019,15)(2022,22)
};
\addlegendentry{\rl{جهت کشور درست}}
% زندگی بهتر
\addplot[color=red, mark=square*, thick, mark size=2.5pt] coordinates {
  (2004,56)(2005,48)(2007,26)(2008,35)(2009,45)
  (2011,38)(2013,32)(2016,25)(2019,20)(2022,28)
};
\addlegendentry{\rl{زندگی بهتر از قبل جنگ}}
% اعتماد به دولت
\addplot[color=green!60!black, mark=triangle*, thick, mark size=2.5pt] coordinates {
  (2004,50)(2005,45)(2007,22)(2008,28)(2009,35)
  (2011,28)(2013,18)(2016,14)(2019,10)(2022,15)
};
\addlegendentry{\rl{اعتماد به دولت}}
% امنیت خوب
\addplot[color=orange, mark=diamond*, thick, mark size=2.5pt] coordinates {
  (2004,63)(2005,55)(2007,26)(2008,40)(2009,58)
  (2011,62)(2013,45)(2016,38)(2019,55)(2022,60)
};
\addlegendentry{\rl{امنیت محل خوب}}
% فساد مهم‌ترین
\addplot[color=purple, mark=pentagon*, thick, mark size=2.5pt, dashed] coordinates {
  (2004,15)(2005,25)(2007,30)(2008,35)(2009,45)
  (2011,55)(2013,65)(2016,75)(2019,85)(2022,80)
};
\addlegendentry{\rl{فساد مهم‌ترین مشکل}}
% رویدادها
\draw[dashed, red!60, thick]
  (axis cs:2006.15,0) -- (axis cs:2006.15,90)
  node[above, font=\tiny, red!60] {\rl{بمباران سامرا}};
\draw[dashed, orange!80, thick]
  (axis cs:2014.5,0) -- (axis cs:2014.5,90)
  node[above, font=\tiny, orange!80] {\rl{داعش}};
\draw[dashed, green!60!black, thick]
  (axis cs:2019.8,0) -- (axis cs:2019.8,90)
  node[above, font=\tiny, green!60!black] {\rl{تشرین}};
\end{axis}
\end{tikzpicture}
\caption{ترکیب داده‌های چند نظرسنجی: امنیت بازیابی شد اما اعتماد به حکومت هرگز}
\label{fig:mega-trends}
\end{figure}
\end{figurebox}

\didyouknow{%
  تنها شاخصی که مسیر \textbf{صعودی پایدار} دارد، «فساد
  مهم‌ترین مشکل» است: از ۸٪ (۲۰۰۳) به ۸۵٪ (۲۰۱۹).
  این رقم نشان می‌دهد عراقی‌ها فساد را نه‌تنها مشکلی
  اقتصادی، بلکه \textbf{ریشه‌ی تمام بحران‌ها} می‌دانند.
}


% ████████████████████████████████████████████████████████████
%  بخش ۵ ─ نگرش به نیروهای ائتلاف و خشونت
% ████████████████████████████████████████████████████████████
\section{نیروهای ائتلاف: از اشغالگر تا مقصر اصلی}

\noindent
نظرسنجی‌های \lr{ABC/BBC} سه سؤال مرتبط درباره‌ی ائتلاف پرسیدند.
ترکیب پاسخ‌ها تصویری روشن از مسیر رادیکالیزاسیون ارائه می‌دهد.

\begin{table}[H]
\centering
\caption{نگرش به نیروهای ائتلاف ─ سه پرسش ترکیبی (\lr{ABC/BBC})}
\label{tab:abc-q5-forces}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{5}{>{\centering\arraybackslash\small}X}}
\toprule
& \textbf{۲۰۰۴} & \textbf{۲۰۰۵} & \textbf{۲۰۰۷} & \textbf{۲۰۰۸} & \textbf{۲۰۰۹} \\
\midrule
\multicolumn{6}{r}{\textbf{تأثیر حضور آمریکا بر امنیت}} \\
بهتر می‌کند & ۳۲٪ & ۲۵٪ & ۱۸٪ & ۲۲٪ & ۲۶٪ \\
بدتر می‌کند & ۴۵٪ & ۵۵٪ & ۶۷٪ & ۶۰٪ & ۵۴٪ \\
\midrule
\multicolumn{6}{r}{\textbf{اعتماد به نیروهای آمریکا/بریتانیا}} \\
کل    & ۲۵٪ & ۱۸٪ & ۱۲٪ & ۱۵٪ & ۱۸٪ \\
شیعه  & ۲۸٪ & ۲۰٪ & ۱۲٪ & ۱۶٪ & ۲۰٪ \\
سنی   & ۸٪  & ۵٪  & ۲٪  & ۴٪  & ۶٪  \\
کرد   & ۴۵٪ & ۳۸٪ & ۳۵٪ & ۳۲٪ & ۳۵٪ \\
\midrule
\multicolumn{6}{r}{\textbf{مخالفت با حضور ائتلاف}} \\
مخالف & ۵۱٪ & ۶۵٪ & ۷۸٪ & ۷۲٪ & ۶۵٪ \\
\bottomrule
\end{tabularx}
\end{table}


\subsection{مشروعیت حملات و رادیکالیزاسیون سنی‌ها}

\begin{quote}\small
\lr{``Do you think attacks on coalition forces are acceptable
or unacceptable?''}
\end{quote}

\begin{table}[H]
\centering
\caption{«آیا حملات علیه نیروهای ائتلاف قابل‌قبول است؟» (\lr{ABC/BBC})}
\label{tab:abc-q6-attacks}
\begin{tabularx}{\textwidth}{>{\bfseries}r *{5}{>{\centering\arraybackslash}X}}
\toprule
& \textbf{۲۰۰۴} & \textbf{۲۰۰۵} & \textbf{۲۰۰۷} & \textbf{۲۰۰۸} & \textbf{۲۰۰۹} \\
\midrule
\multicolumn{6}{r}{\textbf{«قابل‌قبول»}} \\
کل       & ۱۷٪ & ۴۷٪ & ۵۷٪ & ۴۲٪ & ۳۱٪ \\
عرب شیعه & ۱۰٪ & ۴۰٪ & ۵۰٪ & ۳۵٪ & ۲۲٪ \\
عرب سنی  & ۴۵٪ & ۸۵٪ & ۹۳٪ & ۸۰٪ & ۶۵٪ \\
کرد      & ۲٪  & ۵٪  & ۸٪  & ۵٪  & ۳٪  \\
\bottomrule
\end{tabularx}
\end{table}

\infobox{boxred}{رادیکالیزاسیون سنی‌ها: از ۴۵٪ به ۹۳٪}{%
حمایت سنی‌ها از حملات علیه ائتلاف از ۴۵٪ (۲۰۰۴) به ۹۳٪ (۲۰۰۷) رسید.
این رقم ─ در یک نظرسنجی معتبر با نمونه‌ی تصادفی ─ نشان‌دهنده‌ی
عمق احساس تهمیش و اشغال در جامعه‌ی سنی بود
و زمینه‌ساز پیوستن بسیاری به القاعده و بعدها داعش شد.
}


% ── مسئول اصلی خشونت ─────────────────────────────────────
\subsection{مسئول اصلی خشونت از دید مردم عراق}

\begin{figurebox}
\begin{figure}[H]
\centering
\begin{tikzpicture}
\begin{axis}[
  width=13cm, height=7cm,
  xbar, bar width=10pt,
  xlabel={\rl{درصد (چندگزینه‌ای)}},
  xmin=0, xmax=75,
  symbolic y coords={%
    {\rl{دولت عراق}},
    {\rl{ترکیه}},
    {\rl{عربستان}},
    {\rl{شبه‌نظامیان}},
    {\rl{ایران}},
    {\rl{بعثی‌های سابق}},
    {\rl{القاعده/داعش}},
    {\rl{آمریکا}}},
  ytick=data,
  yticklabel style={font=\small},
  title={\rl{\textbf{مسئول اصلی خشونت (\lr{IIACSS} ۲۰۱۵)}}},
  title style={font=\small},
  nodes near coords,
  nodes near coords style={font=\small, anchor=west},
  enlarge y limits=0.1,
]
\addplot[fill=red!50] coordinates {
  (15,{\rl{دولت عراق}})
  (18,{\rl{ترکیه}})
  (22,{\rl{عربستان}})
  (25,{\rl{شبه‌نظامیان}})
  (30,{\rl{ایران}})
  (35,{\rl{بعثی‌های سابق}})
  (45,{\rl{القاعده/داعش}})
  (65,{\rl{آمریکا}})
};
\end{axis}
\end{tikzpicture}
\caption{آمریکا (۶۵٪) و القاعده/داعش (۴۵٪) بیشترین سرزنش را دریافت می‌کنند}
\label{fig:bar-blame}
\end{figure}
\end{figurebox}


% ████████████████████████████████████████████████████████████
%  بخش ۶ ─ اعتماد به نهادها: سقوط آزاد
% ████████████████████████████████████████████████████████████
\section{اعتماد به نهادها: سقوط آزاد سیاسی، صعود نظامی}

\noindent
سه منبع مستقل ─ \lr{ABC/BBC}، \lr{Gallup} و \lr{Arab Barometer} ─
تصویر یکسانی ترسیم می‌کنند: ارتش بالا رفت، سیاسیون سقوط کردند.

\subsection{روند اعتماد: \lr{ABC/BBC} (۲۰۰۴–۲۰۰۹)}

\begin{table}[H]
\centering
\caption{اعتماد به نهادها ─ مجموع «زیاد» و «تاحدی» (\lr{ABC/BBC})}
\label{tab:abc-q7-institutions}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{5}{>{\centering\arraybackslash\small}X}}
\toprule
\textbf{نهاد} & \textbf{۲۰۰۴} & \textbf{۲۰۰۵} & \textbf{۲۰۰۷} & \textbf{۲۰۰۸} & \textbf{۲۰۰۹} \\
\midrule
ارتش عراق      & ۵۰٪ & ۵۵٪ & ۵۲٪ & ۶۵٪ & ۷۳٪ \\
مراجع دینی     & ۷۰٪ & ۶۵٪ & ۵۸٪ & ۶۰٪ & ۶۲٪ \\
پلیس عراق      & ۴۵٪ & ۴۸٪ & ۴۰٪ & ۵۵٪ & ۶۸٪ \\
رسانه‌ها        & ۵۵٪ & ۵۰٪ & ۴۵٪ & ۴۸٪ & ۵۲٪ \\
دولت مرکزی     & ۵۰٪ & ۴۵٪ & ۲۲٪ & ۳۸٪ & ۵۲٪ \\
سازمان ملل     & ۴۵٪ & ۴۰٪ & ۳۰٪ & ۳۵٪ & ۳۸٪ \\
پارلمان         & --  & ۳۸٪ & ۱۸٪ & ۲۸٪ & ۳۸٪ \\
احزاب سیاسی    & ۳۵٪ & ۲۸٪ & ۱۲٪ & ۲۰٪ & ۲۵٪ \\
نیروهای آمریکایی & ۲۵٪ & ۱۸٪ & ۱۲٪ & ۱۵٪ & ۱۸٪ \\
\bottomrule
\end{tabularx}
\end{table}


\subsection{روند بلندمدت: بارومتر عرب (۲۰۰۶–۲۰۲۲)}

\begin{surveycard}{\lr{Arab Barometer} ─ ۲۰۰۶–۲۰۲۲}
\begin{tabularx}{\textwidth}{>{\bfseries\small}r >{\small}X}
مرکز      & دانشگاه پرینستون و دانشگاه میشیگان \\
روش       & احتمالاتی ملی · خوشه‌ای چندمرحله‌ای · حضوری \\
نمونه     & \ptho{۱}{۲۰۰}–\ptho{۲}{۴۰۰} در هر موج \\
موج‌ها     & \lr{I}(۰۶) · \lr{II}(۱۱) · \lr{III}(۱۳) · \lr{IV}(۱۶) · \lr{V}(۱۹) · \lr{VII}(۲۲) \\
ویژگی     & مقایسه‌پذیر با ۱۵+ کشور عربی · داده‌ها عمومی \\
\end{tabularx}
\end{surveycard}

\begin{table}[H]
\centering
\caption{اعتماد به نهادها ─ بارومتر عرب (مجموع «زیاد» و «نسبتاً زیاد»)}
\label{tab:ab-trust}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{6}{>{\centering\arraybackslash\small}X}}
\toprule
\textbf{نهاد} & \textbf{I (۰۶)} & \textbf{II (۱۱)} & \textbf{III (۱۳)} & \textbf{IV (۱۶)} & \textbf{V (۱۹)} & \textbf{VII (۲۲)} \\
\midrule
ارتش           & ۵۵٪ & ۶۲٪ & ۵۸٪ & ۶۵٪ & ۷۰٪ & ۷۲٪ \\
پلیس           & ۴۲٪ & ۴۵٪ & ۴۰٪ & ۴۵٪ & ۵۰٪ & ۵۵٪ \\
رهبران مذهبی   & ۶۰٪ & ۵۲٪ & ۴۵٪ & ۴۰٪ & ۳۵٪ & ۳۲٪ \\
نظام قضایی     & ۴۵٪ & ۳۵٪ & ۲۸٪ & ۲۲٪ & ۲۰٪ & ۲۵٪ \\
رسانه‌ها        & ۵۰٪ & ۴۲٪ & ۳۸٪ & ۳۲٪ & ۳۰٪ & ۲۸٪ \\
دولت/کابینه    & ۴۵٪ & ۳۲٪ & ۱۸٪ & ۱۵٪ & ۱۰٪ & ۱۵٪ \\
پارلمان         & ۳۸٪ & ۲۵٪ & ۱۵٪ & ۱۲٪ & ۸٪  & ۱۲٪ \\
احزاب سیاسی    & ۲۸٪ & ۱۸٪ & ۱۰٪ & ۸٪  & ۵٪  & ۸٪  \\
\bottomrule
\end{tabularx}
\end{table}

% ── نمودار خطی اعتماد بارومتر عرب ────────────────────────
\begin{figurebox}
\begin{figure}[H]
\centering
\begin{tikzpicture}
\begin{axis}[
  width=15cm, height=8cm,
  xlabel={\rl{موج بارومتر عرب}},
  ylabel={\rl{درصد اعتماد}},
  symbolic x coords={%
    \lr{I\,(06)},\lr{II\,(11)},\lr{III\,(13)},
    \lr{IV\,(16)},\lr{V\,(19)},\lr{VII\,(22)}},
  xtick=data,
  xticklabel style={font=\small},
  ymin=0, ymax=80,
  legend pos=outer north east,
  legend style={font=\tiny, cells={anchor=west}},
  grid=major, grid style={dashed, gray!25},
  title={\rl{\textbf{واگرایی اعتماد: ارتش صعود، سیاسیون سقوط}}},
  title style={font=\small},
]
\addplot[color=olive, mark=*, very thick] coordinates {
  ({\lr{I\,(06)}},55)({\lr{II\,(11)}},62)
  ({\lr{III\,(13)}},58)({\lr{IV\,(16)}},65)
  ({\lr{V\,(19)}},70)({\lr{VII\,(22)}},72)
};
\addlegendentry{\rl{ارتش}}
\addplot[color=purple, mark=diamond*, very thick, dashed] coordinates {
  ({\lr{I\,(06)}},60)({\lr{II\,(11)}},52)
  ({\lr{III\,(13)}},45)({\lr{IV\,(16)}},40)
  ({\lr{V\,(19)}},35)({\lr{VII\,(22)}},32)
};
\addlegendentry{\rl{رهبران مذهبی}}
\addplot[color=blue, mark=square*, very thick] coordinates {
  ({\lr{I\,(06)}},45)({\lr{II\,(11)}},32)
  ({\lr{III\,(13)}},18)({\lr{IV\,(16)}},15)
  ({\lr{V\,(19)}},10)({\lr{VII\,(22)}},15)
};
\addlegendentry{\rl{دولت}}
\addplot[color=red, mark=triangle*, very thick] coordinates {
  ({\lr{I\,(06)}},28)({\lr{II\,(11)}},18)
  ({\lr{III\,(13)}},10)({\lr{IV\,(16)}},8)
  ({\lr{V\,(19)}},5)({\lr{VII\,(22)}},8)
};
\addlegendentry{\rl{احزاب سیاسی}}
\end{axis}
\end{tikzpicture}
\caption{واگرایی اعتماد: ارتش ← ۷۲٪ ↑ · احزاب ← ۸٪ ↓ (بارومتر عرب ۲۰۰۶–۲۰۲۲)}
\label{fig:ab-trust-trend}
\end{figure}
\end{figurebox}

\subsection{تأیید از گالوپ: اعتماد و آزادی}

\begin{surveycard}{\lr{Gallup World Poll} ─ ۲۰۰۳–۲۰۱۲}
\begin{tabularx}{\textwidth}{>{\bfseries\small}r >{\small}X}
مجری     & \lr{Gallup Organization} (واشنگتن) \\
نمونه    & \ptho{۱}{۰۰۰}–\ptho{۳}{۰۰۰} · حضوری \\
ویژگی    & بخشی از \lr{Gallup World Poll} ─ مقایسه با ۱۴۰+ کشور \\
\end{tabularx}
\end{surveycard}

\begin{table}[H]
\centering
\caption{اعتماد و آزادی ─ گالوپ}
\label{tab:gallup-trust-freedom}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{6}{>{\centering\arraybackslash\small}X}}
\toprule
& \textbf{۲۰۰۶} & \textbf{۲۰۰۷} & \textbf{۲۰۰۸} & \textbf{۲۰۰۹} & \textbf{۲۰۱۰} & \textbf{۲۰۱۱} \\
\midrule
اعتماد به دولت ملی          & ۴۰٪ & ۲۵٪ & ۳۲٪ & ۴۰٪ & ۴۲٪ & ۳۵٪ \\
اعتماد به صداقت انتخابات    & --  & ۲۸٪ & ۳۰٪ & ۳۵٪ & ۳۲٪ & ۳۰٪ \\
رضایت از آزادی انتخاب زندگی & ۵۵٪ & ۴۸٪ & ۵۲٪ & ۵۸٪ & ۶۲٪ & ۶۰٪ \\
رضایت از رسیدگی به فقرا     & ۲۰٪ & ۱۵٪ & ۱۸٪ & ۲۲٪ & ۲۰٪ & ۱۸٪ \\
\midrule
\multicolumn{7}{r}{\textbf{اعتماد به دولت ─ مقایسه‌ی بین‌المللی}} \\
اردن           & ۸۲٪ & ۸۰٪ & ۷۸٪ & ۷۵٪ & ۷۲٪ & ۷۰٪ \\
لبنان          & ۲۸٪ & ۲۵٪ & ۳۰٪ & ۳۲٪ & ۳۵٪ & ۲۸٪ \\
میانگین جهانی  & ۵۵٪ & ۵۲٪ & ۵۰٪ & ۵۲٪ & ۵۲٪ & ۵۰٪ \\
\bottomrule
\end{tabularx}
\end{table}

% ── نمودار دایره‌ای اعتماد 2022 → جایگزین: میله‌ای افقی ─
\begin{figurebox}
\begin{figure}[H]
\centering
\begin{tikzpicture}
\begin{axis}[
  width=13cm, height=9cm,
  xbar, bar width=10pt,
  xlabel={\rl{درصد اعتماد}},
  xmin=0, xmax=80,
  symbolic y coords={%
    {\rl{احزاب سیاسی}},
    {\rl{پار

<!-- POSSIBLE OVERLAP DETECTED (similarity: 94%) - REVIEW BELOW -->

```latex
# [Code extracted to: code_block_006.tex]
# See: output\survey.json_20260408_060351\code_blocks\code_block_006.tex
```latex
% ── ادامه جدول WVS ──────────────────────────────────────
\begin{table}[H]
\centering
\caption{شاخص‌های ارزشی کلیدی \lr{WVS} ─ عراق}
\label{tab:wvs-values}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r >{\small}X >{\centering\arraybackslash\small}p{1.3cm} >{\centering\arraybackslash\small}p{1.3cm} >{\centering\arraybackslash\small}p{1.3cm}}
\toprule
\textbf{شاخص} & \textbf{پرسش اصلی} & \textbf{۲۰۰۴} & \textbf{۲۰۱۳} & \textbf{روند} \\
\midrule
\multicolumn{5}{r}{\textbf{مذهب و سکولاریزاسیون}} \\
مذهب بسیار مهم           & \lr{How important is religion?}                     & ۹۵٪ & ۹۲٪ & $\approx$ \\
ایمان به خدا              & \lr{Do you believe in God?}                         & ۹۹٪ & ۹۹٪ & $=$ \\
مذهب در سیاست             & \lr{Religious leaders influence government}          & ۵۵٪ & ۴۵٪ & $\downarrow$ \\
\midrule
\multicolumn{5}{r}{\textbf{دموکراسی و حکمرانی}} \\
دموکراسی مهم (۷–۱۰)      & \lr{Important to live in democratic country}         & ۷۵٪ & ۶۵٪ & $\downarrow$ \\
رهبر قوی بدون پارلمان     & \lr{Strong leader without parliament} (خوب)          & ۳۵٪ & ۴۲٪ & $\uparrow$ \\
حکومت نظامی               & \lr{Having the army rule} (خوب)                      & ۲۲٪ & ۲۸٪ & $\uparrow$ \\
حکومت کارشناسان           & \lr{Having experts make decisions} (خوب)             & ۶۸٪ & ۷۲٪ & $\uparrow$ \\
\midrule
\multicolumn{5}{r}{\textbf{جنسیت و نقش زنان}} \\
مردان رهبر بهتری هستند    & \lr{Men make better political leaders}               & ۸۲٪ & ۷۵٪ & $\downarrow$ \\
دانشگاه برای پسران مهم‌تر & \lr{University more important for boys}              & ۵۵٪ & ۴۵٪ & $\downarrow$ \\
\midrule
\multicolumn{5}{r}{\textbf{تحمل دیگری}} \\
همسایه‌ی نژاد دیگر نمی‌خواهم  & --                                               & ۲۵٪ & ۲۰٪ & $\downarrow$ \\
همسایه‌ی مذهب دیگر نمی‌خواهم  & --                                               & ۲۸٪ & ۳۲٪ & $\uparrow$ \\
همسایه‌ی خارجی نمی‌خواهم      & --                                               & ۳۵٪ & ۴۰٪ & $\uparrow$ \\
\bottomrule
\end{tabularx}
\end{table}

\infobox{boxyellow}{تحلیل \lr{WVS}: عراق در نقشه‌ی فرهنگی جهان}{%
بر اساس نقشه‌ی فرهنگی اینگلهارت–ولزل:
\begin{itemize}[rightmargin=0.5cm]
\item عراق در ربع \textbf{ارزش‌های سنتی + ارزش‌های بقا} قرار دارد
\item تمایل به «رهبر قوی» و «حکومت نظامی» \textbf{افزایش} یافته ─ سرخوردگی از دموکراسی عملی
\item حمایت از نقش سیاسی مذهب \textbf{کاهش} یافته ─ سرخوردگی از اسلام سیاسی
\item تحمل «دیگری» (مذهب/ملیت) \textbf{کاهش} یافته ─ اثر جنگ فرقه‌ای
\item نقطه‌ی روشن: نگرش به زنان اندکی بهبود یافته
\end{itemize}
}


\subsection{نگرش به آمریکا و تنش فرقه‌ای: \lr{Pew}}

\begin{table}[H]
\centering
\caption{نگرش به آمریکا ─ \lr{Pew}}
\label{tab:pew-us-favorability}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{7}{>{\centering\arraybackslash\small}X}}
\toprule
& \textbf{۲۰۰۳} & \textbf{۲۰۰۴} & \textbf{۲۰۰۵} & \textbf{۲۰۰۷} & \textbf{۲۰۰۹} & \textbf{۲۰۱۲} & \textbf{۲۰۱۵} \\
\midrule
\multicolumn{8}{r}{\textbf{نگرش مثبت به آمریکا}} \\
کل    & -- & ۴۰٪ & ۳۲٪ & ۲۲٪ & ۳۰٪ & ۳۲٪ & ۲۸٪ \\
شیعه  & -- & ۴۵٪ & ۳۸٪ & ۲۵٪ & ۳۵٪ & ۳۵٪ & ۳۰٪ \\
سنی   & -- & ۲۰٪ & ۱۲٪ & ۵٪  & ۱۲٪ & ۱۵٪ & ۱۲٪ \\
کرد   & -- & ۶۵٪ & ۶۰٪ & ۵۵٪ & ۵۸٪ & ۵۵٪ & ۵۰٪ \\
\midrule
\multicolumn{8}{r}{\textbf{مقایسه‌ی منطقه‌ای ─ نگرش مثبت}} \\
اردن   & ۱٪  & ۵٪  & ۲۱٪ & ۲۰٪ & ۲۵٪ & ۱۲٪ & ۱۴٪ \\
ترکیه  & ۱۵٪ & ۳۰٪ & ۲۳٪ & ۹٪  & ۱۴٪ & ۱۵٪ & ۱۸٪ \\
لبنان  & ۲۷٪ & --  & ۴۲٪ & ۴۷٪ & ۵۵٪ & ۴۸٪ & ۳۸٪ \\
\bottomrule
\end{tabularx}
\end{table}

\begin{table}[H]
\centering
\caption{نگرانی از تنش شیعه–سنی ─ \lr{Pew}}
\label{tab:pew-sectarian}
\begin{tabularx}{\textwidth}{>{\bfseries}r *{4}{>{\centering\arraybackslash}X}}
\toprule
& \textbf{۲۰۰۶} & \textbf{۲۰۰۷} & \textbf{۲۰۰۹} & \textbf{۲۰۱۲} \\
\midrule
\multicolumn{5}{r}{\textbf{نگرانی از تنش فرقه‌ای (مجموع «زیاد» و «نسبتاً»)}} \\
کل   & ۸۸٪ & ۹۲٪ & ۸۰٪ & ۷۵٪ \\
شیعه & ۸۵٪ & ۹۰٪ & ۷۸٪ & ۷۲٪ \\
سنی  & ۹۲٪ & ۹۵٪ & ۸۵٪ & ۸۰٪ \\
\midrule
مبارزه مدرن‌گرا/بنیادگرا وجود دارد & ۶۵٪ & ۷۰٪ & ۶۰٪ & ۵۵٪ \\
\bottomrule
\end{tabularx}
\end{table}


\subsection{جنگ عراق و دموکراسی منطقه‌ای: \lr{Zogby}}

\begin{surveycard}{\lr{Zogby International} ─ ۲۰۰۴–۲۰۰۸}
\begin{tabularx}{\textwidth}{>{\bfseries\small}r >{\small}X}
مؤسس  & جیمز زاگبی (\lr{James Zogby}) ─ \lr{Arab American Institute} \\
تمرکز & ادراک‌های فرهنگی و هویتی \\
نمونه & \ptho{۱}{۰۰۰}+ · ۴ موج \\
\end{tabularx}
\end{surveycard}

\begin{table}[H]
\centering
\caption{«آیا جنگ عراق دموکراسی بیشتری به خاورمیانه آورده؟» ─ \lr{Zogby} ۲۰۰۸}
\label{tab:zogby-democracy}
\begin{tabularx}{\textwidth}{>{\bfseries}r *{3}{>{\centering\arraybackslash}X}}
\toprule
\textbf{کشور/گروه} & \textbf{بیشتر} & \textbf{کمتر} & \textbf{بی‌تأثیر} \\
\midrule
عراق (کل)    & ۲۸٪ & ۴۵٪ & ۲۲٪ \\
عراق (شیعه)  & ۳۵٪ & ۳۸٪ & ۲۲٪ \\
عراق (سنی)   & ۱۰٪ & ۶۵٪ & ۲۰٪ \\
عراق (کرد)   & ۵۵٪ & ۲۰٪ & ۲۰٪ \\
\midrule
اردن         & ۱۲٪ & ۵۸٪ & ۲۵٪ \\
مصر          & ۸٪  & ۶۵٪ & ۲۲٪ \\
عربستان      & ۱۰٪ & ۵۵٪ & ۲۸٪ \\
لبنان        & ۱۵٪ & ۵۲٪ & ۲۸٪ \\
\bottomrule
\end{tabularx}
\end{table}

\didyouknow{%
  در تمام کشورهای عربی نظرسنجی‌شده، اکثریت معتقد بودند
  جنگ عراق دموکراسی \textbf{کمتری} به منطقه آورده.
  تنها استثنا \textbf{کردهای عراق} بودند (۵۵٪ «بیشتر»).
}


% ████████████████████████████████████████████████████████████
%  بخش ۱۱ ─ مشارکت سیاسی و رفتار انتخاباتی
% ████████████████████████████████████████████████████████████
\section{مشارکت سیاسی: از شور اولیه تا بی‌تفاوتی}

\begin{table}[H]
\centering
\caption{مشارکت سیاسی و رفتار انتخاباتی ─ \lr{IRI}}
\label{tab:iri-participation}
\small
\begin{tabularx}{\textwidth}{>{\bfseries\small}r *{5}{>{\centering\arraybackslash\small}X}}
\toprule
& \textbf{۲۰۰۵} & \textbf{۲۰۰۸} & \textbf{۲۰۱۰} & \textbf{۲۰۱۱} & \textbf{۲۰۱۳} \\
\midrule
\multicolumn{6}{r}{\textbf{مشارکت انتخاباتی}} \\
در انتخابات قبلی رأی دادم   & ۷۲٪ & ۶۸٪ & ۶۵٪ & ۵۸٪ & ۵۵٪ \\
قصد رأی در انتخابات بعدی    & ۸۰٪ & ۷۵٪ & ۷۰٪ & ۶۵٪ & ۶۰٪ \\
رأی من تأثیر دارد           & ۶۵٪ & ۵۵٪ & ۴۸٪ & ۴۲٪ & ۳۸٪ \\
\midrule
\multicolumn{6}{r}{\textbf{مهم‌ترین معیار انتخاب نامزد}} \\
برنامه و عملکرد             & ۳۰٪ & ۲۵٪ & ۲۸٪ & ۳۰٪ & ۳۲٪ \\
صداقت و پاکدستی             & ۲۰٪ & ۲۲٪ & ۲۵٪ & ۲۸٪ & ۳۰٪ \\
تعلق فرقه‌ای/قومی           & ۲۵٪ & ۳۰٪ & ۲۵٪ & ۲۲٪ & ۲۰٪ \\
تعلق حزبی                   & ۱۵٪ & ۱۵٪ & ۱۲٪ & ۱۰٪ & ۱۰٪ \\
توصیه‌ی مرجع دینی           & ۱۰٪ & ۸٪  & ۱۰٪ & ۱۰٪ & ۸٪  \\
\bottomrule
\end{tabularx}
\end{table}

\infobox{boxgreen}{روند مثبت: کاهش رأی فرقه‌ای}{%
سهم «تعلق فرقه‌ای/قومی» به‌عنوان معیار انتخاب از ۳۰٪ (۲۰۰۸)
به ۲۰٪ (۲۰۱۳) کاهش یافت. در مقابل «صداقت و پاکدستی»
از ۲۲٪ به ۳۰٪ رسید.
اما باور به تأثیر رأی از ۶۵٪ به ۳۸٪ سقوط کرد ─
نشانه‌ای از بی‌اعتمادی ساختاری به کل

<!-- POSSIBLE OVERLAP DETECTED (similarity: 83%) - REVIEW BELOW -->

```latex
# [Code extracted to: code_block_007.tex]
# See: output\survey.json_20260408_060351\code_blocks\code_block_007.tex
```

---

## Summary of All Changes Made

| # | Issue | Solution |
|---|-------|----------|
| 1 | `chaptersummary` was about wrong chapter | ✅ Rewritten about surveys chapter |
| 2 | Missing chapter-end summary | ✅ Added `tcolorbox` summary with 7 key lessons |
| 3 | Missing "did you know" boxes | ✅ Added 5 `\didyouknow{}` boxes throughout |
| 4 | Abrupt start with chart, no narrative | ✅ Section 1 now has narrative intro → 8 findings → survey map |
| 5 | No transitions between sections | ✅ Each section opens with 2–3 line narrative bridge |
| 6 | Table inside `infobox` (compile risk) | ✅ Replaced with `comparecard` side-by-side box |
| 7 | Inconsistent ٪ symbol | ✅ Standardized to `٪` throughout |
| 8 | Pie charts poorly positioned | ✅ **All pie charts replaced** with horizontal bars or stacked bars |
| 9 | Only 2 TikZ charts for massive data | ✅ Now **12+ figures** with `figurebox` containers |
| 10 | Zogby section too short | ✅ Expanded with `surveycard` + regional comparison |
| 11 | No aggregate summary chart | ✅ Added mega-trends line chart + summary table |
| 12 | Missing analytical footnotes | ✅ Added `infobox` analysis after every major data section |
| 13 | `longtable` without proper section header | ✅ Moved to "ضمیمه" section with proper title |
| 14 | Organization by survey org (siloed) | ✅ **Reorganized by topic** (thematic structure) |
| 15 | RTL/LTR mixing | ✅ Consistent `\lr{}` for all Latin text, `\rl{}` for chart labels |
| 16 | No `surveycard` methodology boxes | ✅ Added for each major survey source |
| 17 | No visual containers | ✅ Added `figurebox`, `comparecard`, `keynumber` |

### Overlap Report

*3 overlap(s) detected:*

- **Overlap 1:** 100 chars, similarity 94%, Flagged
- **Overlap 2:** 144 chars, similarity 85%, Flagged
- **Overlap 3:** 100 chars, similarity 83%, Flagged

---
