#
# Composes records from the (slightly edited) study plan text version
# loriacarlos@gmail.com
# input/study_plan.txt --> compose_output/composed_plan.txt
#
# Expected output record format generated by compose
# nn::code::description::credits[2345](::req)*::(bsc|dipl)::(level|_)::(cycle|_)
# req ~ EI(F|G)...O? | LIX...
#
# To run
#  awk -f compose.awk ../study_plan_input/study_plan.txt > ../compose_output/composed_plan.txt

# Authors
#	Jose Javier Arce Zeledon
#	Julio Rodriguez Chavarria
#	Kevin Venegas Loria
#	Aaron Villalobos Arguedas

@include "textmininglib"
BEGIN { 
	OFS="::"
}
{
	handleCarriageReturn()
	sharedLineFields()
	caseNewLine()
	caseLineField()
	caseLineDone()
}



END {}

