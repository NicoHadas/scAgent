#      Created 08/24/2025             #
#                                     #
#      Author: Nicholas Hadas         #
#         Anndata Conversion          #

# Install relevant packages
library(Seurat)
library(dplyr)
library(SeuratData)
library(SeuratDisk)
library(anndata)
library(scCustomize)

# Set working directory
setwd('/home/nico/Documents/R/Agentic_AI')
getwd()

# Load Object
obj <- readRDS("Objects/merged_object_SCT_Integrated_WASHU_Combined_Annotated.rds")

# PrepSCTFindMarkers
obj <- PrepSCTFindMarkers(obj)

# Clean up 
obj@meta.data <- select(obj@meta.data, -c("orig.ident", "type", "origin", "origin.type", "source", 
                                          "percent.mt", "percent.rp", "DoubletFinder", "nCount_SCT", 
                                          "nFeature_SCT", "SCT_snn_res.1", "seurat_clusters",
                                          "Cluster.Names"))
colnames(obj@meta.data)[4] <- "Variant"
colnames(obj@meta.data)[5] <- "Condition"
colnames(obj@meta.data)[6] <- "Cell_Type"

# Convert to anndata
as.anndata(x = obj, file_path = "/home/nico/Documents/R/Agentic_AI", file_name = "PCD_obj_anndata.h5ad", main_layer = "data")


