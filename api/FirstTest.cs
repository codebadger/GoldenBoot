using Moq;
using Xunit;

namespace GoldenBoot
{
    public class FirstTest
    {
        [Fact]
        public void TrueIsTrue()
        {
            Assert.True(true);
        }

        [Fact]
        public void MoqIsWorking()
        {
            var mock = new Mock<ICompetitionRepository>();

            mock.Setup(x => x.Get("copa2016")).Returns(new Competition());

            var result = mock.Object.Get("copa2016");

            mock.Verify(x => x.Get("copa2016"), Times.Once);
        }

    }

}