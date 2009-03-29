%%
%% This is file `histhesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% histhesis.dtx  (with options: `class')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from histhesis.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file histhesis.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{histhesis}[2007/01/23 histhesis class v.0.1]
\RequirePackage{lmodern}
\RequirePackage[english]{babel}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}

\newcommand*{\ifLanguageInUse}[1]{%
  \expandafter\ifx\csname l@#1\endcsname\relax
  \expandafter\@secondoftwo
  \else
  \bbl@afterfi{\ifnum\csname l@#1\endcsname=\language
    \expandafter\@firstoftwo
    \else
    \expandafter\@secondoftwo
    \fi}%
  \fi}

\DeclareOption{MSc}{
  \AtBeginDocument{
    \ifLanguageInUse{swedish}{
    \newcommand{\degree}{Magisterexamen (M.Sc.)}
    }{\newcommand{\degree}{M.Sc.}}
  }
}

\DeclareOption{BSc}{
  \AtBeginDocument{
    \ifLanguageInUse{swedish}{
    \newcommand{\degree}{Kandidatexamen (B.Sc.)}
    }{\newcommand{\degree}{B.Sc.}}
  }
}

\DeclareOption*{\InputIfFileExists{\CurrentOption.sty}
  {}{\PassOptionsToClass{\CurrentOption}{article}\OptionNotUsed}}
\ProcessOptions\relax

\LoadClass[12pt]{article}

\renewcommand\maketitle{\histitle}
\renewenvironment{abstract}{\sAbstract}{\eAbstract}

\DeclareRobustCommand*{\tableofcontents}{%
  \section*{\contentsname\markboth{\contentsname}{\contentsname}}%
  \@starttoc{toc}%
\pagebreak
\linespread{1.3}
\raggedright
\pagestyle{fancy}
\setcounter{page}{1}
\pagenumbering{arabic}
}
\setlength{\parindent}{0pt}
\setlength{\parskip}{1.3ex plus 0.5ex minus 0.2ex}
\setlength{\oddsidemargin}{1.41cm}
\setlength{\textwidth}{13.65cm}
\setlength{\textheight}{24.5cm}
\setlength{\topmargin}{-1.27cm}
\endinput
%%
%% End of file `histhesis.cls'.
