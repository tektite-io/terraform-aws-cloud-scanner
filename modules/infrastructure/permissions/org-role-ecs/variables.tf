#---------------------------------
# optionals - with defaults
#---------------------------------

variable "name" {
  type        = string
  description = "Name to be assigned to all child resources. A suffix may be added internally when required. Use default value unless you need to install multiple instances"
}

variable "ccs_ecs_task_role_name" {
  type        = string
  description = "Name for the ecs task role. This is only required to resolve cyclic dependency with organizational approach"
}

variable "organizational_role_per_account" {
  type        = string
  default     = "OrganizationAccountAccessRole"
  description = "Name of the organizational role deployed by AWS in each member account of the organization"
}

variable "tags" {
  type        = map(string)
  description = "Default tag for resource"
}

variable "is_org" {
  type        = bool
  default     = true
  description = "Name of the organizational role deployed by AWS in each member account of the organization"
}
