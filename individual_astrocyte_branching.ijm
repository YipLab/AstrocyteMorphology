//3D Astroycyte branch counting algorithm 
//Kaitlin Szederkenyi 2021
//v0.1


print("test");
run("3D Manager Options", "centroid_(unit) bounding_box use exclude_objects_on_edges_xy distance_between_centers=10 distance_max_contact=1.80 drawing=[Bounding Box] use_0 use_1");
run("3D Manager");
// select the image with the labelled objects
selectWindow("DeconvolutionofAF555clear-7binary-lbl-sizeFilt-3-sizeFilt-sizeFilt.tif");
Ext.Manager3D_AddImage();
Ext.Manager3D_Measure();
makeRectangle(643, 144, 102, 101);
//selectWindow("3D Measure");
//print(getResult("Label")
var a = 0
Ext.Manager3D_Count(a);
//print(a)
for (i = 0 ; i<92; i = i+1){
selectWindow("DeconvolutionofAF555clear-7binary-lbl-sizeFilt-3-sizeFilt-sizeFilt.tif");	
Ext.Manager3D_Count(a);
Ext.Manager3D_Bounding3D(i,bx0,bx10,by0,by10, bz0, bz10);
print(bx0,by0,bx10,by10);
makeRectangle(bx0,by0,bx10-bx0,by10-by0);
run("Duplicate...", "duplicate range="+bz0+"-"+bz10);
//print("range="+bz0+"-"+bz10)
run("Make Binary", "method=Mean background=Default calculate black");
run("Skeletonize (2D/3D)");
run("Analyze Skeleton (2D/3D)", "prune=[shortest branch] show display");
saveAs("Results", "C:/Users/kaitlin/Desktop/Morphology/branch_info1/Branch information"+i+".csv");
run("Close");
saveAs("Results", "C:/Users/kaitlin/Desktop/Morphology/results1/Results"+i+".csv");
run("Close");
selectWindow("DeconvolutionofAF555clear-7binary-lbl-sizeFilt-3-sizeFilt-sizeFilt-1-labeled-skeletons");
close();
selectWindow("DeconvolutionofAF555clear-7binary-lbl-sizeFilt-3-sizeFilt-sizeFilt-1.tif");
close();
selectWindow("DeconvolutionofAF555clear-7binary-lbl-sizeFilt-3-sizeFilt-sizeFilt.tif");	
}