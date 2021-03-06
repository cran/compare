\name{questionComments}
\alias{questionComments}
\alias{comments}
\alias{transformComment}
\title{ Define a Commenting Scheme }
\description{
  These functions are used to specify how the result of a comparison
  between two objects
  should be converted to a set of comments for feedback.
}
\usage{
questionComments(answerNames, ...)

comments(answerName, ...)

transformComment(pattern, comment) 
}
\arguments{
  \item{answerNames}{ The names of objects that have been compared. }
  \item{answerName}{ The name of one object that has been compared. }
  \item{pattern}{ A regular expression to search for within the
    comparison transformations. }
  \item{comment}{ A comment to record if the regular expression is
    matched. }
  \item{\dots}{ For \code{questionComments}, zero or more comments
    (as generated by the
    the \code{comments()} function); for \code{comments()}, zero or more
    transformation comments (as generated by 
    the \code{transformComment()} function. }
}
\details{
  These functions are used to define a commenting scheme.  The
  function \code{commentQuestions()} can then be used to apply
  the results to a set of comparisons, as generated by
  \code{compareFiles()}.
}
\value{
  An object of class \code{"questionComments"}.
}
\examples{
# Comment a comparison involving several objects
# Start with a comment of 1 and deduct 1 if the comparison failed
questionComments(c("id", "age", "edu", "class"),
                 comments("class",
                          transformComment("coerced",
                                           "'class' is a factor!")))
}
\author{ Paul Murrell }
\seealso{
  \code{\link{commentQuestions}} and 
  \code{\link{compareFiles}}
}
\keyword{utilities}
\keyword{logic}
