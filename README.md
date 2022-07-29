# Запуск pytorch+cuda в контейнере

1) Для запуска cuda в контейнере на компе должен быть установлен драйвер nvidia 

2) Установить NVIDIA Container Toolkit
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html

3) Если torch не видит карточку нужно добавить `"default-runtime": "nvidia",` в `/etc/docker/daemon.json`

`
{
    "default-runtime": "nvidia",
    "runtimes": {
        "nvidia": {
            "path": "nvidia-container-runtime",
            "runtimeArgs": []
        }
    }
}
`
