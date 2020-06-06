source /cvmfs/fermilab.opensciencegrid.org/products/genie/bootstrap_genie_ups.sh
setup gsimple v3_00_06 -q e17:prof
setup jobsub_client
export JOBSUB_GROUP=dune

jobsub_submit -g --group ${JOBSUB_GROUP} --disk=35GB --expected-lifetime=long --memory=2000MB -N 248 file://${GSIMPLE_DIR}/scripts/process_request.sh -v -r rock.request -R /pnfs/dune/persistent/users/mtanaz/gsimple_test --dk2nu -G /pnfs/dune/persistent/users/mtanaz/gsimple_test/GNuMIFlux_DUNE_ND.xml -x 1
