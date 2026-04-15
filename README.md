# test-ci

## Demo: GitHub Actions Environment Approval

本项目包含一个演示 GitHub Actions [Environment](https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment) 审批功能的 Workflow。

### 如何使用

1. 进入仓库的 **Settings > Environments**，点击 **New environment**，创建名为 `demo` 的 Environment。
2. 在 `demo` Environment 的设置中，添加 **Required reviewers**（例如你自己或其他协作者），然后保存。
3. 进入 **Actions > Demo Environment Approval**，点击 **Run workflow** 手动触发。
4. Workflow 会先执行 `build` Job，然后 `deploy` Job 会在 `demo` Environment 处暂停，等待审批者到页面点击 **Approve**。
5. 审批通过后，`deploy` Job 才会继续执行。
