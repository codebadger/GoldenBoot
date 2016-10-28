using Microsoft.AspNetCore.Mvc;
using Moq;
using Xunit;

namespace GoldenBoot
{
    public class CompetitionControllerTests
    {

        [Fact]
        public void GetCompetition_CompetitionNotFound_Returns404()
        {
            // Arrange
            //

            var repositoryMock = new Mock<ICompetitionRepository>();
            repositoryMock.Setup(x => x.Get(It.IsAny<string>())).Returns((Competition)null);

            var controller = new CompetitionController(repositoryMock.Object);

            // Act
            //
            
            var result = controller.GetCompetition("copa2016");

            // Assert
            //

            Assert.IsType<NotFoundObjectResult>(result);
            repositoryMock.VerifyAll();
        }

        [Fact]
        public void GetCompetition_CompetitionFound_ReturnsJson()
        {
            // Arrange
            //

            var competition = new Competition() { Name = "MLS 2016/2017" };

            var repositoryMock = new Mock<ICompetitionRepository>();
            repositoryMock.Setup(x => x.Get(It.IsAny<string>())).Returns(competition);

            var controller = new CompetitionController(repositoryMock.Object);

            // Act
            //
            
            var result = controller.GetCompetition("copa2016") as JsonResult;
            var resultValue = result.Value as Competition;

            // Assert
            //

            Assert.IsType<JsonResult>(result);
            Assert.NotNull(result);
            Assert.Equal(competition.Name, resultValue.Name);
            
            repositoryMock.VerifyAll();
        }

    }

}