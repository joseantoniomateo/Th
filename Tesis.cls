%%=========================================================================
%% 							FORMATO PARA LAS TESIS
%%=========================================================================

%% Package and Class "Tesis" for use with LaTeX2e.
\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{Tesis}[2008/01/10 v.0.0 Desarrollado por Llanos: AGUS]

\LoadClass{book}


%% OPCIONES DE LA CLASE
%\RequirePackage{epsfig}
%\RequirePackage{bookman}
%\RequirePackage{tikz}

%%DIMENSIONES
\setlength{\textheight}{625pt}
\setlength{\textwidth}{390pt}
\setlength{\oddsidemargin}{60pt}
\setlength{\evensidemargin}{10pt}
\setlength{\marginparwidth}{0pt}
\setlength{\marginparpush}{0pt}
\renewcommand{\baselinestretch}{1.15}


%% TITULO
\def\autor#1{\def\@auth{#1}}
\def\titulo#1{\def\@tit{#1}}
\def\tutorA#1{\def\@tutA{#1}}
\def\tutorB#1{\def\@tutB{#1}}
\def\fecha#1{\def\@fech{#1}}
\def\logo#1{\def\@log{#1}}

\renewcommand\maketitle{
	\pagestyle{empty}
	\begin{center}
		\vspace{0.5cm}
\LARGE\textbf{\@tit\\}
	\vspace{1cm}
	\epsfig{figure=logo.eps,scale = 0.2}\\
	\tikz \draw(-7,0)--(7,0);\\
	\vspace{0.25cm}
	%\Large
\normalsize
%  \textsc{Dissertation for the degree of Doctor of Computer Science to be presented
%       with due permission of the Department of Computer Science,


%\textsc{A thesis submitted for the degree of Doctor of Computer Sciences \\ University of Castilla-La Mancha}
%\textsc{A thesis submitted in fulfilment of the requirements for the degree of Doctor of Computer Sciences}

%\textsc{Computing Systems Department \\
 %University of Castilla-La Mancha}

\textsc{Dissertation for the degree of Doctor of Computer Science to be presented with due permission of the Department of Computer Science, for public examination and debate}


%  	{Dissertation for the degree of Doctor of Computer Science to be presented 
% 	Computing Systems Department from \\ The University of Castilla--La Mancha, \\
% 	with due permission of the Department of Computer Science,
%	for public examination and debate}
	\vspace{0.25cm}
	\tikz \draw(-7,0)--(7,0);\\
	\vspace{0.25cm}
	\end{center}
	\normalsize
	\begin{flushright}
	\normalsize
	\vspace*{3cm}
	\begin{tabular}{rp{8cm}}
	Author: & \emph{\@auth} \\
	Supervisors: &\emph{\@tutA}\\
	& \emph{\@tutB}\\
	\end{tabular}
  \end{flushright}
	\vspace{1 cm}
	\begin{center}
	\emph{\@fech}
	\end{center}
	\newpage
	\cleardoublepage
}

%%DEDICATORIA
\newenvironment{dedicatoria}{
    \newpage
		\thispagestyle{empty}
		\centering
		\vspace{2cm}
		\itshape	
    \newpage
    \pagestyle{headings}
    \cleardoublepage
}

%%PREFACIO/RESUMEN y AGRADECIMIENTOS
\newenvironment{resumen}{\newpage\chapter*{Resumen}}{}
\newenvironment{gracias}{\newpage\chapter*{Agradecimientos}}{}

%%ESTILO CAPITULOS
\newcommand{\LineaCabecera}{%
		\makebox[0pt][l]{\rule[-1.5ex]{\textwidth}{0.4pt}}}
\renewcommand{\ps@headings}{%
 		\renewcommand{\@oddhead}{\LineaCabecera%
  			\sffamily\rightmark\hfill\thepage}
 		\renewcommand{\@evenhead}{\LineaCabecera%
 		 	\sffamily	\thepage\hfill\leftmark}
		\renewcommand{\@oddfoot}{}
    \renewcommand{\@evenfoot}{}
		\renewcommand{\chaptermark}[1]{%
		\markboth{\if@mainmatter\@chapapp\ \thechapter.\ \fi ##1}{}}
		\renewcommand{\sectionmark}[1]{\markright{\thesection.\ ##1}}}

%%PARA LOS TITULOS
\renewcommand{\@makechapterhead}[1]{%
	\vspace*{5mm}%
		{\setlength{\parindent}{0pt} \raggedleft \normalfont
			\ifnum \value{secnumdepth}>1
				\if@mainmatter
					\huge\sffamily \@chapapp\ \thechapter
					\par\nobreak\vspace{5mm}
				\fi
			\fi
			\interlinepenalty 10000
			\Huge \sffamily\bfseries #1\par\nobreak
			\rule[0.5\baselineskip]{\textwidth}{1pt}\par\nobreak\vspace{10mm}}}
\renewcommand{\@makeschapterhead}[1]{%
		\vspace*{5mm}%
			{\setlength{\parindent}{0pt} \raggedleft \normalfont
				\interlinepenalty 10000
				\Huge \sffamily\bfseries #1\par\nobreak
				\rule[0.5\baselineskip]{\textwidth}{1pt}\par\nobreak\vspace{10mm}}}
				
\renewcommand{\section}{\@startsection{section}{1}{0ex}%
	{-3.5ex plus -1ex minus -0.2ex}%
	{2.3ex plus 0.2ex}%
	{\sffamily\Large\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0ex}%
	{-3.25ex plus -1ex minus -0.2ex}%
	{1.5ex plus 0.2ex}%
	{\sffamily\large\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0ex}%
	{-3.25ex plus -1ex minus -0.2ex}%
	{1.5ex plus 0.2ex}%
	{\sffamily\normalsize\itshape}}
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{0ex}%
	{3.25ex plus 1ex minus 0.2ex}%
	{-1em}%
	{\normalfont\normalsize}}
\renewcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
	{3.25ex plus 1ex minus 0.2ex}%
	{-1em}%
	{\normalfont\normalsize}}
				
%%ETIQUETILLAS
\renewcommand{\@makecaption}[2]{%
	\vspace{\abovecaptionskip}
	\sbox{\@tempboxa}{\sffamily{#1}. #2}%
	\ifdim \wd\@tempboxa >\linewidth
 			\sffamily{#1}. #2\par
	\else
			\global\@minipagefalse
			\makebox[\linewidth]{\hfil\usebox{\@tempboxa}\hfil}%
			\fi
	\vspace{\belowcaptionskip}}

\endinput
