/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "project_id" {
  description = "Project id where the keyring will be created."
  type        = string
}

# cf https://cloud.google.com/kms/docs/locations
variable "location" {
  description = "Location for the keyring."
  type        = string
}

variable "keyring" {
  description = "Keyring name."
  type        = string
}

variable "existing_keyring" {
  description = "Use existing keyring"
  type        = bool
  default     = false
}

variable "keys" {
  description = "Key names."
  type        = list(string)
  default     = []
}

variable "prevent_destroy" {
  description = "Set the prevent_destroy lifecycle attribute on keys."
  default     = true
}

variable "owners" {
  description = "Owners shared for all the managed keys."
  type        = list(string)
  default     = []
}

variable "encrypters" {
  description = "Encrypters shared for all the managed keys."
  type        = list(string)
  default     = []
}

variable "decrypters" {
  description = "Decrypters shared for all the managed keys."
  type        = list(string)
  default     = []
}

variable "acl" {
  description = "Additional ACL for for the managed keys."
  type        = list(any)
  default     = []
}

variable "key_opts" {
  description = "Specifies key specific options."
  type        = any
  default     = []
}
