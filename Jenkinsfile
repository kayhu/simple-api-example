def label = 'build-test'

podTemplate(cloud: 'kubernetes', label: label, namespace: 'jenkins', showRawYaml: false, instanceCap: 5, serviceAccount: "jenkins",
        containers: [
                containerTemplate(alwaysPullImage: false,
                        args: 'cat',
                        command: '/bin/sh -c',
                        envVars: [],
                        image: 'harbor.devn.chinacsci.com/public/docker:18.05',
                        name: 'docker',
                        livenessProbe: containerLivenessProbe(execArgs: '', failureThreshold: 0,
                                initialDelaySeconds: 0, periodSeconds: 0, successThreshold: 0, timeoutSeconds: 0),
                        ports: [],
                        privileged: false,
                        resourceLimitCpu: '100m',
                        resourceLimitMemory: '',
                        resourceRequestCpu: '',
                        resourceRequestMemory: '',
                        ttyEnabled: true,
                        workingDir: '/home/jenkins/agent'),
                containerTemplate(alwaysPullImage: false,
                        args: 'cat',
                        command: '/bin/sh -c',
                        envVars: [],
                        image: 'harbor.devn.chinacsci.com/public/helm:v2.9.0',
                        name: 'helm',
                        livenessProbe: containerLivenessProbe(execArgs: '', failureThreshold: 0,
                                initialDelaySeconds: 0, periodSeconds: 0, successThreshold: 0, timeoutSeconds: 0),
                        ports: [],
                        privileged: false,
                        resourceLimitCpu: '100m',
                        resourceLimitMemory: '',
                        resourceRequestCpu: '',
                        resourceRequestMemory: '',
                        ttyEnabled: true,
                        workingDir: '/home/jenkins/agent')],
        volumes: [
                hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock'),
                //hostPathVolume(hostPath: '/data/repo', mountPath: '/home/jenkins/.gradle/'),
                //nfsVolume(mountPath: '/home/jenkins/.gradle/', readOnly: false, serverAddress: "${env.NFS_SERVER}", serverPath: '/data/repo/'),
                //nfsVolume(mountPath: '/tmp/gradle/caches/', readOnly: true, serverAddress: "${env.NFS_SERVER}", serverPath: "/data/repo_ro"),
                //nfsVolume(mountPath: '/home/jenkins/.m2/', readOnly: false, serverAddress: "${env.NFS_SERVER}", serverPath: '/data/maven')
        ]
) {
    node(label) {
        stage('测试') {
            container('docker') {
                sh 'docker ps -a'
                sh 'sleep 10m'
            }
        }
    }
}