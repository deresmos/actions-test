import os
import re
from github import Github

class GithubManager:
    def __init__(self, token, owner, repo, is_user=True):
        g = Github(token)

        owner = g.get_user(owner) if is_user else github.get_organization(owner)
        self.repo = owner.get_repo(repo)
        self.pr_number_pattern = re.compile(r"refs/pull/(\d+)/merge")

    def get_pull_request_number(self):
        github_ref = os.getenv("GITHUB_REF")
        if not github_ref:
            return -1

        match = self.pr_number_pattern.match(github_ref)
        if not match:
            return -1

        return match[1]

    def get_pull(self):
        pr_number = self.get_pull_request_number()
        return self.repo.get_pull(pr_number)

if __name__ == "__main__":
    token = os.getenv("GITHUB_TOKEN")
    github = GithubManager(token, "deresmos", "actions-test")

    pull_request = github.get_pull()
    body = pull_request.body
    body += "\n- [ ] testdazo!!"

    pull_request.edit(body=body)
