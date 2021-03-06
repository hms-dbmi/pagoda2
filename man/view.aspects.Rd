% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/p1app4p2.R
\name{view.aspects}
\alias{view.aspects}
\title{Internal function to visualize aspects of transcriptional heterogeneity as a heatmap.}
\usage{
view.aspects(
  mat,
  row.clustering = NA,
  cell.clustering = NA,
  zlim = c(-1, 1) * quantile(mat, p = 0.95),
  row.cols = NULL,
  col.cols = NULL,
  cols = colorRampPalette(c("darkgreen", "white", "darkorange"), space = "Lab")(1024),
  show.row.var.colors = TRUE,
  top = Inf,
  ...
)
}
\arguments{
\item{mat}{Numeric matrix}

\item{row.clustering}{Row dendrogram (default=NA)}

\item{cell.clustering}{Column dendrogram (default=NA)}

\item{zlim}{numeric Range of the normalized gene expression levels, inputted as a list: c(lower_bound, upper_bound) (default=c(-1, 1)*quantile(mat, p = 0.95)). Values outside this range will be Winsorized. Useful for increasing the contrast of the heatmap visualizations. Default, set to the 5th and 95th percentiles.}

\item{row.cols}{Matrix of row colors (default=NULL)}

\item{col.cols}{Matrix of column colors (default=NULL). Useful for visualizing cell annotations such as batch labels.}

\item{cols}{Heatmap colors (default=colorRampPalette(c("darkgreen", "white", "darkorange"), space = "Lab")(1024))}

\item{show.row.var.colors}{boolean Whether to show row variance as a color track (default=TRUE)}

\item{top}{integer Restrict output to the top n aspects of heterogeneity (default=Inf)}

\item{...}{additional arguments for heatmap plotting}
}
\value{
A heatmap
}
\description{
Internal function to visualize aspects of transcriptional heterogeneity as a heatmap.
}
\keyword{internal}
