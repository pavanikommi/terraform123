resource "aws_amplify_app" "amplify" {
  name       = "amplify"
  repository = "https://github.com/pavanikommi/static-website-example.git"

  

  # The default rewrites and redirects added by the Amplify Console.
  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  environment_variables = {
    ENV = "test"
  }
}
