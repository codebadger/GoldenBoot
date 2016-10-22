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
        public void FalseIsTrue()
        {
            Assert.True(false);
        }

    }

}