resource "local_file" "create_file" {
  content  = "Hi... Hello world!!!!"
  filename = "helloworld.txt"
}
