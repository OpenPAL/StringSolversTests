(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (str.substr tmp_str0 tmp_int1 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:37:10.420648  3187 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7ff3a069df5d  google::LogMessage::Fail()
;    @     0x7ff3a06a0513  google::LogMessage::SendToLog()
;    @     0x7ff3a069daeb  google::LogMessage::Flush()
;    @     0x7ff3a069f45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7ff3a0d9dfcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7ff3a0db3842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7ff3a0db28f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7ff3a0cec102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7ff3a0cf007b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7ff3a0c0edab  std::function<>::operator()()
;    @     0x7ff3a0c0c844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7ff3a0d0acb6  Vlab::SMT::NotBegins::accept()
;    @     0x7ff3a0c0e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3a0c0dbee  Vlab::Solver::AstTraverser::visit()
;    @     0x7ff3a0ceca21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7ff3a0d06b5c  Vlab::SMT::And::accept()
;    @     0x7ff3a0c0e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3a0cebca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7ff3a0cf148c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7ff3a0d06b5c  Vlab::SMT::And::accept()
;    @     0x7ff3a0c0e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3a0cfaa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff3a0cf23e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7ff3a0d06ebe  Vlab::SMT::Or::accept()
;    @     0x7ff3a0c0e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3a0cfaa82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7ff3a0cf0d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7ff3a0d04d2a  Vlab::SMT::Assert::accept()
;    @     0x7ff3a0c0e9ad  Vlab::SMT::Visitor::visit()
;    @     0x7ff3a0d13699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7ff3a0d04067  Vlab::SMT::Script::visit_children()
;    @     0x7ff3a0c0e9e0  Vlab::SMT::Visitor::visit_children_of()
