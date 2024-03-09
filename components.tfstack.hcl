component "s3" {
    source = "./s3"
    inputs={
       bucket_name = var.bucket_name

    }
    providers={
        awscc= provider.awscc.this
    }
}