variable "buckets" {
    description = "List of buckets to create"
    type = set(string)
    default = ["bucket1", "bucket2"]
}
