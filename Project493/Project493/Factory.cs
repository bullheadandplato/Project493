using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project493
{
    public class Factory
    {
        static SharedData data;
        public SharedData dataProp { get { return data; } set { data = this.dataProp; } }

    }
}