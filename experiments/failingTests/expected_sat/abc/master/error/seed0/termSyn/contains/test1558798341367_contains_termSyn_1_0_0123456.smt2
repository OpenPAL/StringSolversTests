(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (= (str.contains (str.at tmp_str0 tmp_int1) (str.at tmp_str0 tmp_int1)) (str.contains tmp_str0 tmp_str0)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;F0818 17:37:10.222399  3185 Formula.cpp:40] Formula does not have param: 1, (2,tmp_str0)  - !begins.
;*** Check failure stack trace: ***
;    @     0x7fb33e968f5d  google::LogMessage::Fail()
;    @     0x7fb33e96b513  google::LogMessage::SendToLog()
;    @     0x7fb33e968aeb  google::LogMessage::Flush()
;    @     0x7fb33e96a45e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fb33f068fcc  Vlab::Theory::Formula::GetVariableIndex()
;    @     0x7fb33f07e842  Vlab::Theory::StringAutomaton::MakeNotBegins()
;    @     0x7fb33f07d8f7  Vlab::Theory::StringAutomaton::MakeAutomaton()
;    @     0x7fb33efb7102  _ZZN4Vlab6Solver22StringConstraintSolver12setCallbacksEvENKUlPNS_3SMT4TermEE_clES4_
;    @     0x7fb33efbb07b  _ZNSt17_Function_handlerIFbPN4Vlab3SMT4TermEEZNS0_6Solver22StringConstraintSolver12setCallbacksEvEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_
;    @     0x7fb33eed9dab  std::function<>::operator()()
;    @     0x7fb33eed7844  Vlab::Solver::AstTraverser::visitNotBegins()
;    @     0x7fb33efd5cb6  Vlab::SMT::NotBegins::accept()
;    @     0x7fb33eed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb33eed8bee  Vlab::Solver::AstTraverser::visit()
;    @     0x7fb33efb7a21  Vlab::Solver::StringConstraintSolver::visitAnd()
;    @     0x7fb33efd1b5c  Vlab::SMT::And::accept()
;    @     0x7fb33eed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb33efb6ca3  Vlab::Solver::StringConstraintSolver::start()
;    @     0x7fb33efbc48c  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fb33efd1b5c  Vlab::SMT::And::accept()
;    @     0x7fb33eed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb33efc5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb33efbd3e1  Vlab::Solver::ConstraintSolver::visitOr()
;    @     0x7fb33efd1ebe  Vlab::SMT::Or::accept()
;    @     0x7fb33eed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb33efc5a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fb33efbbd2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fb33efcfd2a  Vlab::SMT::Assert::accept()
;    @     0x7fb33eed99ad  Vlab::SMT::Visitor::visit()
;    @     0x7fb33efde699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fb33efcf067  Vlab::SMT::Script::visit_children()
;    @     0x7fb33eed99e0  Vlab::SMT::Visitor::visit_children_of()
