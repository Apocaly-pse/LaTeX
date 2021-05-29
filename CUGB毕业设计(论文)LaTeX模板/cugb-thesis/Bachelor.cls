\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Bachelor}[Thesis Template for Bachelor Degree]

%%% ---- 载入Class ----- %%%
\LoadClass[a4paper,openany,oneside]{book} % A4大小，book布局

\RequirePackage[AutoFakeBold=true,AutoFakeSlant=true]{xeCJK}[2017/08/08]
\RequirePackage[zihao=-4,UTF8,heading=true]{ctex}[2016/12/27]
\RequirePackage{xeCJKfntef}

%%% ---- 定义页边距 ----- %%%
\RequirePackage{geometry}
\geometry{left=3.17cm,right=3.17cm,top=2.54cm,bottom=2.54cm,includefoot,xetex}

\RequirePackage{fancyhdr}           % 页眉页脚宏包


\setlength{\voffset}{-10mm}                        
\setlength{\topmargin}{0mm}
\setlength{\headheight}{5mm}
\setlength{\headsep}{5mm}
                                                  


%%% ---- 定义标题和段落样式 ----- %%%
% 定义行距
\RequirePackage{setspace}
% \renewcommand{\baselinestretch}{1} % 1.5倍行距
\setstretch{1}
% 设置各个标题样式
\ctexset{chapter={format={\centering \heiti \zihao{2}}, number={   % 各章标题 黑体小2号 // 修改：标题和数字字号一致 
    \arabic{chapter}},name={,},
    afterskip={0.5ex},beforeskip={0.8ex}
    }}
\ctexset{section={format={\raggedright \heiti \zihao{3}}}}          % 一级标题 黑体 4号
\ctexset{subsection={format={\raggedright \heiti \zihao{4}}}}      % 二级标题 黑体小4号
\ctexset{subsubsection={format={\raggedright \heiti \zihao{-4}}}}   % 三级标题 黑体小4号


% 目录样式设置
\RequirePackage{tocloft}
\setcounter{tocdepth}{2}        % 目录层级数
\setcounter{secnumdepth}{3}     % 标题层级数

\renewcommand{\cfttoctitlefont}{\hfill\heiti\zihao{-3}} % 目录标题 黑体 小3 号
\renewcommand{\contentsname}{目\hspace{1em}录}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength\cftbeforetoctitleskip{-1cm}
\setlength\cftaftertoctitleskip{0ex}


\renewcommand{\cftdot}{$\cdot$}
\renewcommand{\cftdotsep}{1}  % 点间距
\renewcommand{\cftchapdotsep}{\cftdotsep}

\renewcommand\cftchapfont{\heiti\zihao{-4}} % 目录章标题 黑体 小4 号
\renewcommand\cftsecfont{\songti\zihao{-4}}
\renewcommand\cftsubsecfont{\songti\zihao{-4}}
\renewcommand\cftsubsubsecfont{\songti\zihao{-4}}

% 设置目录页码的字体
\renewcommand\cftchappagefont{\heiti\zihao{5}}
\renewcommand\cftsecpagefont{\songti\zihao{5}}
\renewcommand\cftsubsecpagefont{\songti\zihao{5}}
\renewcommand\cftsubsubsecpagefont{\songti\zihao{5}}

% 目录标题行后的行距
% \renewcommand\cftchapafterpnum{\vspace{}}
% \renewcommand\cftsecafterpnum{}
% \renewcommand\cftsubsecafterpnum{}

\setlength\cftbeforechapskip{-.1em}

\renewcommand\cftparskip{.6em}

% 目录条目行首缩进值
\setlength{\cftsecindent}{2em}
\setlength{\cftsubsecindent}{4em}
\setlength{\cftsubsubsecindent}{6em}

%%% ---- 图表标题设置 ----- %%%
\RequirePackage[labelsep=quad]{caption}     % 序号之后空一格写标题
% 设置表格标题,图标题字体为5号宋体
\captionsetup[table]{textfont=small}
\captionsetup[figure]{textfont=small}

\renewcommand\figurename{\songti\zihao{5} 图} 
% \renewcommand\tablename{\bf\zihao{-4} 表} 
\renewcommand\tablename{\songti\zihao{5} 表} 


% 使用tabularx创建占满宽度的表格
\RequirePackage{tabularx, makecell}
\newcolumntype{C}{>{\centering \arraybackslash}X}
\newcolumntype{R}{>{\raggedleft \arraybackslash}X}

\RequirePackage{longtable}  % 做长表格的包
\RequirePackage{booktabs}   % 做三线表的包
\RequirePackage{diagbox}
% 列表样式
\RequirePackage{enumerate, enumitem}
\setlist{noitemsep}

% 修改脚注
\makeatletter%
\long\def\@makefnmark{%
\hbox {{\normalfont \textsuperscript{\circled{\@thefnmark}}}}}%
\makeatother
\makeatletter%
\long\def\@makefntext#1{%
  \parindent 1em\noindent \hb@xt@ 1.8em{\hss \circled{\@thefnmark}}#1}%
\makeatother
\skip\footins=10mm plus 1mm
\footnotesep=6pt
\renewcommand{\footnotesize}{\songti\zihao{5}}
\renewcommand\footnoterule{\vspace*{-3pt}\hrule width 0.3\columnwidth height 1pt \vspace*{2.6pt}}

\newcommand*\circled[1]{\tikz[baseline=(char.base)]{%
\node[shape=circle,draw,inner sep=0.5pt] (char) {#1};}} % 圆圈数字①

%%% ---- 引入宏包 ----- %%%
\RequirePackage{amsmath, amssymb}
\RequirePackage[amsmath, thmmarks]{ntheorem}  % 定理
\RequirePackage{graphicx, float}

% \RequirePackage{mathtools}
% 设置公式的编号为短杠形式
\renewcommand\theequation{%
  \thechapter-\arabic{equation}}
% 设置图, 表的编号为短杠形式
\renewcommand\thefigure{\arabic{chapter}-\arabic{figure}}
\renewcommand\thetable{\arabic{chapter}-\arabic{table}}

\RequirePackage{listings}                    % 代码段
% \RequirePackage{minted}                    % 代码高亮（需要 python 安装 pygments 库）
\RequirePackage{algorithm2e, algorithmic}    % 算法代码
% \RequirePackage{tikz, pgfplots}              % 绘图
\RequirePackage{fontspec, color, url, array}
\RequirePackage{txfonts}                     % Times 风格（数学）字体

%%% ---- 定义字体 ----- %%%
\renewcommand{\normalsize}{\zihao{-4}}         % 正文字号: 小四号

% 设置英文字体为 Times New Roman
\setmainfont[Ligatures=Rare]{Times New Roman}
\setsansfont[Ligatures=Rare]{Times New Roman}
\setmonofont[Ligatures=Rare]{Times New Roman}

\renewcommand{\algorithmcfname}{算法}          % 算法两字用中文显示

%%% ---- 数学定理样式 ----- %%%
\theoremstyle{plain}
\theoremheaderfont{\heiti}
\theorembodyfont{\songti} \theoremindent0em
\theorempreskip{0pt}
\theorempostskip{0pt}
\theoremnumbering{arabic}

%\theoremsymbol{} %定理结束时自动添加的标志
\newtheorem{theorem}{\hspace{2em}定理}[section]
\newtheorem{definition}{\hspace{2em}定义}[section]
\newtheorem{lemma}{\hspace{2em}引理}[section]
\newtheorem{corollary}{\hspace{2em}推论}[section]
\newtheorem{proposition}{\hspace{2em}性质}[section]
\newtheorem{example}{\hspace{2em}例}[section]
\newtheorem{remark}{\hspace{2em}注}[section]

\theoremstyle{nonumberplain}
\theoremheaderfont{\heiti}
\theorembodyfont{\normalfont \rm \songti}
\theoremindent0em \theoremseparator{\hspace{1em}}
\theoremsymbol{$\square$}
\newtheorem{proof}{\hspace{2em}证明}


%%% ---- 参考文献设置 ----- %%%
\RequirePackage[sort&compress]{natbib}
\setcitestyle{numbers,square,comma}
\ctexset{bibname={\heiti \zihao{2} 参考文献\vspace{.6em}}}

\setlength{\bibsep}{0em} % 设置参考文献条目间的距离

% \addtolength{\itemsep}{-1.5 em} % 缩小参考文献间的垂直间距
% \setlength{\itemsep}{-5pt}

\bibliographystyle{data/gbt7714-2005}  % 参考文献样式
%\IfStrEqCase{\HGP@citebst}{
%  {data/gbt7714-2005}{\bibliographystyle{data/gbt7714-2005}}
%  {data/gbt7714-2015}{\bibliographystyle{data/gbt7714-2015}}
%  {thuthesis}{
%    \bibliographystyle{thuthesis-numeric}
%    \def\thudot{\unskip.}
%  }
%}

% 标题的下划线(中文)
\RequirePackage{CJKulem}

\RequirePackage{hyperref} % 超链接
\hypersetup{citecolor=magenta,linkcolor=black,urlcolor=blue} % 设置引用链接颜色

\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}} % 自定义新命令\upcite, 使参考文献引用以上标出现

\renewcommand{\eqref}[1]{\textup{{\normalfont（\ref{#1}）\normalfont}}} % 公式引用使用中文括号

% 清除公式上下间距
\AtBeginDocument{
  \setlength{\abovedisplayskip}{6pt}
  \setlength{\belowdisplayskip}{6pt}
  \setlength{\abovedisplayshortskip}{0pt}
  \setlength{\belowdisplayshortskip}{0pt} 
}

\graphicspath{{figures/}} % 图片文件路径

% --------------------------------------

%%% ---- 自定义命令 ----- %%%

% 字体:
% 这里使用了字体名称, Windows用户需要右键执行`为所有用户安装`, MacOS直接安装即可.

%使用STXingkai华文行楷字体
\setCJKfamilyfont{hwxk}{华文行楷}
\newcommand{\huawenxingkai}{\CJKfamily{hwxk}}
% 方正仿宋简体
\setCJKfamilyfont{fangzheng}{方正仿宋简体}
\newcommand{\fangzheng}{\CJKfamily{fangzheng}}
% 重定义黑体为中易黑体: SimHei
\setCJKfamilyfont{msheiti}{SimHei}
\renewcommand{\heiti}{\CJKfamily{msheiti}}
% 宋体
\setCJKfamilyfont{simsun}{SimSun}
\renewcommand{\songti}{\CJKfamily{simsun}}
% 楷体_GB2312
\setCJKfamilyfont{kaigb}{楷体_GB2312}
\newcommand{\kaigb}{\CJKfamily{kaigb}}


%%% ---- 封面 ----- %%%
\makeatletter
\def\stunum#1{\def\@stunum{#1}}\def\@stunum{}         % 学号
\def\stuclass#1{\def\@stuclass{#1}}\def\@stuclass{}         % 班号
\def\czhtitle#1{\def\@czhtitle{#1}}\def\@czhtitle{}         % 中文题目
\def\centitle#1{\def\@centitle{#1}}\def\@centitle{}         % 英文题目
\def\cschool#1{\def\@cschool{#1}}\def\@cschool{}      % 院系
\def\cmajor#1{\def\@cmajor{#1}}\def\@cmajor{}         % 专业
\def\cauthor#1{\def\@cauthor{#1}}\def\@cauthor{}      % 作者
\def\cadvisor#1{\def\@cadvisor{#1}}\def\@cadvisor{}   % 指导老师
\def\cjobtitle#1{\def\@cjobtitle{#1}}\def\@cjobtitle{}   % 职称
\def\cdate#1{\def\@cdate{#1}}\def\@cdate{}            % 日期
\def\czhtitle#1{\def\@czhtitle{#1}}\def\@czhtitle{}         % 中文题目


% 标题页
\def\maketitlepage{
  \thispagestyle{plain}
  \fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{.5pt}  %页眉线宽，设为0可以去页眉线
  \chead{}       % 页眉中内容为空
  }
  \begin{center}
    {\songti \zihao{3}  
    \begin{minipage}[t]{4.5cm}分类号\ \end{minipage}
    \hspace*{6cm}
    \begin{minipage}[t]{2.5cm}密级\ \end{minipage}
    }
    \par \vspace*{6em}
    {\huawenxingkai \zihao{1} 中国地质大学（北京）}
    \par \vspace*{2em}
    {\heiti \zihao{0} 本\ \ 科\ \ 毕\ \ 业\ \ 论\ \ 文}
    \par \vspace{7em}

    {\fangzheng \zihao{3}
    \begin{minipage}[c][4cm]{14cm}
        \setlength{\baselineskip}{32pt} 
        \centering\makebox[4em][t]{\bfseries 题\hspace{2em}目 } 
        % 这里的参数`15.1em`需要根据自己的中英文长度自行调整
        {\parbox[t]{15.1em}{\CJKunderline*{\hfill\@czhtitle\hfill}}} \\[10pt]
        \vspace{1em}

        \centering\makebox[4em][t]{\bfseries 英文题目 } 
        {\parbox[t]{15.1em}{\uline{\@centitle\hfill}}}
    \end{minipage}}

      \vspace{8em}
      \flushleft % 左对齐
      {\kaigb\zihao{-3}
      \begin{tabular}{p{2cm}cp{2cm}c}
            \makebox[4em][t]{\bfseries 学生姓名 } & \underline{\makebox[8em][c]{\@cauthor}}\hspace{2em}
            \makebox[4em][t]{\bfseries 学\qquad 号} & \underline{\makebox[8em][c]{\@stunum}} \\[10pt]
            \makebox[4em][t]{\bfseries 学\qquad 院} & \underline{\makebox[8em][c]{\@cschool}}\hspace{2em}
            \makebox[4em][t]{\bfseries 专\qquad 业} & \underline{\makebox[8em][c]{\@cmajor}}\\[10pt]
            \makebox[4em][t]{\bfseries 指导教师 } & \underline{\makebox[8em][c]{\@cadvisor}}\hspace{2em}
            \makebox[4em][t]{\bfseries 职\qquad 称} & \underline{\makebox[8em][c]{\@cjobtitle}} \\[10pt]
        \end{tabular}}
    \end{center}
      \vspace{3cm}
    \begin{center}
      {\fangzheng \zihao{-3} \@cdate}
    \end{center}
  \clearpage
}

% 申明页
\def\makestatement{
  \thispagestyle{plain}
  \fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{.5pt}  %页眉线宽，设为0可以去页眉线
  \chead{}       % 页眉中内容为空
  }
  % \thispagestyle{empty}
  \clearpage
  % \vspace*{44pt}
  \begin{center}{\heiti \zihao{3} {中国地质大学（北京）}}\end{center}
  \vspace*{-15pt}
  \begin{center}{\heiti \zihao{3} {本科毕业设计（论文）原创性声明和使用授权的说明}}\end{center}

  \par\vspace*{-15pt}
  \setlength{\baselineskip}{23pt}
  {\zihao{5}
  \begin{center}
    \begin{tabularx}{\textwidth}{|c|C|c|C|c|C|}
    \hline
    \Gape[6pt]{学院} & \@cschool & 专业 & \@cmajor  & 班   级 & \@stuclass \\ 
    \hline
    \Gape[6pt]{学号} & \@stunum  & 姓名 & \@cauthor & 指导教师 & \@cadvisor \\ 
    \hline
    \Gape[2pt]{\makecell{设计（论\\文）题目}} & \multicolumn{5}{c|}{\@czhtitle} \\ 
    \hline
    \multicolumn{6}{|c|}{\songti \zihao{4} \textbf{\Gape[1.2em]{原创性声明}}} \\
    % \hline
    \multicolumn{6}{|c|}{\parbox{.95\textwidth}{\hspace{1.8em} 
      \setlength{\baselineskip}{23pt} % 行距:1.5
      本人声明所呈交的论文是我个人在导师指导下进行的研究工作及取得的研究成果。尽我所知，除了文中特别加以标注和致谢的地方外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得中国地质大学或其它教育机构的学位或证书而使用过的材料。与我一同工作的同志对本研究所做的任何贡献均已在论文中作了明确的说明并表示了谢意。}} \\
    \multicolumn{6}{|c|}{\hfill \parbox[t]{9cm}{
    \vspace*{3.6em}
      学生签名：\CJKunderline{\hfill \mbox{} \hfill} \quad
      日期：\CJKunderline{\hfill \mbox{} \hfill} \hfill\vspace*{3em}}} \\ 
    \hline

    \multicolumn{6}{|c|}{\songti \zihao{4} \textbf{\Gape[1.2em]{关于论文使用授权的说明}}} \\
    \multicolumn{6}{|c|}{\parbox{.95\textwidth}{\hspace{1.8em} 
      \setlength{\baselineskip}{23pt} % 行距:1.5
      本人完全了解中国地质大学有关保留、使用学位论文的规定，即：学校有权保留送交论文的复印件，允许论文被查阅和借阅；学校可以公布论文的全部或部分内容，可以采用影印、缩印或其他复制手段保存论文。}} \\
    \multicolumn{6}{|c|}{\parbox[t]{11.5cm}{
    \hspace*{-1em}  
    $\Box$\ \Gape[1em]{公开} \hspace{2em} $\Box$\ 保密（\CJKunderline{\hfill \mbox{} \hfill}年） \quad  (保密的论文在解密后应遵守此规定)}} \\ 
    \multicolumn{6}{|c|}{\hfill \parbox[t]{.93\textwidth}{
    \vspace*{3.6em}
      学生签名：\CJKunderline{\hfill \mbox{} \hfill} \quad
      导师签名：\CJKunderline{\hfill \mbox{} \hfill} \quad
      日期：\CJKunderline{\hfill \mbox{} \hfill} \hfill\vspace*{3em}}} \\ 
    \hline
  \end{tabularx}
  \end{center}


  % \par \vspace*{88pt}
  % \hspace*{0.5cm}本人签名: \underline{\hspace{3.5cm}}
  % \hspace{2cm}日期: \underline{\hspace{3.5cm}}\hfill\par
  }
  % % 空一页
  % \newpage \mbox{}
}


\def\maketaskbook{
% 任务书
  \thispagestyle{plain}
  \fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{.5pt}  %页眉线宽，设为0可以去页眉线
  \chead{}       % 页眉中内容为空
  }
  \clearpage
  \vspace*{44pt}
  \begin{center}{\heiti \zihao{-3} {中国地质大学（北京）本科毕业设计（论文）任务书}}\end{center}
  \par\vspace*{20pt}
  \setlength{\baselineskip}{23pt}
  {\zihao{5}
  \begin{center}
    \begin{tabularx}{\textwidth}{|c|C|c|C|c|C|}
    \hline
    \Gape[6pt]{学院} & \@cschool & 专业 & \@cmajor  & 班   级 & \@stuclass \\ 
    \hline
    \Gape[6pt]{学号} & \@stunum  & 姓名 & \@cauthor & 指导教师 & \@cadvisor \\ 
    \hline
    \Gape[2pt]{\makecell{设计（论\\文）题目}} & \multicolumn{5}{c|}{\@czhtitle} \\ 
    \hline
    \multicolumn{6}{|l|}{\songti \zihao{5} \textbf{\Gape[1.2em]{毕业设计（论文）主要内容和要求：}}} \\
    % \hline
    \multicolumn{6}{|c|}{\parbox{.95\textwidth}{\hspace{1.8em} 
      \setlength{\baselineskip}{23pt} % 行距:1.5
      XXX}} \\
    \multicolumn{6}{|c|}{\hfill \parbox[t]{9cm}{
    \vspace*{3.6em}
      学生签名：\CJKunderline{\hfill \mbox{} \hfill} \quad
      日期：\CJKunderline{\hfill \mbox{} \hfill} \hfill\vspace*{3em}}} \\ 
    \hline

    \multicolumn{6}{|c|}{\songti \zihao{4} \textbf{\Gape[1.2em]{关于论文使用授权的说明}}} \\
    \multicolumn{6}{|c|}{\parbox{.95\textwidth}{\hspace{1.8em} 
      \setlength{\baselineskip}{23pt} % 行距:1.5
      本人完全了解中国地质大学有关保留、使用学位论文的规定，即：学校有权保留送交论文的复印件，允许论文被查阅和借阅；学校可以公布论文的全部或部分内容，可以采用影印、缩印或其他复制手段保存论文。}} \\
    \multicolumn{6}{|c|}{\parbox[t]{11.5cm}{
    \hspace*{-1em}  
    $\Box$\ \Gape[1em]{公开} \hspace{2em} $\Box$\ 保密（\CJKunderline{\hfill \mbox{} \hfill}年） \quad  (保密的论文在解密后应遵守此规定)}} \\ 
    \multicolumn{6}{|c|}{\hfill \parbox[t]{.93\textwidth}{
    \vspace*{3.6em}
      学生签名：\CJKunderline{\hfill \mbox{} \hfill} \quad
      导师签名：\CJKunderline{\hfill \mbox{} \hfill} \quad
      日期：\CJKunderline{\hfill \mbox{} \hfill} \hfill\vspace*{3em}}} \\ 
    \hline
  \end{tabularx}
  \end{center}


  % \par \vspace*{88pt}
  % \hspace*{0.5cm}本人签名: \underline{\hspace{3.5cm}}
  % \hspace{2cm}日期: \underline{\hspace{3.5cm}}\hfill\par
  }
  % \newpage \mbox{}
}

%%% ---- 摘要 ----- %%%
% 中文摘要
\newenvironment{cnabstract}[1]{
  \def \cnkeyword {#1}
  \clearpage
  \thispagestyle{empty}
  % 加入页码
  \addcontentsline{toc}{chapter}{摘要}
  % 设置从1开始
  \setcounter{page}{1}
  \begin{center} {\heiti \zihao{-3} 摘要} \end{center}
  \baselineskip=23pt

}{
  \vspace*{2em}
  \par\noindent {\songti\zihao{-4} \textbf{关键词：}} \cnkeyword
  \clearpage
}

% 英文摘要
\newenvironment{enabstract}[1]{
  \def \enkeyword {#1}
  \clearpage
  \thispagestyle{empty}
  \addcontentsline{toc}{chapter}{Abstract}
  \begin{center} {\heiti \zihao{-3} \textbf{Abstract}} \end{center}
  \baselineskip=23pt

}{
  \vspace*{2em}
  \par\noindent {\bfseries\zihao{-4} Key words:} \enkeyword
  \clearpage
}

%%% ---- 目录 ----- %%%
% 生成目录
\newcommand{\contents}{
  \fancypagestyle{plain}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0pt}  %页眉线宽，设为0可以去页眉线
  \chead{}       % 页眉中内容为空
  }
  \cleardoublepage
  \pagenumbering{gobble} % 去掉目录页码
  \tableofcontents

  \cleardoublepage
  \pagenumbering{arabic} % 重新计数页码
  \setcounter{page}{1}

  \renewcommand{\baselinestretch}{1}\normalsize
  \baselineskip=23pt % 正文部分 基线行距为 23 磅
}
