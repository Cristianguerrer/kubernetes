# ArgoCD - Kubernetes - GitOps 🚀

[![Documentación Oficial](https://img.shields.io/badge/Documentación-ArgoCD-blue.svg)](https://argo-cd.readthedocs.io/en/stable/)

## Descripción 📖

ArgoCD es una herramienta de Continuous Delivery (CD) perfecta para Kubernetes (k8s), diseñada para implementar aplicaciones de manera automatizada y mantener el estado deseado de las aplicaciones utilizando la metodología GitOps.

## Características Principales 🔍

- **Despliegue Automatizado**: 🚀 Implementación automatizada de aplicaciones en entornos objetivo especificados.
- **Compatibilidad con Múltiples Herramientas de Gestión de Configuración**: 🛠️ Soporte para herramientas como Kustomize, Helm, Jsonnet y YAML.
- **Gestión Multi-clúster**: 🌐 Capacidad para gestionar y desplegar aplicaciones en múltiples clústeres de Kubernetes.
- **Integración con SSO**: 🔐 Integración con OIDC, OAuth2, LDAP, SAML 2.0, GitHub, GitLab, Microsoft, LinkedIn para autenticación.
- **Multi-Tenancy y Políticas RBAC**: 🛡️ Soporte para multi-tenancy y políticas de Control de Acceso Basado en Roles (RBAC) para autorización.
- **Rollback/Roll-forward**: ⏪ Capacidad de revertir o avanzar a cualquier configuración de aplicación comprometida en el repositorio Git.
- **Análisis de Estado de Salud**: 🏥 Análisis del estado de salud de los recursos de la aplicación.
- **Detección de Desviaciones de Configuración**: 🔄 Detección y visualización automática de desviaciones de configuración.
- **Sincronización Automática o Manual**: ⚙️ Sincronización automática o manual de las aplicaciones a su estado deseado.
- **Interfaz Web**: 🌐 Interfaz web que proporciona una vista en tiempo real de la actividad de las aplicaciones.
- **CLI para Automatización**: 🖥️ Interfaz de línea de comandos (CLI) para automatización e integración con CI.
- **Integración con Webhooks**: 🎣 Integración con Azure Repos, GitHub, BitBucket, GitLab para disparar despliegues automáticos.
- **Tokens de Acceso**: 🔑 Uso de tokens de acceso para automatización.
- **Hooks de Despliegue**: 🪝 Soporte para PreSync, Sync y PostSync hooks para despliegues complejos (ej. actualizaciones blue/green y canary).
- **Registro de Auditoría**: 📜 Rastreabilidad de eventos de aplicación y llamadas a la API.
- **Métricas de Prometheus**: 📊 Integración con Prometheus para monitoreo de métricas.
- **Overrides de Parámetros**: 🔧 Posibilidad de sobrescribir parámetros de helm en el repositorio Git.

## Beneficios ✅

- **Reducción de Tiempos**: ⏱️ Facilita y acelera los despliegues, cambios o eliminación de recursos k8s, optimizando el tiempo de los desarrolladores.
- **Monitoreo en Tiempo Real**: 🕒 Permite un monitoreo en tiempo real de los recursos para cualquier persona en la organización.
- **Alcance y Seguridad**: 🔒 El acceso se limita a lo que cada usuario necesita consumir en el clúster, mejorando la seguridad.
- **Comunidad y Documentación**: 📚 ArgoCD cuenta con una amplia documentación y una extensa comunidad de usuarios y desarrolladores.
- **Open Source**: 💻 Es un proyecto de código abierto, fomentando la colaboración y mejora continua.

## Uso y Automatización 🤖

- **CLI y Scripts**: 🛠️ Automatiza tareas mediante la CLI de ArgoCD junto con pipelines, scripts, Python, Makefile, entre otros.
- **Despliegue de Aplicaciones**: 📦 Implementa múltiples aplicaciones en diferentes clústeres o namespaces y para diferentes entornos (dev, qa, prod) usando ApplicationSet.
- **Manifiestos de Kubernetes**: 🗂️ Utiliza manifiestos de Kubernetes, Helm, Kustomize, entre otros, para gestionar las configuraciones.
- **Workflows**: 🔄 Usa ArgoCD Workflows para automatizaciones, similar a Jenkins.
- **Integración con IaC**: 🌐 Instala fácilmente ArgoCD usando Infrastructure as Code (IaC) como Terraform.
- **Despliegue de Imágenes**: 🖼️ Escanea y lanza nuevas releases de imágenes de contenedor en los pods cuando se detecta una nueva versión en el repositorio de imágenes automáticamente.
- **Instalación de Aplicaciones Base**: 📦 Utiliza ArgoCD para instalar aplicaciones base en los clústeres durante su inicio.

---

Para más información, visita la [documentación oficial de ArgoCD](https://argo-cd.readthedocs.io/en/stable/).
