(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.suffixof (str.substr tmp_str0 tmp_int1 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:36:23.331136  2754 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7f3bea78df5d  google::LogMessage::Fail()
;    @     0x7f3bea790513  google::LogMessage::SendToLog()
;    @     0x7f3bea78daeb  google::LogMessage::Flush()
;    @     0x7f3bea78f45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7f3beae8dfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7f3beaea3842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7f3beaea28f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7f3beaddc102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7f3beade007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7f3beacfedab  std::function<>::operator()()
;    @     0x7f3beacfc844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7f3beadfacb6  Vlab::SMT::NotBegins::accept()
;    @     0x7f3beacfe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3beacfdbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7f3beaddca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7f3beadf6b5c  Vlab::SMT::And::accept()
;    @     0x7f3beacfe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3beaddbca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7f3beade148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7f3beadf6b5c  Vlab::SMT::And::accept()
;    @     0x7f3beacfe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3beadeaa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3beade23e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7f3beadf6ebe  Vlab::SMT::Or::accept()
;    @     0x7f3beacfe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3beadeaa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7f3beade0d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7f3beadf4d2a  Vlab::SMT::Assert::accept()
;    @     0x7f3beacfe9ad  Vlab::SMT::Visitor::visit()
;    @     0x7f3beae03699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7f3beadf4067  Vlab::SMT::Script::visit_children()
;    @     0x7f3beacfe9e0  Vlab::SMT::Visitor::visit_children_of()
