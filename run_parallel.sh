
cat > run_parallel.sh << 'EOF'
#!/bin/bash
echo "=== LANCEMENT DES TESTS PARALLÈLES ==="

# Nettoyer les résultats précédents
rm -rf parallel_results/

# Configuration
PROCESSES=4
OUTPUT_DIR="parallel_results"

echo "Processus: $PROCESSES"
echo "Dossier de sortie: $OUTPUT_DIR"

# Exécution parallèle
pabot \
    --processes $PROCESSES \
    --outputdir $OUTPUT_DIR \
    --log parallel_log.html \
    --report parallel_report.html \
    --verbose \
    tests/

# Vérifier le résultat
if [ $? -eq 0 ]; then
    echo "✅ TESTS PARALLÈLES TERMINÉS AVEC SUCCÈS"
else
    echo "❌ CERTAINS TESTS ONT ÉCHOUÉ"
fi

echo "Rapport: $OUTPUT_DIR/parallel_report.html"
EOF

# Donner les permissions
chmod +x run_parallel.sh