{smcl}
{* *! version 0.0.1  18nov2014}{...}
{vieweralsosee "[R] egen" "help egen"}{...}
{vieweralsosee "egenmore" "help egenmore"}{...}
{title:Title}

{p2colset 5 18 20 2}{...}
{p2col :{cmd:egenfast} {hline 2}}Alternative to egen that tries to be faster{p_end}
{p2colreset}{...}

{marker syntax}{...}
{title:Syntax}


{p 8 15 2}
{cmd:egenfast}
[{it:type}]
{cmd:=}
{it:fcn}{cmd:(}{it:arguments}{cmd:)}
[{cmd:if} {it:exp}]
[{cmd:in} {it:range}]
[{cmd:,} {it:options}]

{title:Included functions}

{phang}
{opth max(exp)} slightly faster version of -egen max-

{title:How to add a new function}

First, create a file named _gfast{it:XYZ}.ado where {it:XYZ} is the name of the function.
Then, inside the file, use the following scaffolding:

program define _gfast{it:XYZ}
syntax [if] [in], type(string) name(string) args(string) [by(varlist)] {it:...}
	tempvar touse
	qui {
		{it:...}
		gen `type' `name' = {it:...} if `touse'==1
		{it:...}
	}
end

{title:Author}

{phang}
Sergio Correia

{phang}
Duke University, Fuqua School of Business

{phang}
Email: {browse "mailto:sergio.correia@duke.edu":sergio.correia@duke.edu}
{p_end}
