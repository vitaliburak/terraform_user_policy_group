resource "aws_iam_group" "Infosec" {
  name = "Infosec"
  path = "/"
}

resource "aws_iam_group_membership" "Infosec" {
  name = "Infosec_group"

  users = [
    "${aws_iam_user.Ron.name}",
    "${aws_iam_user.Sam.name}",
    "${aws_iam_user.Billy.name}",
  ]

  group = "${aws_iam_group.Infosec.name}"
}