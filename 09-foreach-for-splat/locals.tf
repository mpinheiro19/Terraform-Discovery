locals {
  files           = ["ips.json", "report.csv", "sitemap.xml"]
  file_extensions = [for file in local.files : regex("\\.[0-9a-z]+$", file)]
  ips = [
    {
      public : "123.123.123.22",
      private : "123.123.123.23",
    },
    {
      public : "122.123.123.22",
      private : "122.123.123.23",
    }
  ]
}