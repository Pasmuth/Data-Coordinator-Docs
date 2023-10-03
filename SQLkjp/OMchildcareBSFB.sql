--select os.domainID,os.scoreID, os.outcomevalue,os.shortdescription,os.longdescription,od.domainname from outcomescore os
--inner join outcomedomain od
--on os.domainid= od.domainid
--where od.domainname = 'childcare' 
--order by DomainName


 SELECT E.EntityID
	   , OD.DomainName 'Domain'
	   , OS.OutcomeValue 'Score'
	   , O.OutcomeDate 'Date'
	   , P.ProgramName 'Program Collecting Score'
	   , A.BeginAssessment 'Alternate Date'
	   , En.FamilyID
	   --, (SELECT ListLabel FROM ListItem WHERE ListID = 27 AND ListValue = A.AssessmentEvent) 'Assessment Event'
FROM Outcome O
	INNER JOIN ContextType CT
		ON CT.ContextTypeID = O.ContextTypeID
	INNER JOIN Entity E
		ON E.EntityID = O.EntityID
	INNER JOIN OutcomeDomain OD
		ON OD.DomainID = O.DomainID
	INNER JOIN OutcomeScore OS
		ON OS.ScoreID = O.ScoreID
	INNER JOIN Assessment A
		ON A.AssessmentID = O.ContextID
	INNER JOIN Enrollment En
		ON En.EnrollmentID = O.X_OutcomeProgram
	INNER JOIN Program P
		ON P.ProgramID = En.ProgramID
	INNER JOIN Users U
		ON U.EntityID = A.CreatedBy
	INNER JOIN Service S
		ON s.AccountID=en.AccountID
		
	INNER JOIN Account Ac
		on aC.AccountID=EN.AccountID

		Where (a.BeginAssessment Between '2015-01-01' and '2023-12-31') AND s.accountId=142


--select * from Program
--ORDER BY PROGRAMNAME
--select * from Account

select * from outcome
--select * from Service