# Terraform cloud playground 
 
 > [K.Wilczynski](mailto://krzysztof.wilczynski@pm.me)
 
 ## Idea no. 1
 Testing the possibilities of dynamic integration of Jenkins build with Terraform cloud deployment variables
 
 Scenario:
  - There is a distributed Jenkins build server that deploys Docker images to Amazon ECR (AWS container registry)
  - There is a need to update the version of the freshly built container in the HCL files of Terraform deployment to ECS (AWS Elastic Container Service) cluster
 
 The goal was to find a way to allow Jenkins to trigger a change in the Terraform cloud run (to deploy the newest ECR image).
 The task was completed succesfully in commit ae9c5a411614d7c4cd008e8af030252ca4e1e71e
