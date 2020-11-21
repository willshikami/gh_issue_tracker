// To parse this JSON data, do
//
// final issue = issueFromJson(jsonString);

import 'dart:convert';

List<Issue> issueFromJson(String str) => List<Issue>.from(json.decode(str).map((x) => Issue.fromJson(x)));

String issueToJson(List<Issue> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Issue {
    Issue({
        this.id,
        this.nodeId,
        this.url,
        this.repositoryUrl,
        this.labelsUrl,
        this.commentsUrl,
        this.eventsUrl,
        this.htmlUrl,
        this.number,
        this.state,
        this.title,
        this.body,
        this.user,
        this.labels,
        this.assignee,
        this.assignees,
        this.milestone,
        this.locked,
        this.activeLockReason,
        this.comments,
        this.pullRequest,
        this.closedAt,
        this.createdAt,
        this.updatedAt,
        this.repository,
        this.authorAssociation,
    });

    int id;
    String nodeId;
    String url;
    String repositoryUrl;
    String labelsUrl;
    String commentsUrl;
    String eventsUrl;
    String htmlUrl;
    int number;
    String state;
    String title;
    String body;
    Assignee user;
    List<Label> labels;
    Assignee assignee;
    List<Assignee> assignees;
    Milestone milestone;
    bool locked;
    String activeLockReason;
    int comments;
    PullRequest pullRequest;
    dynamic closedAt;
    DateTime createdAt;
    DateTime updatedAt;
    Repository repository;
    String authorAssociation;

    factory Issue.fromJson(Map<String, dynamic> json) => Issue(
        id: json["id"],
        nodeId: json["node_id"],
        url: json["url"],
        repositoryUrl: json["repository_url"],
        labelsUrl: json["labels_url"],
        commentsUrl: json["comments_url"],
        eventsUrl: json["events_url"],
        htmlUrl: json["html_url"],
        number: json["number"],
        state: json["state"],
        title: json["title"],
        body: json["body"],
        user: Assignee.fromJson(json["user"]),
        labels: List<Label>.from(json["labels"].map((x) => Label.fromJson(x))),
        assignee: Assignee.fromJson(json["assignee"]),
        assignees: List<Assignee>.from(json["assignees"].map((x) => Assignee.fromJson(x))),
        milestone: Milestone.fromJson(json["milestone"]),
        locked: json["locked"],
        activeLockReason: json["active_lock_reason"],
        comments: json["comments"],
        pullRequest: PullRequest.fromJson(json["pull_request"]),
        closedAt: json["closed_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        repository: Repository.fromJson(json["repository"]),
        authorAssociation: json["author_association"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "node_id": nodeId,
        "url": url,
        "repository_url": repositoryUrl,
        "labels_url": labelsUrl,
        "comments_url": commentsUrl,
        "events_url": eventsUrl,
        "html_url": htmlUrl,
        "number": number,
        "state": state,
        "title": title,
        "body": body,
        "user": user.toJson(),
        "labels": List<dynamic>.from(labels.map((x) => x.toJson())),
        "assignee": assignee.toJson(),
        "assignees": List<dynamic>.from(assignees.map((x) => x.toJson())),
        "milestone": milestone.toJson(),
        "locked": locked,
        "active_lock_reason": activeLockReason,
        "comments": comments,
        "pull_request": pullRequest.toJson(),
        "closed_at": closedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "repository": repository.toJson(),
        "author_association": authorAssociation,
    };
}

class Assignee {
    Assignee({
        this.login,
        this.id,
        this.nodeId,
        this.avatarUrl,
        this.gravatarId,
        this.url,
        this.htmlUrl,
        this.followersUrl,
        this.followingUrl,
        this.gistsUrl,
        this.starredUrl,
        this.subscriptionsUrl,
        this.organizationsUrl,
        this.reposUrl,
        this.eventsUrl,
        this.receivedEventsUrl,
        this.type,
        this.siteAdmin,
    });

    String login;
    int id;
    String nodeId;
    String avatarUrl;
    String gravatarId;
    String url;
    String htmlUrl;
    String followersUrl;
    String followingUrl;
    String gistsUrl;
    String starredUrl;
    String subscriptionsUrl;
    String organizationsUrl;
    String reposUrl;
    String eventsUrl;
    String receivedEventsUrl;
    String type;
    bool siteAdmin;

    factory Assignee.fromJson(Map<String, dynamic> json) => Assignee(
        login: json["login"],
        id: json["id"],
        nodeId: json["node_id"],
        avatarUrl: json["avatar_url"],
        gravatarId: json["gravatar_id"],
        url: json["url"],
        htmlUrl: json["html_url"],
        followersUrl: json["followers_url"],
        followingUrl: json["following_url"],
        gistsUrl: json["gists_url"],
        starredUrl: json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"],
        organizationsUrl: json["organizations_url"],
        reposUrl: json["repos_url"],
        eventsUrl: json["events_url"],
        receivedEventsUrl: json["received_events_url"],
        type: json["type"],
        siteAdmin: json["site_admin"],
    );

    Map<String, dynamic> toJson() => {
        "login": login,
        "id": id,
        "node_id": nodeId,
        "avatar_url": avatarUrl,
        "gravatar_id": gravatarId,
        "url": url,
        "html_url": htmlUrl,
        "followers_url": followersUrl,
        "following_url": followingUrl,
        "gists_url": gistsUrl,
        "starred_url": starredUrl,
        "subscriptions_url": subscriptionsUrl,
        "organizations_url": organizationsUrl,
        "repos_url": reposUrl,
        "events_url": eventsUrl,
        "received_events_url": receivedEventsUrl,
        "type": type,
        "site_admin": siteAdmin,
    };
}

class Label {
    Label({
        this.id,
        this.nodeId,
        this.url,
        this.name,
        this.description,
        this.color,
        this.labelDefault,
    });

    int id;
    String nodeId;
    String url;
    String name;
    String description;
    String color;
    bool labelDefault;

    factory Label.fromJson(Map<String, dynamic> json) => Label(
        id: json["id"],
        nodeId: json["node_id"],
        url: json["url"],
        name: json["name"],
        description: json["description"],
        color: json["color"],
        labelDefault: json["default"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "node_id": nodeId,
        "url": url,
        "name": name,
        "description": description,
        "color": color,
        "default": labelDefault,
    };
}

class Milestone {
    Milestone({
        this.url,
        this.htmlUrl,
        this.labelsUrl,
        this.id,
        this.nodeId,
        this.number,
        this.state,
        this.title,
        this.description,
        this.creator,
        this.openIssues,
        this.closedIssues,
        this.createdAt,
        this.updatedAt,
        this.closedAt,
        this.dueOn,
    });

    String url;
    String htmlUrl;
    String labelsUrl;
    int id;
    String nodeId;
    int number;
    String state;
    String title;
    String description;
    Assignee creator;
    int openIssues;
    int closedIssues;
    DateTime createdAt;
    DateTime updatedAt;
    DateTime closedAt;
    DateTime dueOn;

    factory Milestone.fromJson(Map<String, dynamic> json) => Milestone(
        url: json["url"],
        htmlUrl: json["html_url"],
        labelsUrl: json["labels_url"],
        id: json["id"],
        nodeId: json["node_id"],
        number: json["number"],
        state: json["state"],
        title: json["title"],
        description: json["description"],
        creator: Assignee.fromJson(json["creator"]),
        openIssues: json["open_issues"],
        closedIssues: json["closed_issues"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        closedAt: DateTime.parse(json["closed_at"]),
        dueOn: DateTime.parse(json["due_on"]),
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "html_url": htmlUrl,
        "labels_url": labelsUrl,
        "id": id,
        "node_id": nodeId,
        "number": number,
        "state": state,
        "title": title,
        "description": description,
        "creator": creator.toJson(),
        "open_issues": openIssues,
        "closed_issues": closedIssues,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "closed_at": closedAt.toIso8601String(),
        "due_on": dueOn.toIso8601String(),
    };
}

class PullRequest {
    PullRequest({
        this.url,
        this.htmlUrl,
        this.diffUrl,
        this.patchUrl,
    });

    String url;
    String htmlUrl;
    String diffUrl;
    String patchUrl;

    factory PullRequest.fromJson(Map<String, dynamic> json) => PullRequest(
        url: json["url"],
        htmlUrl: json["html_url"],
        diffUrl: json["diff_url"],
        patchUrl: json["patch_url"],
    );

    Map<String, dynamic> toJson() => {
        "url": url,
        "html_url": htmlUrl,
        "diff_url": diffUrl,
        "patch_url": patchUrl,
    };
}

class Repository {
    Repository({
        this.id,
        this.nodeId,
        this.name,
        this.fullName,
        this.owner,
        this.private,
        this.htmlUrl,
        this.description,
        this.fork,
        this.url,
        this.archiveUrl,
        this.assigneesUrl,
        this.blobsUrl,
        this.branchesUrl,
        this.collaboratorsUrl,
        this.commentsUrl,
        this.commitsUrl,
        this.compareUrl,
        this.contentsUrl,
        this.contributorsUrl,
        this.deploymentsUrl,
        this.downloadsUrl,
        this.eventsUrl,
        this.forksUrl,
        this.gitCommitsUrl,
        this.gitRefsUrl,
        this.gitTagsUrl,
        this.gitUrl,
        this.issueCommentUrl,
        this.issueEventsUrl,
        this.issuesUrl,
        this.keysUrl,
        this.labelsUrl,
        this.languagesUrl,
        this.mergesUrl,
        this.milestonesUrl,
        this.notificationsUrl,
        this.pullsUrl,
        this.releasesUrl,
        this.sshUrl,
        this.stargazersUrl,
        this.statusesUrl,
        this.subscribersUrl,
        this.subscriptionUrl,
        this.tagsUrl,
        this.teamsUrl,
        this.treesUrl,
        this.cloneUrl,
        this.mirrorUrl,
        this.hooksUrl,
        this.svnUrl,
        this.homepage,
        this.language,
        this.forksCount,
        this.stargazersCount,
        this.watchersCount,
        this.size,
        this.defaultBranch,
        this.openIssuesCount,
        this.isTemplate,
        this.topics,
        this.hasIssues,
        this.hasProjects,
        this.hasWiki,
        this.hasPages,
        this.hasDownloads,
        this.archived,
        this.disabled,
        this.visibility,
        this.pushedAt,
        this.createdAt,
        this.updatedAt,
        this.permissions,
        this.allowRebaseMerge,
        this.templateRepository,
        this.tempCloneToken,
        this.allowSquashMerge,
        this.deleteBranchOnMerge,
        this.allowMergeCommit,
        this.subscribersCount,
        this.networkCount,
        this.license,
        this.forks,
        this.openIssues,
        this.watchers,
    });

    int id;
    String nodeId;
    String name;
    String fullName;
    Assignee owner;
    bool private;
    String htmlUrl;
    String description;
    bool fork;
    String url;
    String archiveUrl;
    String assigneesUrl;
    String blobsUrl;
    String branchesUrl;
    String collaboratorsUrl;
    String commentsUrl;
    String commitsUrl;
    String compareUrl;
    String contentsUrl;
    String contributorsUrl;
    String deploymentsUrl;
    String downloadsUrl;
    String eventsUrl;
    String forksUrl;
    String gitCommitsUrl;
    String gitRefsUrl;
    String gitTagsUrl;
    String gitUrl;
    String issueCommentUrl;
    String issueEventsUrl;
    String issuesUrl;
    String keysUrl;
    String labelsUrl;
    String languagesUrl;
    String mergesUrl;
    String milestonesUrl;
    String notificationsUrl;
    String pullsUrl;
    String releasesUrl;
    String sshUrl;
    String stargazersUrl;
    String statusesUrl;
    String subscribersUrl;
    String subscriptionUrl;
    String tagsUrl;
    String teamsUrl;
    String treesUrl;
    String cloneUrl;
    String mirrorUrl;
    String hooksUrl;
    String svnUrl;
    String homepage;
    dynamic language;
    int forksCount;
    int stargazersCount;
    int watchersCount;
    int size;
    String defaultBranch;
    int openIssuesCount;
    bool isTemplate;
    List<String> topics;
    bool hasIssues;
    bool hasProjects;
    bool hasWiki;
    bool hasPages;
    bool hasDownloads;
    bool archived;
    bool disabled;
    String visibility;
    DateTime pushedAt;
    DateTime createdAt;
    DateTime updatedAt;
    Permissions permissions;
    bool allowRebaseMerge;
    dynamic templateRepository;
    String tempCloneToken;
    bool allowSquashMerge;
    bool deleteBranchOnMerge;
    bool allowMergeCommit;
    int subscribersCount;
    int networkCount;
    License license;
    int forks;
    int openIssues;
    int watchers;

    factory Repository.fromJson(Map<String, dynamic> json) => Repository(
        id: json["id"],
        nodeId: json["node_id"],
        name: json["name"],
        fullName: json["full_name"],
        owner: Assignee.fromJson(json["owner"]),
        private: json["private"],
        htmlUrl: json["html_url"],
        description: json["description"],
        fork: json["fork"],
        url: json["url"],
        archiveUrl: json["archive_url"],
        assigneesUrl: json["assignees_url"],
        blobsUrl: json["blobs_url"],
        branchesUrl: json["branches_url"],
        collaboratorsUrl: json["collaborators_url"],
        commentsUrl: json["comments_url"],
        commitsUrl: json["commits_url"],
        compareUrl: json["compare_url"],
        contentsUrl: json["contents_url"],
        contributorsUrl: json["contributors_url"],
        deploymentsUrl: json["deployments_url"],
        downloadsUrl: json["downloads_url"],
        eventsUrl: json["events_url"],
        forksUrl: json["forks_url"],
        gitCommitsUrl: json["git_commits_url"],
        gitRefsUrl: json["git_refs_url"],
        gitTagsUrl: json["git_tags_url"],
        gitUrl: json["git_url"],
        issueCommentUrl: json["issue_comment_url"],
        issueEventsUrl: json["issue_events_url"],
        issuesUrl: json["issues_url"],
        keysUrl: json["keys_url"],
        labelsUrl: json["labels_url"],
        languagesUrl: json["languages_url"],
        mergesUrl: json["merges_url"],
        milestonesUrl: json["milestones_url"],
        notificationsUrl: json["notifications_url"],
        pullsUrl: json["pulls_url"],
        releasesUrl: json["releases_url"],
        sshUrl: json["ssh_url"],
        stargazersUrl: json["stargazers_url"],
        statusesUrl: json["statuses_url"],
        subscribersUrl: json["subscribers_url"],
        subscriptionUrl: json["subscription_url"],
        tagsUrl: json["tags_url"],
        teamsUrl: json["teams_url"],
        treesUrl: json["trees_url"],
        cloneUrl: json["clone_url"],
        mirrorUrl: json["mirror_url"],
        hooksUrl: json["hooks_url"],
        svnUrl: json["svn_url"],
        homepage: json["homepage"],
        language: json["language"],
        forksCount: json["forks_count"],
        stargazersCount: json["stargazers_count"],
        watchersCount: json["watchers_count"],
        size: json["size"],
        defaultBranch: json["default_branch"],
        openIssuesCount: json["open_issues_count"],
        isTemplate: json["is_template"],
        topics: List<String>.from(json["topics"].map((x) => x)),
        hasIssues: json["has_issues"],
        hasProjects: json["has_projects"],
        hasWiki: json["has_wiki"],
        hasPages: json["has_pages"],
        hasDownloads: json["has_downloads"],
        archived: json["archived"],
        disabled: json["disabled"],
        visibility: json["visibility"],
        pushedAt: DateTime.parse(json["pushed_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        permissions: Permissions.fromJson(json["permissions"]),
        allowRebaseMerge: json["allow_rebase_merge"],
        templateRepository: json["template_repository"],
        tempCloneToken: json["temp_clone_token"],
        allowSquashMerge: json["allow_squash_merge"],
        deleteBranchOnMerge: json["delete_branch_on_merge"],
        allowMergeCommit: json["allow_merge_commit"],
        subscribersCount: json["subscribers_count"],
        networkCount: json["network_count"],
        license: License.fromJson(json["license"]),
        forks: json["forks"],
        openIssues: json["open_issues"],
        watchers: json["watchers"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "node_id": nodeId,
        "name": name,
        "full_name": fullName,
        "owner": owner.toJson(),
        "private": private,
        "html_url": htmlUrl,
        "description": description,
        "fork": fork,
        "url": url,
        "archive_url": archiveUrl,
        "assignees_url": assigneesUrl,
        "blobs_url": blobsUrl,
        "branches_url": branchesUrl,
        "collaborators_url": collaboratorsUrl,
        "comments_url": commentsUrl,
        "commits_url": commitsUrl,
        "compare_url": compareUrl,
        "contents_url": contentsUrl,
        "contributors_url": contributorsUrl,
        "deployments_url": deploymentsUrl,
        "downloads_url": downloadsUrl,
        "events_url": eventsUrl,
        "forks_url": forksUrl,
        "git_commits_url": gitCommitsUrl,
        "git_refs_url": gitRefsUrl,
        "git_tags_url": gitTagsUrl,
        "git_url": gitUrl,
        "issue_comment_url": issueCommentUrl,
        "issue_events_url": issueEventsUrl,
        "issues_url": issuesUrl,
        "keys_url": keysUrl,
        "labels_url": labelsUrl,
        "languages_url": languagesUrl,
        "merges_url": mergesUrl,
        "milestones_url": milestonesUrl,
        "notifications_url": notificationsUrl,
        "pulls_url": pullsUrl,
        "releases_url": releasesUrl,
        "ssh_url": sshUrl,
        "stargazers_url": stargazersUrl,
        "statuses_url": statusesUrl,
        "subscribers_url": subscribersUrl,
        "subscription_url": subscriptionUrl,
        "tags_url": tagsUrl,
        "teams_url": teamsUrl,
        "trees_url": treesUrl,
        "clone_url": cloneUrl,
        "mirror_url": mirrorUrl,
        "hooks_url": hooksUrl,
        "svn_url": svnUrl,
        "homepage": homepage,
        "language": language,
        "forks_count": forksCount,
        "stargazers_count": stargazersCount,
        "watchers_count": watchersCount,
        "size": size,
        "default_branch": defaultBranch,
        "open_issues_count": openIssuesCount,
        "is_template": isTemplate,
        "topics": List<dynamic>.from(topics.map((x) => x)),
        "has_issues": hasIssues,
        "has_projects": hasProjects,
        "has_wiki": hasWiki,
        "has_pages": hasPages,
        "has_downloads": hasDownloads,
        "archived": archived,
        "disabled": disabled,
        "visibility": visibility,
        "pushed_at": pushedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "permissions": permissions.toJson(),
        "allow_rebase_merge": allowRebaseMerge,
        "template_repository": templateRepository,
        "temp_clone_token": tempCloneToken,
        "allow_squash_merge": allowSquashMerge,
        "delete_branch_on_merge": deleteBranchOnMerge,
        "allow_merge_commit": allowMergeCommit,
        "subscribers_count": subscribersCount,
        "network_count": networkCount,
        "license": license.toJson(),
        "forks": forks,
        "open_issues": openIssues,
        "watchers": watchers,
    };
}

class License {
    License({
        this.key,
        this.name,
        this.url,
        this.spdxId,
        this.nodeId,
        this.htmlUrl,
    });

    String key;
    String name;
    String url;
    String spdxId;
    String nodeId;
    String htmlUrl;

    factory License.fromJson(Map<String, dynamic> json) => License(
        key: json["key"],
        name: json["name"],
        url: json["url"],
        spdxId: json["spdx_id"],
        nodeId: json["node_id"],
        htmlUrl: json["html_url"],
    );

    Map<String, dynamic> toJson() => {
        "key": key,
        "name": name,
        "url": url,
        "spdx_id": spdxId,
        "node_id": nodeId,
        "html_url": htmlUrl,
    };
}

class Permissions {
    Permissions({
        this.admin,
        this.push,
        this.pull,
    });

    bool admin;
    bool push;
    bool pull;

    factory Permissions.fromJson(Map<String, dynamic> json) => Permissions(
        admin: json["admin"],
        push: json["push"],
        pull: json["pull"],
    );

    Map<String, dynamic> toJson() => {
        "admin": admin,
        "push": push,
        "pull": pull,
    };
}
