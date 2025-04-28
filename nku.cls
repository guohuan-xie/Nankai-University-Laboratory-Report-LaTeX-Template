\ProvidesClass{nku}
\LoadClass{ctexart}
\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
\RequirePackage{booktabs}
\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{3}
\renewcommand\thesection{\CJKnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\setlist[enumerate,1]{label=(\arabic*)}
\setlist[enumerate,2]{label=(\arabic*)}

\setCJKmainfont[
  Path = fonts/ ,
  Extension = .ttf ,
  BoldFont = SimHei ,
  ItalicFont = simkai ,
]{SimSun}

% 调整标题字体大小
\titleformat*{\section}{\LARGE\bfseries}  % 增加到 \LARGE
\titleformat*{\subsection}{\Large\bfseries}  % 增加到 \Large
\titleformat*{\subsubsection}{\large}  % 增加到 \large
\graphicspath{{figures/}{figure/}{pictures/}%
{picture/}{pic/}{pics/}{image/}{images/}}

\titlespacing{\subsection}{1em}{*4}{*1.5}
\titlespacing{\subsubsection}{1em}{*4}{*1.5}

% 代码格式和颜色定义
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{comment}{rgb}{0.56,0.64,0.68}
\lstset{
  frame=tb,
  aboveskip=3mm,
  belowskip=3mm,
  xleftmargin=2em,
  xrightmargin=2em,
  showstringspaces=false,
  columns=flexible,
  framerule=1pt,
  rulecolor=\color{gray!35},
  backgroundcolor=\color{gray!5},
  basicstyle={\small\ttfamily},
  numbers=none,
  numberstyle=\tiny\color{gray},
  keywordstyle=\color{blue},
  commentstyle=\color{comment},
  stringstyle=\color{dkgreen},
  breaklines=true,
  breakatwhitespace=true,
  tabsize=2,
}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}

% 页眉
\pagestyle{fancy}
\lhead{\@expname}
\chead{姓名：\@name}
\rhead{学号：\@stuid}

% 下划线定义
\def\xjtuu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}

% 首页头部
\newcommand{\makeheader}{
  \begin{figure}[h]
    \begin{minipage}{0.7\linewidth}
      \centerline{\includegraphics[width=\linewidth]{head.jpg}}
    \end{minipage}
    \hfill
    \begin{minipage}{.3\linewidth}
      \raggedleft
      \small  % 使用 \small 命令来设置较小的字体
      \begin{tabular*}{.8\linewidth}{ll}
        姓名： & \xjtuu[70pt]\@name    \\
        学号： & \xjtuu[70pt]\@stuid   \\
        日期： & \xjtuu[70pt]\@date \\
        地点： & \xjtuu[70pt]\@lab
      \end{tabular*}
    \end{minipage}
  \end{figure}
  \thispagestyle{empty}
}

% 封面
% 封面
\newcommand{\makecover}{
  \begin{center}
    \begin{center}
      \includegraphics[width=0.8\linewidth]{cover}
    \end{center}
    \vspace{1cm}
    \bfseries\huge{\@title}\\
    \vspace{0.5cm}
    \bfseries\Large{\@expname}
    \vspace{3cm}
    \begin{center}
      \Large
      \linespread{2}
      \centering
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{p{3cm}p{6cm}<{\centering}}  % 使内容居中
        \bfseries{课程名称：} & \@course \\ \cline{2-2}
        \bfseries{姓名：}     & \@name   \\ \cline{2-2}
        \bfseries{学院：}     & \@college \\ \cline{2-2}
        \bfseries{专业：}     & \@major  \\ \cline{2-2}
        \bfseries{学号：}     & \@stuid  \\ \cline{2-2}
        \bfseries{指导老师：} & \@instructor  \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vspace{2cm}
    \Large{\@date}
  \end{center}
  \thispagestyle{empty}
  \newpage
}

