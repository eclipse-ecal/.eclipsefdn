local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('automotive.ecal', 'eclipse-ecal') {
  settings+: {
    description: "",
    name: "Eclipse eCAL (enhanced Communication Abstraction Layer)",
    web_commit_signoff_required: false,
    workflows+: {
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('ecal') {
      allow_auto_merge: true,
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "📦 eCAL - enhanced Communication Abstraction Layer. A high performance publish-subscribe, client-server cross-plattform middleware. ",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      has_discussions: true,
      homepage: "https://ecal.io",
      topics+: [
        "autonomous-driving",
        "client-server",
        "ecal",
        "google-protobuf",
        "interprocess-communication",
        "ipc",
        "message-protocol",
        "middleware",
        "publish-subscribe",
        "shared-memory"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('CERT_ALGO') {
          value: "********",
        },
        orgs.newRepoSecret('CERT_BODY') {
          value: "********",
        },
        orgs.newRepoSecret('CERT_HASH') {
          value: "********",
        },
        orgs.newRepoSecret('CERT_PSWD') {
          value: "********",
        },
        orgs.newRepoSecret('CHERRY_PICK_GITHUB_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('JENKINS_API_TOKEN') {
          value: "********",
        },
        orgs.newRepoSecret('JENKINS_TOKEN_GH_FILE') {
          value: "********",
        },
        orgs.newRepoSecret('JENKINS_USERNAME') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
        orgs.newBranchProtectionRule('support/*') {
          is_admin_enforced: true,
          required_approving_review_count: 1,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages'),
      ],
    },
    orgs.newRepo('ecal-algorithm-samples') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ecal-algorithm-samples",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecal-camera-samples') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "👨‍🏫 eCAL Webcam publisher sample and Monitor plugin ",
      homepage: "",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecal-carla-bridge') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ecal-carla-bridge",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecal-core') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "📦 eCAL C/C++ runtime core",
      has_discussions: true,
      homepage: "",
      topics+: [
        "client-server",
        "cpp",
        "google-protobuf",
        "ipc",
        "middleware",
        "publish-subscribe",
        "shared-memory"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: 0,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('ecal-foxglove-bridge') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "ecal-foxglove-server",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecal-gpsd-client') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "eCAL interface to the linux gps service daemon ",
      homepage: "",
      topics+: [
        "cmake",
        "ecal",
        "google-protobuf",
        "gps",
        "gpsd",
        "ublox",
        "ublox-gps",
        "ubuntu1804",
        "ubuntu2004"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecal-mcap-tools') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecal-mqtt-bridge') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "ecal-mqtt-bridge",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecal-rs') {
      allow_merge_commit: true,
      allow_update_branch: false,
      archived: true,
      delete_branch_on_merge: false,
      description: "Rust bindings to the Eclipse eCAL API",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('CRATES_IO_TOKEN') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('rustecal') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      private_vulnerability_reporting_enabled: true,
      description: "Idiomatic Rust bindings for eCAL.",
      homepage: "https://eclipse-ecal.github.io/rustecal",
      has_discussions: true,
      topics+: [
        "rust",
        "ipc",
        "middleware",
        "publish-subscribe",
        "client-server",
        "ecal",
        "ffi",
        "interprocess-communication"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('CRATES_IO_TOKEN') {
          value: "********",
        },
      ],
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: 0,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
    },
    orgs.newRepo('ecal-utils') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "eCAL common utiities collection",
      homepage: "",
      topics+: [
        "cpp",
        "ecal",
        "utility-library"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecaludp') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Ecal UDP",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          required_approving_review_count: 0,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('fineftp-server') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "📦 C++ FTP Server Library for Windows 🪟, Linux 🐧 & more 💾",
      homepage: "",
      topics+: [
        "asio",
        "c-plusplus",
        "cmake",
        "ftp",
        "ftp-server",
        "lib",
        "library",
        "linux",
        "rfc-959",
        "server",
        "windows"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('protobuf-datatypes-collection') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "protobuf-datatypes-collection",
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('rmw_ecal') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "ROS2 middleware based on eCAL",
      has_discussions: true,
      homepage: "",
      topics+: [
        "ecal",
        "middleware",
        "rmw",
        "ros2"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('rosidl_typesupport_protobuf') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "Middleware agnostic ros2 static typesupport which uses Protobuf for serialization/deserialization.",
      homepage: "",
      topics+: [
        "protobuf",
        "ros2",
        "typesupport"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('tcp_pubsub') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "📦 TCP based publish-subscribe library for C++ 🌐",
      homepage: "",
      topics+: [
        "cpp",
        "publish-subscribe",
        "tcp"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          is_admin_enforced: true,
          required_approving_review_count: null,
          requires_linear_history: true,
          requires_pull_request: false,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('udpcap') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "📦 Npcap-based UDP socket emulation library for C++ 👨‍💻",
      homepage: "",
      topics+: [
        "cpp",
        "npcap",
        "udp",
        "winsocks"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      branch_protection_rules: [
        orgs.newBranchProtectionRule('master') {
          required_approving_review_count: 0,
          requires_linear_history: true,
          requires_status_checks: false,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('ecal-grafana-dashboard') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      description: "Grafana dashboard for Eclipse eCAL",
      homepage: "",
      topics+: [
        "grafana",
        "ecal"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
    orgs.newRepo('ecal-test-suite') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "main",
      delete_branch_on_merge: false,
      description: "Test suite for Eclipse eCAL",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "gh-pages",
      gh_pages_source_path: "/",
      homepage: "",
      topics+: [
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}
