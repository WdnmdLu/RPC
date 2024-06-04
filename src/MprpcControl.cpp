#include "MprpcControl.h"

MprpcController::MprpcController(){
    m_failed = false;
    m_errText = "";
}
void MprpcController::Rest(){

}
bool MprpcController::Failed() const{

}
std::string MprpcController::ErrorText() const{

}
void MprpcController::SetFailed(const std::string& reason){

}