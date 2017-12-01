```
{
  "timestamp" : "2017-12-01T00:07:35.359Z",
  "clusters" : [ {
    "name" : "DMolinari",
    "version" : "CDH5",
    "services" : [ {
      "name" : "hdfs",
      "type" : "HDFS",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "DATANODE",
          "items" : [ {
            "name" : "datanode_java_heapsize",
            "value" : "1073741824"
          }, {
            "name" : "dfs_data_dir_list",
            "value" : "/data1/dfs/dn"
          }, {
            "name" : "dfs_datanode_data_dir_perm",
            "value" : "700"
          }, {
            "name" : "dfs_datanode_du_reserved",
            "value" : "6327924736"
          }, {
            "name" : "dfs_datanode_http_port",
            "value" : "1006"
          }, {
            "name" : "dfs_datanode_max_locked_memory",
            "value" : "4294967296"
          }, {
            "name" : "dfs_datanode_port",
            "value" : "1004"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "500"
          }, {
            "name" : "rm_io_weight",
            "value" : "250"
          } ]
        }, {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "dfs_client_use_trash",
            "value" : "true"
          } ]
        }, {
          "roleType" : "JOURNALNODE",
          "items" : [ {
            "name" : "dfs_journalnode_edits_dir",
            "value" : "/var/lib/jn"
          } ]
        }, {
          "roleType" : "NAMENODE",
          "items" : [ {
            "name" : "dfs_name_dir_list",
            "value" : "/data1/dfs/nn"
          }, {
            "name" : "dfs_namenode_servicerpc_address",
            "value" : "8022"
          } ]
        }, {
          "roleType" : "SECONDARYNAMENODE",
          "items" : [ {
            "name" : "fs_checkpoint_dir_list",
            "value" : "/data1/dfs/snn"
          } ]
        } ],
        "items" : [ {
          "name" : "dfs_encrypt_data_transfer_algorithm",
          "value" : "AES/CTR/NoPadding"
        }, {
          "name" : "dfs_ha_fencing_cloudera_manager_secret_key",
          "value" : "YtyyDJRGpuWUp3R8WFu434SXeOqPcv"
        }, {
          "name" : "dfs_ha_fencing_methods",
          "value" : "shell(true)"
        }, {
          "name" : "fc_authorization_secret_key",
          "value" : "lvM7B6LUZ11yTFUcAu5HJDe042EPlB"
        }, {
          "name" : "hadoop_security_authentication",
          "value" : "kerberos"
        }, {
          "name" : "hadoop_security_authorization",
          "value" : "true"
        }, {
          "name" : "http_auth_signature_secret",
          "value" : "N9qARHIbrVnjKEd9aBxTG5BuVEhkBP"
        }, {
          "name" : "rm_dirty",
          "value" : "false"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "25"
        }, {
          "name" : "service_health_suppression_hdfs_ha_namenode_health",
          "value" : "true"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hdfs-BALANCER-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "BALANCER",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hdfs-DATANODE-066fcd251cc71b59cb5f1990c1699819",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-aba8763c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3i4ykwczyh3jpbv9osapfrrco"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-60608719cd0be619f4bfc2117b35e225",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "61g1tpa7lhp0x6ntu0kb1ia6x"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "avnwtt6y9nwq87h9w077fga77"
          } ]
        }
      }, {
        "name" : "hdfs-DATANODE-dd37d86e4aeb1ca9839929c8408c8469",
        "type" : "DATANODE",
        "hostRef" : {
          "hostId" : "i-a8a8763f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7v1vfa9elsrmsibn1hsipz0v2"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-60608719cd0be619f4bfc2117b35e225",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bkgg9mauze0vrskm2l8sp5ibl"
          } ]
        }
      }, {
        "name" : "hdfs-FAILOVERCONTROLLER-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "FAILOVERCONTROLLER",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ebevtf2l0sj0lemblrjei9p3b"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-066fcd251cc71b59cb5f1990c1699819",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-aba8763c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5pwf6s16k0xyd7n0a8z65124t"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-60608719cd0be619f4bfc2117b35e225",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "g5jvut72clj4c7bjyme3c2yy"
          } ]
        }
      }, {
        "name" : "hdfs-JOURNALNODE-dd37d86e4aeb1ca9839929c8408c8469",
        "type" : "JOURNALNODE",
        "hostRef" : {
          "hostId" : "i-a8a8763f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "5dahcb9e0zfqhk3nio5w5r1dj"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-60608719cd0be619f4bfc2117b35e225",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "21"
          }, {
            "name" : "role_jceks_password",
            "value" : "588pg3eoiuvh1bz58ogqbw617"
          } ]
        }
      }, {
        "name" : "hdfs-NAMENODE-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "NAMENODE",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "autofailover_enabled",
            "value" : "true"
          }, {
            "name" : "dfs_federation_namenode_nameservice",
            "value" : "nameservice1"
          }, {
            "name" : "dfs_namenode_quorum_journal_name",
            "value" : "nameservice1"
          }, {
            "name" : "namenode_id",
            "value" : "57"
          }, {
            "name" : "role_jceks_password",
            "value" : "3w90o7fmyw44bj7d8v3uwmpxy"
          } ]
        }
      } ],
      "displayName" : "HDFS"
    }, {
      "name" : "yarn",
      "type" : "YARN",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "GATEWAY",
          "items" : [ {
            "name" : "mapred_reduce_tasks",
            "value" : "7"
          }, {
            "name" : "mapred_submit_replication",
            "value" : "2"
          } ]
        }, {
          "roleType" : "NODEMANAGER",
          "items" : [ {
            "name" : "node_manager_java_heapsize",
            "value" : "52428800"
          }, {
            "name" : "rm_cpu_shares",
            "value" : "1500"
          }, {
            "name" : "rm_io_weight",
            "value" : "750"
          }, {
            "name" : "yarn_nodemanager_heartbeat_interval_ms",
            "value" : "100"
          }, {
            "name" : "yarn_nodemanager_local_dirs",
            "value" : "/data1/yarn/nm"
          }, {
            "name" : "yarn_nodemanager_log_dirs",
            "value" : "/data1/yarn/container-logs"
          }, {
            "name" : "yarn_nodemanager_resource_cpu_vcores",
            "value" : "3"
          }, {
            "name" : "yarn_nodemanager_resource_memory_mb",
            "value" : "1024"
          } ]
        }, {
          "roleType" : "RESOURCEMANAGER",
          "items" : [ {
            "name" : "yarn_scheduler_maximum_allocation_mb",
            "value" : "5474"
          }, {
            "name" : "yarn_scheduler_maximum_allocation_vcores",
            "value" : "3"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "rm_dirty",
          "value" : "true"
        }, {
          "name" : "rm_last_allocation_percentage",
          "value" : "75"
        }, {
          "name" : "yarn_service_cgroups",
          "value" : "false"
        }, {
          "name" : "yarn_service_lce_always",
          "value" : "false"
        }, {
          "name" : "zk_authorization_secret_key",
          "value" : "cIhRAmul2FEuSMPkpQPSwPbtkyPTBW"
        } ]
      },
      "roles" : [ {
        "name" : "yarn-JOBHISTORY-066fcd251cc71b59cb5f1990c1699819",
        "type" : "JOBHISTORY",
        "hostRef" : {
          "hostId" : "i-aba8763c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3ctgpihqtgz0s8a1dmr591yhv"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-066fcd251cc71b59cb5f1990c1699819",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-aba8763c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "7sl8sajh2j8d4erjlqh1is4zo"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-60608719cd0be619f4bfc2117b35e225",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "2kx8cnq5t0fy1fyswwoen3z12"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e4tbcrbxk0eoib2e4dnpup643"
          } ]
        }
      }, {
        "name" : "yarn-NODEMANAGER-dd37d86e4aeb1ca9839929c8408c8469",
        "type" : "NODEMANAGER",
        "hostRef" : {
          "hostId" : "i-a8a8763f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "3entqatjilg3z5vu5zrgdniwu"
          } ]
        }
      }, {
        "name" : "yarn-RESOURCEMANAGER-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "RESOURCEMANAGER",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "rm_id",
            "value" : "38"
          }, {
            "name" : "role_jceks_password",
            "value" : "jo7ubdxraa1plia5g6x5co89"
          } ]
        }
      } ],
      "displayName" : "YARN (MR2 Included)"
    }, {
      "name" : "zookeeper",
      "type" : "ZOOKEEPER",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SERVER",
          "items" : [ {
            "name" : "zookeeper_server_java_heapsize",
            "value" : "52428800"
          } ]
        } ],
        "items" : [ {
          "name" : "enableSecurity",
          "value" : "true"
        } ]
      },
      "roles" : [ {
        "name" : "zookeeper-SERVER-60608719cd0be619f4bfc2117b35e225",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "6sox2qva84c7np3chwaakmk1t"
          }, {
            "name" : "serverId",
            "value" : "1"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "8y1ybugf21xoezis9j3tkl2yh"
          }, {
            "name" : "serverId",
            "value" : "2"
          } ]
        }
      }, {
        "name" : "zookeeper-SERVER-dd37d86e4aeb1ca9839929c8408c8469",
        "type" : "SERVER",
        "hostRef" : {
          "hostId" : "i-a8a8763f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "50d4j7fyo7gd7gmgo2tuownox"
          }, {
            "name" : "serverId",
            "value" : "3"
          } ]
        }
      } ],
      "displayName" : "ZooKeeper"
    }, {
      "name" : "oozie",
      "type" : "OOZIE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "OOZIE_SERVER",
          "items" : [ {
            "name" : "oozie_database_host",
            "value" : "siberiano"
          }, {
            "name" : "oozie_database_password",
            "value" : "Code0Passion."
          }, {
            "name" : "oozie_database_type",
            "value" : "mysql"
          }, {
            "name" : "oozie_database_user",
            "value" : "oozieuser"
          }, {
            "name" : "oozie_java_heapsize",
            "value" : "52428800"
          } ]
        } ],
        "items" : [ {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "oozie-OOZIE_SERVER-066fcd251cc71b59cb5f1990c1699819",
        "type" : "OOZIE_SERVER",
        "hostRef" : {
          "hostId" : "i-aba8763c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "allefj5t1z8bbrgkdoqxxwj2a"
          } ]
        }
      } ],
      "displayName" : "Oozie"
    }, {
      "name" : "hive",
      "type" : "HIVE",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "HIVEMETASTORE",
          "items" : [ {
            "name" : "hive_metastore_java_heapsize",
            "value" : "52428800"
          } ]
        }, {
          "roleType" : "HIVESERVER2",
          "items" : [ {
            "name" : "hiveserver2_enable_impersonation",
            "value" : "false"
          }, {
            "name" : "hiveserver2_java_heapsize",
            "value" : "52428800"
          }, {
            "name" : "hiveserver2_spark_driver_memory",
            "value" : "966367641"
          }, {
            "name" : "hiveserver2_spark_executor_cores",
            "value" : "4"
          }, {
            "name" : "hiveserver2_spark_executor_memory",
            "value" : "912680550"
          }, {
            "name" : "hiveserver2_spark_yarn_driver_memory_overhead",
            "value" : "102"
          }, {
            "name" : "hiveserver2_spark_yarn_executor_memory_overhead",
            "value" : "153"
          } ]
        } ],
        "items" : [ {
          "name" : "hive_metastore_database_host",
          "value" : "siberiano"
        }, {
          "name" : "hive_metastore_database_password",
          "value" : "Code0Passion."
        }, {
          "name" : "hive_metastore_database_user",
          "value" : "hiveuser"
        }, {
          "name" : "mapreduce_yarn_service",
          "value" : "yarn"
        }, {
          "name" : "sentry_service",
          "value" : "sentry"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hive-GATEWAY-60608719cd0be619f4bfc2117b35e225",
        "type" : "GATEWAY",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ ]
        }
      }, {
        "name" : "hive-HIVEMETASTORE-60608719cd0be619f4bfc2117b35e225",
        "type" : "HIVEMETASTORE",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "e8hmvj1jc5nxhvlfmugwjapcw"
          } ]
        }
      }, {
        "name" : "hive-HIVESERVER2-60608719cd0be619f4bfc2117b35e225",
        "type" : "HIVESERVER2",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "19g9nooxh18w1yxll5av9bsr7"
          } ]
        }
      } ],
      "displayName" : "Hive"
    }, {
      "name" : "hue",
      "type" : "HUE",
      "config" : {
        "roleTypeConfigs" : [ ],
        "items" : [ {
          "name" : "database_host",
          "value" : "siberiano"
        }, {
          "name" : "database_password",
          "value" : "Code0Passion."
        }, {
          "name" : "database_type",
          "value" : "mysql"
        }, {
          "name" : "database_user",
          "value" : "hueuser"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "hue_webhdfs",
          "value" : "hdfs-NAMENODE-60608719cd0be619f4bfc2117b35e225"
        }, {
          "name" : "oozie_service",
          "value" : "oozie"
        }, {
          "name" : "sentry_service",
          "value" : "sentry"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "hue-HUE_SERVER-066fcd251cc71b59cb5f1990c1699819",
        "type" : "HUE_SERVER",
        "hostRef" : {
          "hostId" : "i-aba8763c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "d4ip9hf03q8sth37dpvlc4yoh"
          }, {
            "name" : "secret_key",
            "value" : "IBmWJ7m5U9kOa0rHOZHwKNT5RDTGie"
          } ]
        }
      }, {
        "name" : "hue-KT_RENEWER-066fcd251cc71b59cb5f1990c1699819",
        "type" : "KT_RENEWER",
        "hostRef" : {
          "hostId" : "i-aba8763c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "cmfm3u7bivq5ugrybyxr3hh72"
          } ]
        }
      } ],
      "displayName" : "Hue"
    }, {
      "name" : "impala",
      "type" : "IMPALA",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "CATALOGSERVER",
          "items" : [ {
            "name" : "catalogd_embedded_jvm_heapsize",
            "value" : "52428800"
          } ]
        }, {
          "roleType" : "IMPALAD",
          "items" : [ {
            "name" : "impalad_memory_limit",
            "value" : "268435456"
          }, {
            "name" : "scratch_dirs",
            "value" : "/data1/impala/impalad"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "hive_service",
          "value" : "hive"
        }, {
          "name" : "llama_am_ha_zk_auth_secret_key",
          "value" : "I2amL9sLLxU3U0zDwG7EIXCSmDZz7u"
        }, {
          "name" : "rm_dirty",
          "value" : "true"
        }, {
          "name" : "sentry_service",
          "value" : "sentry"
        } ]
      },
      "roles" : [ {
        "name" : "impala-CATALOGSERVER-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "CATALOGSERVER",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "d14qnjlku2oeqk4w08yapzn5l"
          } ]
        }
      }, {
        "name" : "impala-IMPALAD-066fcd251cc71b59cb5f1990c1699819",
        "type" : "IMPALAD",
        "hostRef" : {
          "hostId" : "i-aba8763c"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "aikp7sr3hxliqm9jqqx8myh19"
          } ]
        }
      }, {
        "name" : "impala-IMPALAD-60608719cd0be619f4bfc2117b35e225",
        "type" : "IMPALAD",
        "hostRef" : {
          "hostId" : "i-afa87638"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "26wyd2y7cer33d9f4dnvf1tqz"
          } ]
        }
      }, {
        "name" : "impala-IMPALAD-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "IMPALAD",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "f4w1kjy541amc4it1o6yixazv"
          } ]
        }
      }, {
        "name" : "impala-IMPALAD-dd37d86e4aeb1ca9839929c8408c8469",
        "type" : "IMPALAD",
        "hostRef" : {
          "hostId" : "i-a8a8763f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "bzbg4xqjk4ew421tve3r35nqk"
          } ]
        }
      }, {
        "name" : "impala-STATESTORE-86f1c9e609be31995a1b6cd0d3737674",
        "type" : "STATESTORE",
        "hostRef" : {
          "hostId" : "i-a9a8763e"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "ahd8xgmisf75ago03fhdnl39k"
          } ]
        }
      } ],
      "displayName" : "Impala"
    }, {
      "name" : "sentry",
      "type" : "SENTRY",
      "config" : {
        "roleTypeConfigs" : [ {
          "roleType" : "SENTRY_SERVER",
          "items" : [ {
            "name" : "sentry_server_java_heapsize",
            "value" : "268435456"
          } ]
        } ],
        "items" : [ {
          "name" : "hdfs_service",
          "value" : "hdfs"
        }, {
          "name" : "sentry_server_database_host",
          "value" : "siberiano.sharop.net"
        }, {
          "name" : "sentry_server_database_password",
          "value" : "Code0Passion."
        }, {
          "name" : "sentry_service_admin_group",
          "value" : "hive,impala,hue,solr,ec2-user"
        }, {
          "name" : "zookeeper_service",
          "value" : "zookeeper"
        } ]
      },
      "roles" : [ {
        "name" : "sentry-SENTRY_SERVER-dd37d86e4aeb1ca9839929c8408c8469",
        "type" : "SENTRY_SERVER",
        "hostRef" : {
          "hostId" : "i-a8a8763f"
        },
        "config" : {
          "items" : [ {
            "name" : "role_jceks_password",
            "value" : "awgp5ntkc9ihzc5w0rzi2llw0"
          } ]
        }
      } ],
      "displayName" : "Sentry"
    } ]
  } ],
  "hosts" : [ {
    "hostId" : "i-a8a8763f",
    "ipAddress" : "10.0.2.7",
    "hostname" : "bengala.southcentralus.cloudapp.azure.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  },{
    "hostId" : "i-afa87638",
    "ipAddress" : "10.0.2.6",
    "hostname" : "persa.southcentralus.cloudapp.azure.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-aba8763c",
    "ipAddress" : "10.0.2.5",
    "hostname" : "siames.southcentralus.cloudapp.azure.com",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  }, {
    "hostId" : "i-aaa8763d",
    "ipAddress" : "10.0.2.4",
    "hostname" : "siberiano.southcentralus.cloudapp.azure.com ",
    "rackId" : "/default",
    "config" : {
      "items" : [ ]
    }
  } ],
  "users" : [ {
    "name" : "__cloudera_internal_user__mgmt-ACTIVITYMONITOR-d3325bbe2a38fbadc931a7d1cb69f451",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "c016b917a6d5876553945aa791ad076a74b006d5bec8b7ff30edb1e00792d006",
    "pwSalt" : -8461839646326546770,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-EVENTSERVER-d3325bbe2a38fbadc931a7d1cb69f451",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "364f3f70954d65ec26f29d3bee339f564b1833a12214b73d35b6e44075b0486c",
    "pwSalt" : 1929919177726026619,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-HOSTMONITOR-d3325bbe2a38fbadc931a7d1cb69f451",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "9442fea2e24551dc5a4fe00c1a9415e76dc9a47110a713d11fdcedaaa2df64b0",
    "pwSalt" : 1561548599042066642,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-REPORTSMANAGER-d3325bbe2a38fbadc931a7d1cb69f451",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "b94ef3281fa235bb5b0a89376a2224ce68d503c2a35a0c8ff9999a769393f18a",
    "pwSalt" : 5680803077606666730,
    "pwLogin" : true
  }, {
    "name" : "__cloudera_internal_user__mgmt-SERVICEMONITOR-d3325bbe2a38fbadc931a7d1cb69f451",
    "roles" : [ "ROLE_USER" ],
    "pwHash" : "72b99b2f0a0637885660c09a9a3be6574a8386146e4a7d27e4a907d581ec0e65",
    "pwSalt" : 6011690217296011159,
    "pwLogin" : true
  }, {
    "name" : "admin",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "c498652f0349aacf1b5f201e5ad661516a21b12fc5aa0d304053477743a069d3",
    "pwSalt" : -741866242058012561,
    "pwLogin" : true
  }, {
    "name" : "minotaur",
    "roles" : [ "ROLE_CONFIGURATOR" ],
    "pwHash" : "6e531ca19c45b9ebd90cf128cfa7b95efc1ac718bfb4df220518eeed22853199",
    "pwSalt" : 5759291999671447204,
    "pwLogin" : true
  }, {
    "name" : "sharop",
    "roles" : [ "ROLE_ADMIN" ],
    "pwHash" : "5f3668d6f54c2ec46efacfb6a4e5c3b2abf4d3def703e122c5dcb60dc3799c62",
    "pwSalt" : -1298512692956949371,
    "pwLogin" : true
  } ],
  "versionInfo" : {
    "version" : "5.8.1",
    "buildUser" : "jenkins",
    "buildTimestamp" : "20160722-1141",
    "gitHash" : "a0886a893750079a4dc7f902be22d6f6e63b85a1",
    "snapshot" : false
  },
  "managementService" : {
    "name" : "mgmt",
    "type" : "MGMT",
    "config" : {
      "roleTypeConfigs" : [ {
        "roleType" : "ACTIVITYMONITOR",
        "items" : [ {
          "name" : "firehose_database_host",
          "value" : "siberiano.sharop.net"
        }, {
          "name" : "firehose_database_name",
          "value" : "amon"
        }, {
          "name" : "firehose_database_password",
          "value" : "Code0Passion."
        }, {
          "name" : "firehose_database_user",
          "value" : "amonuser"
        }, {
          "name" : "mgmt_log_dir",
          "value" : "/cluster/logs/cloudera-scm-firehose"
        } ]
      }, {
        "roleType" : "ALERTPUBLISHER",
        "items" : [ {
          "name" : "mgmt_log_dir",
          "value" : "/cluster/logs/cloudera-scm-alertpublisher"
        } ]
      }, {
        "roleType" : "EVENTSERVER",
        "items" : [ {
          "name" : "eventserver_index_dir",
          "value" : "/cluster/lib/cloudera-scm-eventserver"
        }, {
          "name" : "mgmt_log_dir",
          "value" : "/cluster/logs/cloudera-scm-eventserver"
        } ]
      }, {
        "roleType" : "HOSTMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        }, {
          "name" : "firehose_storage_dir",
          "value" : "/cluster/logs/cloudera-host-monitor"
        }, {
          "name" : "mgmt_log_dir",
          "value" : "/cluster/logs/cloudera-scm-firehose"
        } ]
      }, {
        "roleType" : "NAVIGATOR",
        "items" : [ {
          "name" : "mgmt_log_dir",
          "value" : "/cluster/logs/cloudera-scm-navigator"
        } ]
      }, {
        "roleType" : "NAVIGATORMETASERVER",
        "items" : [ {
          "name" : "audit_event_log_dir",
          "value" : "/cluster/logs/cloudera-scm-navigator/audit"
        }, {
          "name" : "mgmt_log_dir",
          "value" : "/cluster/logs/cloudera-scm-navigator"
        } ]
      }, {
        "roleType" : "REPORTSMANAGER",
        "items" : [ {
          "name" : "headlamp_database_host",
          "value" : "siberiano.sharop.net"
        }, {
          "name" : "headlamp_database_name",
          "value" : "rman"
        }, {
          "name" : "headlamp_database_password",
          "value" : "Code0Passion."
        }, {
          "name" : "headlamp_database_user",
          "value" : "rmanuser"
        }, {
          "name" : "headlamp_scratch_dir",
          "value" : "/cluster/lib/cloudera-scm-headlamp"
        }, {
          "name" : "mgmt_log_dir",
          "value" : "/cluster/logs/cloudera-scm-headlamp"
        } ]
      }, {
        "roleType" : "SERVICEMONITOR",
        "items" : [ {
          "name" : "firehose_non_java_memory_bytes",
          "value" : "1610612736"
        }, {
          "name" : "firehose_storage_dir",
          "value" : "/cluster/logs/cloudera-service-monitor"
        }, {
          "name" : "mgmt_log_dir",
          "value" : "/cluster/logs/cloudera-scm-firehose"
        } ]
      } ],
      "items" : [ ]
    },
    "roles" : [ {
      "name" : "mgmt-ACTIVITYMONITOR-d3325bbe2a38fbadc931a7d1cb69f451",
      "type" : "ACTIVITYMONITOR",
      "hostRef" : {
        "hostId" : "i-aaa8763d"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "bmtzeal6jyxerxeec0xrcmlaj"
        } ]
      }
    }, {
      "name" : "mgmt-ALERTPUBLISHER-d3325bbe2a38fbadc931a7d1cb69f451",
      "type" : "ALERTPUBLISHER",
      "hostRef" : {
        "hostId" : "i-aaa8763d"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "9nnzv3ach6mzbg3bvr5x8ueou"
        } ]
      }
    }, {
      "name" : "mgmt-EVENTSERVER-d3325bbe2a38fbadc931a7d1cb69f451",
      "type" : "EVENTSERVER",
      "hostRef" : {
        "hostId" : "i-aaa8763d"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "afqz09k8bbhjycmxauqv30s37"
        } ]
      }
    }, {
      "name" : "mgmt-HOSTMONITOR-d3325bbe2a38fbadc931a7d1cb69f451",
      "type" : "HOSTMONITOR",
      "hostRef" : {
        "hostId" : "i-aaa8763d"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "doefxno44s0i7lb3q2gymgwbb"
        } ]
      }
    }, {
      "name" : "mgmt-REPORTSMANAGER-d3325bbe2a38fbadc931a7d1cb69f451",
      "type" : "REPORTSMANAGER",
      "hostRef" : {
        "hostId" : "i-aaa8763d"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "7t30g0nt21fqxn5et1qhuwfbh"
        } ]
      }
    }, {
      "name" : "mgmt-SERVICEMONITOR-d3325bbe2a38fbadc931a7d1cb69f451",
      "type" : "SERVICEMONITOR",
      "hostRef" : {
        "hostId" : "i-aaa8763d"
      },
      "config" : {
        "items" : [ {
          "name" : "role_jceks_password",
          "value" : "8rzjscv790gdnnitnwc1ie714"
        } ]
      }
    } ],
    "displayName" : "Cloudera Management Service"
  },
  "managerSettings" : {
    "items" : [ {
      "name" : "AD_USE_SIMPLE_AUTH",
      "value" : "false"
    }, {
      "name" : "CLUSTER_STATS_START",
      "value" : "10/26/2012 6:10"
    }, {
      "name" : "KDC_ADMIN_PASSWORD",
      "value" : "BQIAAAA5AAEAClNIQVJPUC5ORVQADGNsb3VkZXJhLXNjbQAAAAFX5B4fAQAXABDzaINFtWTB1Nxm54mkH2eV"
    }, {
      "name" : "KDC_ADMIN_USER",
      "value" : "cloudera-scm@DMOLINARI.NET"
    }, {
      "name" : "KDC_HOST",
      "value" : "siames.southcentralus.cloudapp.azure.com"
    }, {
      "name" : "KRB_ENC_TYPES",
      "value" : "arcfour-hmac"
    }, {
      "name" : "KRB_MANAGE_KRB5_CONF",
      "value" : "true"
    }, {
      "name" : "PUBLIC_CLOUD_STATUS",
      "value" : "ON_PUBLIC_CLOUD"
    }, {
      "name" : "SECURITY_REALM",
      "value" : "DMOLINARI.NET"
    } ]
  }
}

```
