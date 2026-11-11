#REPOSITORIO DE GITHUB

#https://github.com/El-Ateneo/Examen-Practico-PowerShell.git


#Archivo principal: Examen-Practico-PowerShell.ps1


Write-Host "================================"
Write-Host "|| Examen Practico PowerShell ||"
Write-Host "================================"

for ($i = 1; $i -le 3; $i++) {

    $fecha = Get-Date
    Write-Host "Fecha y hora de verificacion: $fecha"

    if (($i % 2) -eq 0) {
        Write-Host "Iteracion $i : El numero de intento es PAR - Revisando estado de red..." -ForegroundColor Cyan
    } else {
        Write-Host "Iteracion $i : El numero de intento es IMPAR - Iniciando verificacion de adaptadores..." -ForegroundColor Yellow
    }

    Get-NetAdapter -Physical
}

Write-Host "================================================"
Write-Host "|| El monitoreo de red ha concluido con exito ||"
Write-Host "================================================"